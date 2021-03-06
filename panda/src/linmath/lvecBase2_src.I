// Filename: lvecBase2_src.I
// Created by:  drose (08Mar00)
//
////////////////////////////////////////////////////////////////////
//
// PANDA 3D SOFTWARE
// Copyright (c) Carnegie Mellon University.  All rights reserved.
//
// All use of this software is subject to the terms of the revised BSD
// license.  You should have received a copy of this license along
// with this source code in a file named "LICENSE."
//
////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::Default Constructor
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATNAME(LVecBase2)::
FLOATNAME(LVecBase2)() {
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::Copy Constructor
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATNAME(LVecBase2)::
FLOATNAME(LVecBase2)(const FLOATNAME(LVecBase2) &copy) : _v(copy._v) {
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::Copy Assignment Operator
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATNAME(LVecBase2) &FLOATNAME(LVecBase2)::
operator = (const FLOATNAME(LVecBase2) &copy) {
  TAU_PROFILE("void LVecBase2::operator = (LVecBase2 &)", " ", TAU_USER);
  _v = copy._v;
  return *this;
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::Fill Assignment Operator
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATNAME(LVecBase2) &FLOATNAME(LVecBase2)::
operator = (FLOATTYPE fill_value) {
  fill(fill_value);
  return *this;
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::Constructor
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATNAME(LVecBase2)::
FLOATNAME(LVecBase2)(FLOATTYPE fill_value) {
  fill(fill_value);
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::Constructor
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATNAME(LVecBase2)::
FLOATNAME(LVecBase2)(FLOATTYPE x, FLOATTYPE y) {
  TAU_PROFILE("LVecBase2::LVecBase2(FLOATTYPE, ...)", " ", TAU_USER);
  _v(0) = x;
  _v(1) = y;
//  set(x, y);
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::zero Named Constructor
//       Access: Published
//  Description: Returns a zero-length vector.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH const FLOATNAME(LVecBase2) &FLOATNAME(LVecBase2)::
zero() {
  return _zero;
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::unit_x Named Constructor
//       Access: Published
//  Description: Returns a unit X vector.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH const FLOATNAME(LVecBase2) &FLOATNAME(LVecBase2)::
unit_x() {
  return _unit_x;
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::unit_y Named Constructor
//       Access: Published
//  Description: Returns a unit Y vector.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH const FLOATNAME(LVecBase2) &FLOATNAME(LVecBase2)::
unit_y() {
  return _unit_y;
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::Destructor
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATNAME(LVecBase2)::
~FLOATNAME(LVecBase2)() {
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::Indexing Operator
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATTYPE FLOATNAME(LVecBase2)::
operator [](int i) const {
  nassertr(i >= 0 && i < 2, 0);
  return _v(i);
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::Indexing Operator
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATTYPE &FLOATNAME(LVecBase2)::
operator [](int i) {
  nassertr(i >= 0 && i < 2, _v(0));
  return _v(i);
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::size
//       Access: Published, Static
//  Description: Returns 2: the number of components of a LVecBase2.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH int FLOATNAME(LVecBase2)::
size() {
  return 2;
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::is_nan
//       Access: Published
//  Description: Returns true if any component of the vector is
//               not-a-number, false otherwise.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH bool FLOATNAME(LVecBase2)::
is_nan() const {
#ifdef FLOATTYPE_IS_INT
  return false;
#else
  TAU_PROFILE("bool LVecBase2::is_nan()", " ", TAU_USER);
  return cnan(_v(0)) || cnan(_v(1));
#endif
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::get_cell
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATTYPE FLOATNAME(LVecBase2)::
get_cell(int i) const {
  nassertr(i >= 0 && i < 2, 0);
  return _v(i);
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::get_x
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATTYPE FLOATNAME(LVecBase2)::
get_x() const {
  return _v(0);
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::get_y
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATTYPE FLOATNAME(LVecBase2)::
get_y() const {
  return _v(1);
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::set_cell
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH void FLOATNAME(LVecBase2)::
set_cell(int i, FLOATTYPE value) {
  nassertv(i >= 0 && i < 2);
  _v(i) = value;
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::set_x
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH void FLOATNAME(LVecBase2)::
set_x(FLOATTYPE value) {
  _v(0) = value;
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::set_y
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH void FLOATNAME(LVecBase2)::
set_y(FLOATTYPE value) {
  _v(1) = value;
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::add_to_cell
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH void FLOATNAME(LVecBase2)::
add_to_cell(int i, FLOATTYPE value) {
  nassertv(i >= 0 && i < 2);
  _v(i) += value;
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::add_x
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH void FLOATNAME(LVecBase2)::
add_x(FLOATTYPE value) {
  _v(0) += value;
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::add_y
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH void FLOATNAME(LVecBase2)::
add_y(FLOATTYPE value) {
  _v(1) += value;
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::get_data
//       Access: Published
//  Description: Returns the address of the first of the two data
//               elements in the vector.  The next element
//               occupies the next position consecutively in memory.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH const FLOATTYPE *FLOATNAME(LVecBase2)::
get_data() const {
  return &_v(0);
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::get_num_components
//       Access: Published
//  Description: Returns the number of elements in the vector, two.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH int FLOATNAME(LVecBase2)::
get_num_components() const {
  return 2;
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::begin
//       Access: Published
//  Description: Returns an iterator that may be used to traverse the
//               elements of the matrix, STL-style.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATNAME(LVecBase2)::iterator FLOATNAME(LVecBase2)::
begin() {
  return &_v(0);
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::end
//       Access: Published
//  Description: Returns an iterator that may be used to traverse the
//               elements of the matrix, STL-style.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATNAME(LVecBase2)::iterator FLOATNAME(LVecBase2)::
end() {
  return begin() + num_components;
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::begin
//       Access: Published
//  Description: Returns an iterator that may be used to traverse the
//               elements of the matrix, STL-style.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATNAME(LVecBase2)::const_iterator FLOATNAME(LVecBase2)::
begin() const {
  return &_v(0);
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::end
//       Access: Published
//  Description: Returns an iterator that may be used to traverse the
//               elements of the matrix, STL-style.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATNAME(LVecBase2)::const_iterator FLOATNAME(LVecBase2)::
end() const {
  return begin() + num_components;
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::fill
//       Access: Published
//  Description: Sets each element of the vector to the indicated
//               fill_value.  This is particularly useful for
//               initializing to zero.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH void FLOATNAME(LVecBase2)::
fill(FLOATTYPE fill_value) {
  TAU_PROFILE("void LVecBase2::fill()", " ", TAU_USER);
  _v(0) = fill_value;
  _v(1) = fill_value;
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::set
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH void FLOATNAME(LVecBase2)::
set(FLOATTYPE x, FLOATTYPE y) {
  TAU_PROFILE("void LVecBase2::set()", " ", TAU_USER);
  _v(0) = x;
  _v(1) = y;
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::dot
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATTYPE FLOATNAME(LVecBase2)::
dot(const FLOATNAME(LVecBase2) &other) const {
  TAU_PROFILE("FLOATTYPE LVecBase2::dot()", " ", TAU_USER);
#ifdef HAVE_EIGEN
  return _v.dot(other._v);
#else
  return _v(0) * other._v(0) + _v(1) * other._v(1);
#endif  // HAVE_EIGEN
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::length_squared
//       Access: Published
//  Description: Returns the square of the vector's length, cheap and
//               easy.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATTYPE FLOATNAME(LVecBase2)::
length_squared() const {
  TAU_PROFILE("FLOATTYPE LVecBase2::length_squared()", " ", TAU_USER);
#ifdef HAVE_EIGEN
  return _v.squaredNorm();
#else
  return (*this).dot(*this);
#endif  // HAVE_EIGEN
}

#ifndef FLOATTYPE_IS_INT
////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::length
//       Access: Published
//  Description: Returns the length of the vector, by the Pythagorean
//               theorem.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATTYPE FLOATNAME(LVecBase2)::
length() const {
  TAU_PROFILE("FLOATTYPE LVecBase2::length()", " ", TAU_USER);
#ifdef HAVE_EIGEN
  return _v.norm();
#else
  return csqrt((*this).dot(*this));
#endif  // HAVE_EIGEN
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::normalize
//       Access: Published
//  Description: Normalizes the vector in place.  Returns true if the
//               vector was normalized, false if it was a zero-length
//               vector.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH bool FLOATNAME(LVecBase2)::
normalize() {
  FLOATTYPE l2 = length_squared();
  if (l2 == (FLOATTYPE)0.0f) {
    set(0.0f, 0.0f);
    return false;

  } else if (!IS_THRESHOLD_EQUAL(l2, 1.0f, NEARLY_ZERO(FLOATTYPE) * NEARLY_ZERO(FLOATTYPE))) {
    (*this) /= csqrt(l2);
  }

  return true;
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::project
//       Access: Published
//  Description: Returns a new vector representing the projection of
//               this vector onto another one.  The resulting vector
//               will be a scalar multiple of onto.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATNAME(LVecBase2) FLOATNAME(LVecBase2)::
project(const FLOATNAME(LVecBase2) &onto) const {
  return onto * (dot(onto) / onto.length_squared());
}
#endif  // FLOATTYPE_IS_INT

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::operator <
//       Access: Published
//  Description: This performs a lexicographical comparison.  It's of
//               questionable mathematical meaning, but sometimes has
//               a practical purpose for sorting unique vectors,
//               especially in an STL container.  Also see
//               compare_to().
////////////////////////////////////////////////////////////////////
INLINE_LINMATH bool FLOATNAME(LVecBase2)::
operator < (const FLOATNAME(LVecBase2) &other) const {
  TAU_PROFILE("bool LVecBase2::operator <(const LVecBase2 &)", " ", TAU_USER);
  return (compare_to(other) < 0);
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::operator ==
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH bool FLOATNAME(LVecBase2)::
operator == (const FLOATNAME(LVecBase2) &other) const {
  TAU_PROFILE("bool LVecBase2::operator ==(const LVecBase2 &)", " ", TAU_USER);
#ifdef HAVE_EIGEN
  return _v == other._v;
#else
  return (_v(0) == other._v(0) &&
          _v(1) == other._v(1));
#endif  // HAVE_EIGEN
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::operator !=
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH bool FLOATNAME(LVecBase2)::
operator != (const FLOATNAME(LVecBase2) &other) const {
  return !operator == (other);
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::compare_to
//       Access: Published
//  Description: This flavor of compare_to uses a default threshold
//               value based on the numeric type.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH int FLOATNAME(LVecBase2)::
compare_to(const FLOATNAME(LVecBase2) &other) const {
  TAU_PROFILE("int LVecBase2::compare_to(const LVecBase2 &)", " ", TAU_USER);
#ifdef FLOATTYPE_IS_INT
  if (_v(0) != other._v(0)) {
    return (_v(0) < other._v(0)) ? -1 : 1;
  }
  if (_v(1) != other._v(1)) {
    return (_v(1) < other._v(1)) ? -1 : 1;
  }
  return 0;
#else
  return compare_to(other, NEARLY_ZERO(FLOATTYPE));
#endif
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::get_hash
//       Access: Published
//  Description: Returns a suitable hash for phash_map.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH size_t FLOATNAME(LVecBase2)::
get_hash() const {
  TAU_PROFILE("size_t LVecBase2::get_hash()", " ", TAU_USER);
  return add_hash(0);
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::add_hash
//       Access: Published
//  Description: Adds the vector into the running hash.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH size_t FLOATNAME(LVecBase2)::
add_hash(size_t hash) const {
  TAU_PROFILE("size_t LVecBase2::add_hash(size_t)", " ", TAU_USER);
#ifdef FLOATTYPE_IS_INT
  int_hash ihasher;
  hash = ihasher.add_hash(hash, _v(0));
  hash = ihasher.add_hash(hash, _v(1));
  return hash;
#else
  return add_hash(hash, NEARLY_ZERO(FLOATTYPE));
#endif
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::generate_hash
//       Access: Published
//  Description: Adds the vector to the indicated hash generator.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH void FLOATNAME(LVecBase2)::
generate_hash(ChecksumHashGenerator &hashgen) const {
#ifdef FLOATTYPE_IS_INT
  hashgen.add_int(_v(0));
  hashgen.add_int(_v(1));
#else
  generate_hash(hashgen, NEARLY_ZERO(FLOATTYPE));
#endif
}

#ifndef FLOATTYPE_IS_INT
////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::compare_to
//       Access: Published
//  Description: Sorts vectors lexicographically, componentwise.
//               Returns a number less than 0 if this vector sorts
//               before the other one, greater than zero if it sorts
//               after, 0 if they are equivalent (within the indicated
//               tolerance).
////////////////////////////////////////////////////////////////////
INLINE_LINMATH int FLOATNAME(LVecBase2)::
compare_to(const FLOATNAME(LVecBase2) &other, FLOATTYPE threshold) const {
  TAU_PROFILE("int LVecBase2::compare_to(const LVecBase2 &, FLOATTYPE)", " ", TAU_USER);
  if (!IS_THRESHOLD_COMPEQ(_v(0), other._v(0), threshold)) {
    return (_v(0) < other._v(0)) ? -1 : 1;
  }
  if (!IS_THRESHOLD_COMPEQ(_v(1), other._v(1), threshold)) {
    return (_v(1) < other._v(1)) ? -1 : 1;
  }
  return 0;
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::get_hash
//       Access: Published
//  Description: Returns a suitable hash for phash_map.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH size_t FLOATNAME(LVecBase2)::
get_hash(FLOATTYPE threshold) const {
  TAU_PROFILE("size_t LVecBase2::get_hash(FLOATTYPE)", " ", TAU_USER);
  return add_hash(0, threshold);
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::add_hash
//       Access: Published
//  Description: Adds the vector into the running hash.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH size_t FLOATNAME(LVecBase2)::
add_hash(size_t hash, FLOATTYPE threshold) const {
  TAU_PROFILE("LVecBase2::add_hash(size_t, FLOATTYPE)", " ", TAU_USER);
  float_hash fhasher(threshold);
  hash = fhasher.add_hash(hash, _v(0));
  hash = fhasher.add_hash(hash, _v(1));
  return hash;
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::generate_hash
//       Access: Published
//  Description: Adds the vector to the indicated hash generator.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH void FLOATNAME(LVecBase2)::
generate_hash(ChecksumHashGenerator &hashgen, FLOATTYPE threshold) const {
  hashgen.add_fp(_v(0), threshold);
  hashgen.add_fp(_v(1), threshold);
}
#endif  // FLOATTYPE_IS_INT

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::unary -
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATNAME(LVecBase2) FLOATNAME(LVecBase2)::
operator - () const {
#ifdef HAVE_EIGEN
  return FLOATNAME(LVecBase2)(-_v);
#else
  return FLOATNAME(LVecBase2)(-_v(0), -_v(1));
#endif  // HAVE_EIGEN
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::vector + vector
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATNAME(LVecBase2) FLOATNAME(LVecBase2)::
operator + (const FLOATNAME(LVecBase2) &other) const {
#ifdef HAVE_EIGEN
  return FLOATNAME(LVecBase2)(_v + other._v);
#else
  return FLOATNAME(LVecBase2)(_v(0) + other._v(0),
                              _v(1) + other._v(1));
#endif  // HAVE_EIGEN
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::vector - vector
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATNAME(LVecBase2) FLOATNAME(LVecBase2)::
operator - (const FLOATNAME(LVecBase2) &other) const {
#ifdef HAVE_EIGEN
  return FLOATNAME(LVecBase2)(_v - other._v);
#else
  return FLOATNAME(LVecBase2)(_v(0) - other._v(0),
                              _v(1) - other._v(1));
#endif  // HAVE_EIGEN
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::vector * scalar
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATNAME(LVecBase2) FLOATNAME(LVecBase2)::
operator * (FLOATTYPE scalar) const {
#ifdef HAVE_EIGEN
  return FLOATNAME(LVecBase2)(_v * scalar);
#else
  return FLOATNAME(LVecBase2)(_v(0) * scalar,
                              _v(1) * scalar);
#endif  // HAVE_EIGEN
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::vector / scalar
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATNAME(LVecBase2) FLOATNAME(LVecBase2)::
operator / (FLOATTYPE scalar) const {
#ifdef FLOATTYPE_IS_INT
  return FLOATNAME(LVecBase2)(_v(0) / scalar,
                              _v(1) / scalar);
#else
  FLOATTYPE recip_scalar = 1.0f/scalar;
  return operator * (recip_scalar);
#endif
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::operator +=
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH void FLOATNAME(LVecBase2)::
operator += (const FLOATNAME(LVecBase2) &other) {
#ifdef HAVE_EIGEN
  _v += other._v;
#else
  _v(0) += other._v(0);
  _v(1) += other._v(1);
#endif  // HAVE_EIGEN
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::operator -=
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH void FLOATNAME(LVecBase2)::
operator -= (const FLOATNAME(LVecBase2) &other) {
#ifdef HAVE_EIGEN
  _v -= other._v;
#else
  _v(0) -= other._v(0);
  _v(1) -= other._v(1);
#endif  // HAVE_EIGEN
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::operator *=
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH void FLOATNAME(LVecBase2)::
operator *= (FLOATTYPE scalar) {
#ifdef HAVE_EIGEN
  _v *= scalar;
#else
  _v(0) *= scalar;
  _v(1) *= scalar;
#endif  // HAVE_EIGEN
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::operator /=
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH void FLOATNAME(LVecBase2)::
operator /= (FLOATTYPE scalar) {
#ifdef FLOATTYPE_IS_INT
  _v(0) /= scalar;
  _v(1) /= scalar;
#else
  FLOATTYPE recip_scalar = 1.0f/scalar;
  operator *= (recip_scalar);
#endif
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::componentwise_mult
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH void FLOATNAME(LVecBase2)::
componentwise_mult(const FLOATNAME(LVecBase2) &other) {
#ifdef HAVE_EIGEN
  _v = _v.cwiseProduct(other._v);
#else
  _v(0) *= other._v(0);
  _v(1) *= other._v(1);
#endif  // HAVE_EIGEN
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::fmax
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATNAME(LVecBase2) FLOATNAME(LVecBase2)::
fmax(const FLOATNAME(LVecBase2) &other) const {
  TAU_PROFILE("LVecBase2::fmax()", " ", TAU_USER);
#ifdef HAVE_EIGEN
  return FLOATNAME(LVecBase2)(_v.cwiseMax(other._v));
#else
  return FLOATNAME(LVecBase2)(_v(0) > other._v(0) ? _v(0) : other._v(0),
                              _v(1) > other._v(1) ? _v(1) : other._v(1));
#endif
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::fmin
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH FLOATNAME(LVecBase2) FLOATNAME(LVecBase2)::
fmin(const FLOATNAME(LVecBase2) &other) const {
  TAU_PROFILE("LVecBase2::fmin()", " ", TAU_USER);
#ifdef HAVE_EIGEN
  return FLOATNAME(LVecBase2)(_v.cwiseMin(other._v));
#else
  return FLOATNAME(LVecBase2)(_v(0) < other._v(0) ? _v(0) : other._v(0),
                              _v(1) < other._v(1) ? _v(1) : other._v(1));
#endif
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::almost_equal
//       Access: Published
//  Description: Returns true if two vectors are memberwise equal
//               within a specified tolerance.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH bool FLOATNAME(LVecBase2)::
almost_equal(const FLOATNAME(LVecBase2) &other, FLOATTYPE threshold) const {
  TAU_PROFILE("bool LVecBase2::almost_equal(LVecBase2 &, FLOATTYPE)", " ", TAU_USER);
  return (IS_THRESHOLD_EQUAL(_v(0), other._v(0), threshold) &&
          IS_THRESHOLD_EQUAL(_v(1), other._v(1), threshold));
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::almost_equal
//       Access: Published
//  Description: Returns true if two vectors are memberwise equal
//               within a default tolerance based on the numeric type.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH bool FLOATNAME(LVecBase2)::
almost_equal(const FLOATNAME(LVecBase2) &other) const {
  TAU_PROFILE("bool LVecBase2::almost_equal(LVecBase2 &)", " ", TAU_USER);
  return almost_equal(other, NEARLY_ZERO(FLOATTYPE));
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::output
//       Access: Published
//  Description:
////////////////////////////////////////////////////////////////////
INLINE_LINMATH void FLOATNAME(LVecBase2)::
output(ostream &out) const {
  out << MAYBE_ZERO(_v(0)) << " "
      << MAYBE_ZERO(_v(1));
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::write_datagram_fixed
//       Access: Published
//  Description: Writes the vector to the Datagram using add_float32()
//               or add_float64(), depending on the type of floats in
//               the vector, regardless of the setting of
//               Datagram::set_stdfloat_double().  This is appropriate
//               when you want to write a fixed-width value to the
//               datagram, especially when you are not writing a bam
//               file.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH void FLOATNAME(LVecBase2)::
write_datagram_fixed(Datagram &destination) const {
#if FLOATTOKEN == 'i'
  destination.add_int32(_v(0));
  destination.add_int32(_v(1));
#elif FLOATTOKEN == 'f'
  destination.add_float32(_v(0));
  destination.add_float32(_v(1));
#else
  destination.add_float64(_v(0));
  destination.add_float64(_v(1));
#endif
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::read_datagram_fixed
//       Access: Published
//  Description: Reads the vector from the Datagram using get_float32()
//               or get_float64().  See write_datagram_fixed().
////////////////////////////////////////////////////////////////////
INLINE_LINMATH void FLOATNAME(LVecBase2)::
read_datagram_fixed(DatagramIterator &source) {
#if FLOATTOKEN == 'i'
  _v(0) = source.get_int32();
  _v(1) = source.get_int32();
#elif FLOATTOKEN == 'f'
  _v(0) = source.get_float32();
  _v(1) = source.get_float32();
#else
  _v(0) = source.get_float64();
  _v(1) = source.get_float64();
#endif
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::write_datagram
//       Access: Published
//  Description: Writes the vector to the Datagram using
//               add_stdfloat().  This is appropriate when you want to
//               write the vector using the standard width setting,
//               especially when you are writing a bam file.
////////////////////////////////////////////////////////////////////
INLINE_LINMATH void FLOATNAME(LVecBase2)::
write_datagram(Datagram &destination) const {
#if FLOATTOKEN == 'i'
  destination.add_int32(_v(0));
  destination.add_int32(_v(1));
#else
  destination.add_stdfloat(_v(0));
  destination.add_stdfloat(_v(1));
#endif
}

////////////////////////////////////////////////////////////////////
//     Function: LVecBase2::read_datagram
//       Access: Published
//  Description: Reads the vector from the Datagram using get_stdfloat().
////////////////////////////////////////////////////////////////////
INLINE_LINMATH void FLOATNAME(LVecBase2)::
read_datagram(DatagramIterator &source) {
#if FLOATTOKEN == 'i'
  _v(0) = source.get_int32();
  _v(1) = source.get_int32();
#else
  _v(0) = source.get_stdfloat();
  _v(1) = source.get_stdfloat();
#endif
}
