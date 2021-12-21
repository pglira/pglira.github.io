---
layout: post
title: "SimpleICP: support for partial overlap and publication on PyPi"
date: 2021-12-20 12:00:00 +0200
categories: code
---

The [simpleICP repository on Github](https://github.com/pglira/simpleICP) contains implementations of a rather simple version of the Iterative Closest Point (ICP) algorithm in various languages.

Currently, an implementation is available for C++, Julia, Matlab, Octave, and Python.

What's new?

- All implementations support now **partial overlap** of the point clouds, i.e. the point clouds must not fully overlap
- The python implementation of the simpleICP algorithm is now available on **PyPi**, see [here](https://pypi.org/project/simpleicp)