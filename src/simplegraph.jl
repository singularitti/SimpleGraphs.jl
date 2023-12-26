export nv, add_vertex!

mutable struct SimpleGraph{T<:Integer} <: AbstractSimpleGraph{T}
    ne::Int
    fadjlist::Vector{Vector{T}}
end
SimpleGraph() = SimpleGraph(0, [])

nv(g::SimpleGraph) = length(g.fadjlist)

function add_vertex!(g::SimpleGraph{T}) where {T}
    push!(g.fadjlist, Vector{T}())
    return g
end
