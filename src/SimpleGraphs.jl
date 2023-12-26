module SimpleGraphs

export adj

abstract type AbstractSimpleGraph end

adj(g::AbstractSimpleGraph) = g.fadjlist
adj(g::AbstractSimpleGraph, v) = g.fadjlist[v]

include("simplegraph.jl")
include("simpledigraph.jl")

end
