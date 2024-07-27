program main
  use mod_tri_indices
  implicit none
  integer :: i, j
  integer :: k, i_, j_
  k = 0
  do j = 1, 10
    do i = 1, j
      k = k + 1
      call unpack_tri_indices(k, i_, j_)
      if (i /= i_) ERROR stop
      if (j /= j_) ERROR stop
    end do
  end do
  k = 0
  do j = 1, 10
    do i = 1, j - 1
      k = k + 1
      call unpack_tri_indices(k, 1, i_, j_)
      if (i /= i_) ERROR stop
      if (j /= j_) ERROR stop
    end do
  end do
  k = 0
  do j = 1, 10
    do i = 1, j - 2
      k = k + 1
      call unpack_tri_indices(k, 2, i_, j_)
      if (i /= i_) ERROR stop
      if (j /= j_) ERROR stop
    end do
  end do
end program main

