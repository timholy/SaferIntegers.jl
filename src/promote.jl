import Base: promote_rule

promote_rule(::Type{S}, ::Type{T}) where S<:SafeSigned where T<:SafeSigned =
    safeint(promote_type(integer(S), integer(T)))
promote_rule(::Type{S}, ::Type{T}) where S<:SafeUnsigned where T<:SafeUnsigned =
    safeint(promote_type(integer(S), integer(T)))
promote_rule(::Type{S}, ::Type{T}) where S<:SafeSigned where T<:SafeUnsigned =
    safeint(promote_type(integer(S), integer(T)))

promote_rule(::Type{S}, ::Type{T}) where S<:SafeSigned where T<:Signed =
    safeint(promote_type(integer(S), integer(T)))
promote_rule(::Type{S}, ::Type{T}) where S<:SafeUnsigned where T<:Unsigned =
    safeint(promote_type(integer(S), integer(T)))
promote_rule(::Type{S}, ::Type{T}) where S<:SafeSigned where T<:Unsigned =
    safeint(promote_type(integer(S), integer(T)))
promote_rule(::Type{S}, ::Type{T}) where S<:SafeUnsigned where T<:Signed =
    safeint(promote_type(integer(S), integer(T)))
