module SimpleGraphs

abstract type AbstractSimpleGraph{T<:Integer} end

include("simplegraph.jl")
include("simpledigraph.jl")

end
