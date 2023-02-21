# Deprecated in 0.10.*
@deprecate automorphisms(x::Graph) automorphism_group_generators(x)

# Deprecated after 0.11.3
@deprecate is_finite_order(x::GAPGroupElem) is_finiteorder(x)
@deprecate elements(C::GroupConjClass) collect(C)
@deprecate conjugate_subgroup(G::GAPGroup, x::GAPGroupElem) conjugate_group(G, x)
@deprecate gap_perm(L::AbstractVector{<:IntegerUnion}) perm(L::AbstractVector{<:IntegerUnion})
@deprecate elements(C::GroupCoset) collect(C)
@deprecate elements(C::GroupDoubleCoset) collect(C)
@deprecate map_from_character_to_principal_divisors(v::AbstractNormalToricVariety) map_from_character_lattice_to_torusinvariant_weil_divisor_group(v)
@deprecate map_from_weil_divisors_to_class_group(v::AbstractNormalToricVariety) map_from_torusinvariant_weil_divisor_group_to_class_group(v)
@deprecate map_from_cartier_divisor_group_to_torusinvariant_divisor_group(v::AbstractNormalToricVariety) map_from_torusinvariant_cartier_divisor_group_to_torusinvariant_weil_divisor_group(v)
@deprecate map_from_cartier_divisor_group_to_picard_group(v::AbstractNormalToricVariety) map_from_torusinvariant_cartier_divisor_group_to_picard_group(v)
@deprecate cartier_divisor_group(v::AbstractNormalToricVariety) torusinvariant_cartier_divisor_group(v)
@deprecate torusinvariant_divisor_group(v::AbstractNormalToricVariety) torusinvariant_weil_divisor_group(v)
@deprecate StructureSheaf(v::AbstractNormalToricVariety) structure_sheaf
@deprecate morphism_on_cartier_divisor_group(tm::ToricMorphism) morphism_on_torusinvariant_cartier_divisor_group(tm)
@deprecate bounded(Obj::Polyhedron) is_bounded(Obj)
@deprecate vf_group(P::Polyhedron) automorphism_group(P; action = :on_facets)
@deprecate birkhoff(n::Integer; even::Bool = false) birkhoff_polytope(n; even=even)
@deprecate cross(args...) cross_polytope(args...)
@deprecate gelfand_tsetlin(lambda::AbstractVector) gelfand_tsetlin_polytope(lambda)


# Deprecate after 0.11.4
function AffineNormalToricVariety(C::Cone; set_attributes::Bool = true)
    Base.depwarn("'AffineNormalToricVariety(C::Cone; set_attributes::Bool = true)' is deprecated, use "*
    "'affine_normal_toric_variety(C::Cone; set_attributes::Bool = true)' instead.", :AffineNormalToricVariety)
    affine_normal_toric_variety(C; set_attributes = set_attributes)
end

function AffineNormalToricVariety(v::NormalToricVariety; set_attributes::Bool = true)
    Base.depwarn("'AffineNormalToricVariety(v::NormalToricVariety; set_attributes::Bool = true)' is deprecated, use "*
    "'affine_normal_toric_variety(v::NormalToricVariety; set_attributes::Bool = true)' instead.", :AffineNormalToricVariety)
    affine_normal_toric_variety(v; set_attributes = set_attributes)
end

function NormalToricVariety(C::Cone; set_attributes::Bool = true)
    Base.depwarn("'NormalToricVariety(C::Cone; set_attributes::Bool = true)' is deprecated, use "*
    "'normal_toric_variety(C::Cone; set_attributes::Bool = true)' instead.", :NormalToricVariety)
    normal_toric_variety(C; set_attributes = set_attributes)
end

function NormalToricVariety(rays::Vector{Vector{Int64}}, max_cones::Vector{Vector{Int64}}; non_redundant::Bool = false, set_attributes::Bool = true)
    Base.depwarn("'NormalToricVariety(rays::Vector{Vector{Int64}}, max_cones::Vector{Vector{Int64}}; "*
    "non_redundant::Bool = false, set_attributes::Bool = true)' is deprecated, use "*
    "'normal_toric_variety(rays::Vector{Vector{Int64}}, max_cones::Vector{Vector{Int64}}; "*
    "non_redundant::Bool = false, set_attributes::Bool = true)' instead.", :NormalToricVariety)
    normal_toric_variety(rays, max_cones; non_redundant = non_redundant, set_attributes = set_attributes)
end

function NormalToricVariety(PF::PolyhedralFan; set_attributes::Bool = true)
    Base.depwarn("'NormalToricVariety(PF::PolyhedralFan; set_attributes::Bool = true)' is deprecated, use"*
    "'normal_toric_variety(PF::PolyhedralFan; set_attributes::Bool = true)' instead.", :NormalToricVariety)
    normal_toric_variety(PF; set_attributes = set_attributes)
end

function NormalToricVariety(P::Polyhedron; set_attributes::Bool = true)
    Base.depwarn("'NormalToricVariety(P::Polyhedron; set_attributes::Bool = true)' is deprecated, use"*
    "'normal_toric_variety(P::Polyhedron; set_attributes::Bool = true)' instead.", :NormalToricVariety)
    normal_toric_variety(P; set_attributes = set_attributes)
end
