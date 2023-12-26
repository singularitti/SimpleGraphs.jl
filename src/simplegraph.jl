export SimpleGraph, nv, add_vertex!

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
