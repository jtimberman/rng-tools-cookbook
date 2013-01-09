Description
===========

Installs rng-tools and starts the service.

Requirements
============

Tested on Ubuntu 10.04 and Red Hat 6.3.

Attributes
==========

* `node['rng_tools']['device']` - the device to use for random data. default /dev/urandom

Usage
=====

The rng-tools.default template will use the device in the attribute. This is a non-default value because in a default installation of the rng-tools, the rng-tools service fails to start because the actual default device, /dev/hwrng (Ubuntu) or /dev/hwrandom (RHEL) doesn't always exist.

License and Author
==================

Author:: Joshua Timberman (<cookbooks@housepub.org>), Brian Flad (<bflad417@gmail.com>)

Copyright 2012, Joshua Timberman, Brian Flad

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

