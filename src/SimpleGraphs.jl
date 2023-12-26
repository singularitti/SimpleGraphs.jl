module SimpleGraphs

export adj, vertices

abstract type AbstractSimpleGraph end

adj(g::AbstractSimpleGraph) = g.fadjlist
adj(g::AbstractSimpleGraph, v) = g.fadjlist[v]

vertices(g::AbstractSimpleGraph) = Base.OneTo(nv(g))

include("simpleedge.jl")
include("simplegraph.jl")
include("simpledigraph.jl")

end
