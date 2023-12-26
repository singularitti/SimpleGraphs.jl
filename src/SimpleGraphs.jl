module SimpleGraphs

export adj

abstract type AbstractSimpleGraph{T<:Integer} end

adj(g::AbstractSimpleGraph) = g.fadjlist
adj(g::AbstractSimpleGraph{T}, v::T) where {T<:Integer} = g.fadjlist[v]

include("simplegraph.jl")
include("simpledigraph.jl")

end
