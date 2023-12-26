export nv, add_vertex!

mutable struct SimpleGraph <: AbstractSimpleGraph
    ne::Int64
    fadjlist::Vector{Vector{Int64}}
end
SimpleGraph() = SimpleGraph(0, [])

nv(g::SimpleGraph) = length(g.fadjlist)

function add_vertex!(g::SimpleGraph)
    push!(g.fadjlist, Vector{Int64}())
    return g
end
