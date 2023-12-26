module SimpleGraphs

export adj

abstract type AbstractSimpleGraph end

adj(g::AbstractSimpleGraph) = g.fadjlist
adj(g::AbstractSimpleGraph, v) = g.fadjlist[v]

include("simpleedge.jl")
include("simplegraph.jl")
include("simpledigraph.jl")

end
