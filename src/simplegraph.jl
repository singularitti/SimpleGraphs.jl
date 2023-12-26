export SimpleGraph, nv, add_vertex!, add_edge!

mutable struct SimpleGraph <: AbstractSimpleGraph
    ne::Int64
    fadjlist::Vector{Vector{Int64}}
end
function SimpleGraph(n::Integer=0)
    fadjlist = collect(ntuple(Vector{Int64}(), n))  # Much faster than https://github.com/JuliaGraphs/Graphs.jl/blob/v1.9.0/src/SimpleGraphs/simplegraph.jl#L38
    return SimpleGraph(n, fadjlist)
end

nv(g::SimpleGraph) = length(g.fadjlist)

function add_vertex!(g::SimpleGraph)
    push!(g.fadjlist, Vector{Int64}())
    return g
end

# See https://github.com/JuliaGraphs/Graphs.jl/blob/v1.9.0/src/SimpleGraphs/simplegraph.jl#L476-L492
function add_edge!(g::SimpleGraph, e::SimpleEdge)
    s, d = src(e), dst(e)
    verts = vertices(g)
    s in verts || throw(BoundsError(verts, s))
    d in verts || throw(BoundsError(verts, d))
    if d in g.fadjlist[s] || s in g.fadjlist[d]
        @info "edge $e already exists!"
        return g
    end
    g.ne += 1
    push!(g.fadjlist[s], d)
    if s != d  # If not a self-loop
        push!(g.fadjlist[d], s)
    end
    return g
end
add_edge!(g::SimpleGraph, s::Integer, d::Integer) = add_edge!(g, SimpleEdge(s, d))
