mutable struct SimpleDiGraph <: AbstractSimpleGraph
    ne::Int
    fadjlist::Vector{Vector{Int64}} # [src]: (dst, dst, dst)
    badjlist::Vector{Vector{Int64}} # [dst]: (src, src, src)
end
