mutable struct SimpleGraph{T<:Integer} <: AbstractSimpleGraph{T}
    ne::Int
    fadjlist::Vector{Vector{T}}
end
