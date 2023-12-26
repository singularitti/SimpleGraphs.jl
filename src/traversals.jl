export Recursive, Iterative, Preorder, Postorder, BreadthFirst, DepthFirst, traverse_graph!

abstract type Style end
struct Recursive <: Style end
struct Iterative <: Style end

abstract type Order end
struct Preorder <: Order end
struct Postorder <: Order end

abstract type TraversalAlgorithm end

struct BreadthFirst <: TraversalAlgorithm end
struct DepthFirst{S<:Style,O<:Order} <: TraversalAlgorithm end
DepthFirst(::S, ::O) where {S<:Style,O<:Order} = DepthFirst{S,O}()

function traverse_graph! end
