<!-- [![CI](https://github.com/yymmt742/tri_indices/actions/workflows/ci.yml/badge.svg)](https://github.com/yymmt742/tri_indices/actions/workflows/ci.yml) -->
[![cmake][cmake]][cmake-url]
[![fortran][fortran-shield]][fortran-url]


<!-- PROJECT LOGO -->
<br />
<div align="center">
<h3 align="center">utf8f</h3>
  <p align="center">
    Fortran tri_indices functions
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

## About The Project

tri_indices provides a mapping/inverse mapping from an index of an upper triangular matrix to an index of a one-dimensional array.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->
## Getting Started
### Prerequisites

* gcc >= 9.4.0
* gfortran >= 9.4.0
* cmake >= 3.9

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/yymmt742/tri_indices
   ```
2. Build fortran library
   ```sh
   mkdir build && cd build
   cmake ..
   make install
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Usage

   ```fortran
      program main
      use tri_indices
      implicit none
      end program main
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->
## Contact

YYMMT742 - yymmt@kuchem.kyoto-u.ac.jp

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
[cmake]: https://img.shields.io/badge/Cmake-064F8C?style=for-the-badge&logo=cmake&logoColor=EEEEEE
[cmake-url]: https://cmake.org/
[fortran-shield]: https://img.shields.io/badge/Fortran-734F96?style=for-the-badge&logo=fortran&logoColor=FFFFFF
[fortran-url]: https://fortran-lang.org/

