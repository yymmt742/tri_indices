program main
  use mod_tri_indices
  implicit none
  integer :: i, j
  integer :: k, l
  l = 0
  do j = 1, 10
    do i = 1, j
      l = l + 1
      call pack_tri_indices(i, j, k)
      if (k /= l) ERROR stop
      call pack_tri_indices(j, i, k)
      if (k /= l) ERROR stop
    end do
  end do
  l = 0
  do j = 1, 10
    do i = 1, j - 1
      l = l + 1
      call pack_tri_indices(i, j, 1, k)
      if (k /= l) ERROR stop
      call pack_tri_indices(j, i, 1, k)
      if (k /= l) ERROR stop
    end do
  end do
  l = 0
  do j = 1, 10
    do i = 1, j - 2
      l = l + 1
      call pack_tri_indices(i, j, 2, k)
      if (k /= l) ERROR stop
      call pack_tri_indices(j, i, 2, k)
      if (k /= l) ERROR stop
    end do
  end do
end program main

