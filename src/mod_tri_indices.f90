module mod_tri_indices
  use ISO_FORTRAN_ENV, only: INT8, INT16, INT32, INT64
  implicit none
  private
  public :: pack_tri_indices
  public :: unpack_tri_indices
!
  interface pack_tri_indices
    module procedure :: pack_tri_indices_INT8
    module procedure :: pack_tri_indices_INT16
    module procedure :: pack_tri_indices_INT32
    module procedure :: pack_tri_indices_INT64
    module procedure :: pack_tri_indices_ds_INT8
    module procedure :: pack_tri_indices_ds_INT16
    module procedure :: pack_tri_indices_ds_INT32
    module procedure :: pack_tri_indices_ds_INT64
  end interface
!
  interface unpack_tri_indices
    module procedure :: unpack_tri_indices_INT8
    module procedure :: unpack_tri_indices_INT16
    module procedure :: unpack_tri_indices_INT32
    module procedure :: unpack_tri_indices_INT64
    module procedure :: unpack_tri_indices_ds_INT8
    module procedure :: unpack_tri_indices_ds_INT16
    module procedure :: unpack_tri_indices_ds_INT32
    module procedure :: unpack_tri_indices_ds_INT64
  end interface
!
contains
  !| Maps the indices (/(i,j)/) of the upper triangular matrix
  !  to the index (/k/) of the one-dimensional array.
  pure elemental subroutine pack_tri_indices_INT8(i, j, k)
    !| low index if (/i<j/), else collumn index.
    integer(INT8), intent(in)  :: i
    !| collumn index if (/i<j/), else low index.
    integer(INT8), intent(in)  :: j
    !| packed index.
    integer(INT8), intent(out) :: k
    !| diagonal shift
    if (i < j) then
      k = (j - 1) * j / 2 + i
    else
      k = (i - 1) * i/ 2 + j
    end if
  end subroutine pack_tri_indices_INT8
!
  !| Maps the indices (/(i,j)/) of the upper triangular matrix
  !  to the index (/k/) of the one-dimensional array.
  pure elemental subroutine pack_tri_indices_INT16(i, j, k)
    !| low index if (/i<j/), else collumn index.
    integer(INT16), intent(in)  :: i
    !| collumn index if (/i<j/), else low index.
    integer(INT16), intent(in)  :: j
    !| packed index.
    integer(INT16), intent(out) :: k
    !| diagonal shift
    if (i < j) then
      k = (j - 1) * j / 2 + i
    else
      k = (i - 1) * i/ 2 + j
    end if
  end subroutine pack_tri_indices_INT16
!
  !| Maps the indices (/(i,j)/) of the upper triangular matrix
  !  to the index (/k/) of the one-dimensional array.
  pure elemental subroutine pack_tri_indices_INT32(i, j, k)
    !| low index if (/i<j/), else collumn index.
    integer(INT32), intent(in)  :: i
    !| collumn index if (/i<j/), else low index.
    integer(INT32), intent(in)  :: j
    !| packed index.
    integer(INT32), intent(out) :: k
    !| diagonal shift
    if (i < j) then
      k = (j - 1) * j / 2 + i
    else
      k = (i - 1) * i/ 2 + j
    end if
  end subroutine pack_tri_indices_INT32
!
  !| Maps the indices (/(i,j)/) of the upper triangular matrix
  !  to the index (/k/) of the one-dimensional array.
  pure elemental subroutine pack_tri_indices_INT64(i, j, k)
    !| low index if (/i<j/), else collumn index.
    integer(INT64), intent(in)  :: i
    !| collumn index if (/i<j/), else low index.
    integer(INT64), intent(in)  :: j
    !| packed index.
    integer(INT64), intent(out) :: k
    !| diagonal shift
    if (i < j) then
      k = (j - 1) * j / 2 + i
    else
      k = (i - 1) * i/ 2 + j
    end if
  end subroutine pack_tri_indices_INT64
!
  !| Maps the indices (/(i,j)/) of the upper triangular matrix
  !  to the index (/k/) of the one-dimensional array.
  pure elemental subroutine pack_tri_indices_ds_INT8(i, j, d, k)
    !| low index if (/i<j/), else collumn index.
    integer(INT8), intent(in)  :: i
    !| collumn index if (/i<j/), else low index.
    integer(INT8), intent(in)  :: j
    !| diagonal shift
    integer(INT8), intent(in)  :: d
    !| packed index.
    integer(INT8), intent(out) :: k
    if (i < j) then
      k = j - d
      k = (k - 1) * k / 2 + i
    else
      k = i - d
      k = (k - 1) * k / 2 + j
    end if
  end subroutine pack_tri_indices_ds_INT8
!
  !| Maps the indices (/(i,j)/) of the upper triangular matrix
  !  to the index (/k/) of the one-dimensional array.
  pure elemental subroutine pack_tri_indices_ds_INT16(i, j, d, k)
    !| low index if (/i<j/), else collumn index.
    integer(INT16), intent(in)  :: i
    !| collumn index if (/i<j/), else low index.
    integer(INT16), intent(in)  :: j
    !| diagonal shift
    integer(INT16), intent(in)  :: d
    !| packed index.
    integer(INT16), intent(out) :: k
    if (i < j) then
      k = j - d
      k = (k - 1) * k / 2 + i
    else
      k = i - d
      k = (k - 1) * k / 2 + j
    end if
  end subroutine pack_tri_indices_ds_INT16
!
  !| Maps the indices (/(i,j)/) of the upper triangular matrix
  !  to the index (/k/) of the one-dimensional array.
  pure elemental subroutine pack_tri_indices_ds_INT32(i, j, d, k)
    !| low index if (/i<j/), else collumn index.
    integer(INT32), intent(in)  :: i
    !| collumn index if (/i<j/), else low index.
    integer(INT32), intent(in)  :: j
    !| diagonal shift
    integer(INT32), intent(in)  :: d
    !| packed index.
    integer(INT32), intent(out) :: k
    if (i < j) then
      k = j - d
      k = (k - 1) * k / 2 + i
    else
      k = i - d
      k = (k - 1) * k / 2 + j
    end if
  end subroutine pack_tri_indices_ds_INT32
!
  !| Maps the indices (/(i,j)/) of the upper triangular matrix
  !  to the index (/k/) of the one-dimensional array.
  pure elemental subroutine pack_tri_indices_ds_INT64(i, j, d, k)
    !| low index if (/i<j/), else collumn index.
    integer(INT64), intent(in)  :: i
    !| collumn index if (/i<j/), else low index.
    integer(INT64), intent(in)  :: j
    !| diagonal shift
    integer(INT64), intent(in)  :: d
    !| packed index.
    integer(INT64), intent(out) :: k
    if (i < j) then
      k = j - d
      k = (k - 1) * k / 2 + i
    else
      k = i - d
      k = (k - 1) * k / 2 + j
    end if
  end subroutine pack_tri_indices_ds_INT64
!
  !| Maps the indices (/(i,j)/) of the upper triangular matrix
  !  to the index (/k/) of the one-dimensional array.
  pure elemental subroutine unpack_tri_indices_INT8(k, i, j)
    !| packed index.
    integer(INT8), intent(in)  :: k
    !| low index.
    integer(INT8), intent(out) :: i
    !| collumn index.
    integer(INT8), intent(out) :: j
    i = 2 * (2 * (2 * k)) - 7
    j = INT((SQRT(real(i)) - 1.0), INT8) / 2 + 1 ! cantor_pair_inverse
    i = k - j * (j - 1) / 2
  end subroutine unpack_tri_indices_INT8
!
  !| Maps the indices (/(i,j)/) of the upper triangular matrix
  !  to the index (/k/) of the one-dimensional array.
  pure elemental subroutine unpack_tri_indices_INT16(k, i, j)
    !| packed index.
    integer(INT16), intent(in)  :: k
    !| low index.
    integer(INT16), intent(out) :: i
    !| collumn index.
    integer(INT16), intent(out) :: j
    i = 2 * (2 * (2 * k)) - 7
    j = INT((SQRT(real(i)) - 1.0), INT16) / 2 + 1 ! cantor_pair_inverse
    i = k - j * (j - 1) / 2
  end subroutine unpack_tri_indices_INT16
!
  !| Maps the indices (/(i,j)/) of the upper triangular matrix
  !  to the index (/k/) of the one-dimensional array.
  pure elemental subroutine unpack_tri_indices_INT32(k, i, j)
    !| packed index.
    integer(INT32), intent(in)  :: k
    !| low index.
    integer(INT32), intent(out) :: i
    !| collumn index.
    integer(INT32), intent(out) :: j
    i = 2 * (2 * (2 * k)) - 7
    j = INT((SQRT(real(i)) - 1.0), INT32) / 2 + 1 ! cantor_pair_inverse
    i = k - j * (j - 1) / 2
  end subroutine unpack_tri_indices_INT32
!
  !| Maps the indices (/(i,j)/) of the upper triangular matrix
  !  to the index (/k/) of the one-dimensional array.
  pure elemental subroutine unpack_tri_indices_INT64(k, i, j)
    !| packed index.
    integer(INT64), intent(in)  :: k
    !| low index.
    integer(INT64), intent(out) :: i
    !| collumn index.
    integer(INT64), intent(out) :: j
    i = 2 * (2 * (2 * k)) - 7
    j = INT((SQRT(real(i)) - 1.0), INT64) / 2 + 1 ! cantor_pair_inverse
    i = k - j * (j - 1) / 2
  end subroutine unpack_tri_indices_INT64
!
  !| Maps the indices (/(i,j)/) of the upper triangular matrix
  !  to the index (/k/) of the one-dimensional array.
  pure elemental subroutine unpack_tri_indices_ds_INT8(k, d, i, j)
    !| packed index.
    integer(INT8), intent(in)  :: k
    !| packed index.
    integer(INT8), intent(in)  :: d
    !| low index.
    integer(INT8), intent(out) :: i
    !| collumn index.
    integer(INT8), intent(out) :: j
    i = 2 * (2 * (2 * k)) - 7
    j = INT((SQRT(real(i)) - 1.0), INT8) / 2 + 1 + d ! cantor_pair_inverse
    i = j - d
    i = k - i * (i - 1) / 2
  end subroutine unpack_tri_indices_ds_INT8
!
  !| Maps the indices (/(i,j)/) of the upper triangular matrix
  !  to the index (/k/) of the one-dimensional array.
  pure elemental subroutine unpack_tri_indices_ds_INT16(k, d, i, j)
    !| packed index.
    integer(INT16), intent(in)  :: k
    !| packed index.
    integer(INT16), intent(in)  :: d
    !| low index.
    integer(INT16), intent(out) :: i
    !| collumn index.
    integer(INT16), intent(out) :: j
    i = 2 * (2 * (2 * k)) - 7
    j = INT((SQRT(real(i)) - 1.0), INT16) / 2 + 1 + d ! cantor_pair_inverse
    i = j - d
    i = k - i * (i - 1) / 2
  end subroutine unpack_tri_indices_ds_INT16
!
  !| Maps the indices (/(i,j)/) of the upper triangular matrix
  !  to the index (/k/) of the one-dimensional array.
  pure elemental subroutine unpack_tri_indices_ds_INT32(k, d, i, j)
    !| packed index.
    integer(INT32), intent(in)  :: k
    !| packed index.
    integer(INT32), intent(in)  :: d
    !| low index.
    integer(INT32), intent(out) :: i
    !| collumn index.
    integer(INT32), intent(out) :: j
    i = 2 * (2 * (2 * k)) - 7
    j = INT((SQRT(real(i)) - 1.0), INT32) / 2 + 1 + d ! cantor_pair_inverse
    i = j - d
    i = k - i * (i - 1) / 2
  end subroutine unpack_tri_indices_ds_INT32
!
  !| Maps the indices (/(i,j)/) of the upper triangular matrix
  !  to the index (/k/) of the one-dimensional array.
  pure elemental subroutine unpack_tri_indices_ds_INT64(k, d, i, j)
    !| packed index.
    integer(INT64), intent(in)  :: k
    !| packed index.
    integer(INT64), intent(in)  :: d
    !| low index.
    integer(INT64), intent(out) :: i
    !| collumn index.
    integer(INT64), intent(out) :: j
    i = 2 * (2 * (2 * k)) - 7
    j = INT((SQRT(real(i)) - 1.0), INT64) / 2 + 1 + d ! cantor_pair_inverse
    i = j - d
    i = k - i * (i - 1) / 2
  end subroutine unpack_tri_indices_ds_INT64
!
end module mod_tri_indices

