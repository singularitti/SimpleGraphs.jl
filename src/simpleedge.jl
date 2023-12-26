export src, dst

abstract type AbstractSimpleEdge end

struct SimpleEdge <: AbstractSimpleEdge
    src::Int64
    dst::Int64
end

src(e::AbstractSimpleEdge) = e.src
dst(e::AbstractSimpleEdge) = e.dst
