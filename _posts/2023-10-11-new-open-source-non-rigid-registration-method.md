---
layout: post
title: "Open source implementation of new non-rigid point cloud registration method"
date: 2023-10-11 12:00:00 +0200
categories: github code
---

We have published an **open source implementation of a non-rigid registration method on GitHub**. Such a registration method is useful if the transformation between two point clouds cannot be modelled by a rigid-body transformation (3 shifts, 3 rotations). Instead, our method can model such **non-rigid deformations** between two point clouds by using **piece-wise tricubic polynomials as transformation model**.

The method will be described in detail in an **upcoming paper**.

There are two repositories on GitHub:

1. [3D_nonrigid_tricubic_pointcloud_registration](https://github.com/AIT-Assistive-Autonomous-Systems/3D_nonrigid_tricubic_pointcloud_registration): this is an efficient implementation of the algorithm for the 3D space written in C++
2. [2D_nonrigid_tricubic_pointcloud_registration](https://github.com/AIT-Assistive-Autonomous-Systems/2D_nonrigid_tricubic_pointcloud_registration): this is a prototype implementation of the algorithm for the 2D space only written in Matlab

Feel free to use the code for your own projects. Both implementations are licensed under the MIT license.

### 3D Example

Our method is used here to estimate the motion of a maple tree between sunset and sunrise. All units in meter.

![alt](/assets/images/2023-10-11-new-open-source-non-rigid-registration-method-img2.png)

(*This data was originally collected for research and funded by Academy of Finland grants no. 265949 and 272195. We thank Eetu Puttonen for providing the data.*)

### 2D Example

The following image shows the registration of the popular "fish dataset" used in *Myronenko, A.; Song, X.; Carreira-Perpinan, M. Non-rigid point set registration: Coherent point drift. Advances in neural information processing systems 2006, 19.*.

![alt](/assets/images/2023-10-11-new-open-source-non-rigid-registration-method-img1.png)