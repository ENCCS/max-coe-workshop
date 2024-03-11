Efficient materials modelling on HPC with Quantum ESPRESSO, Siesta and Yambo
============================================================================

In recent years, computing technologies underlying materials modelling and 
electronic structure calculation have evolved rapidly. High-performance 
computing (HPC) is transitioning from petascale to exascale, while individual 
compute nodes are increasingly based on heterogeneous architectures that every 
year become more diversified due to different vendor choices. In this environment, 
electronic structure codes also have to evolve fast in order to adapt to new 
hardware facilities. Nowadays, state-of-the-art electronic structure codes based 
on modern density functional theory (DFT) methods allow treating realistic 
molecular systems with a very high accuracy. However, due to the increased 
complexity of the codes, some extra skills are required from users in order to 
fully exploit their potential.  

This training material gives a broad overview of important fundamental concepts 
for molecular and materials modelling on HPC, with a focus on three of the most 
modern codes for electronic structure calculations (QUANTUM ESPRESSO, SIESTA and Yambo). 
Theory sections are interleaved with practical demonstrations and hands-on exercises.

`QUANTUM ESPRESSO <https://www.quantum-espresso.org/>`__ is one of the most 
popular suites of computer codes for electronic-structure calculations and 
materials modelling at the nanoscale, based on density-functional theory, plane 
waves, and pseudopotentials. It is able to predict and give fundamental insights 
about many properties of materials, molecular systems, micro and nanodevices, 
biological systems, in many fields, providing a huge amount of data for 
data-driven science applications.

`SIESTA <https://siesta-project.org/siesta/>`__ is a pseudopotential-based
DFT software whose strength lies in its use of atomic-like strictly-localised
basis sets: the use of a "good first approximation" to the full problem
decreases the number of basis functions needed to achieve a given accuracy, and
the finite support of the orbitals leads to sparsity in the Hamiltonian and
overlap matrices, thus enabling the use of reduced-scaling methods. The
functionalities of SIESTA include, amongst others, the calculation of energies
and forces, molecular-dynamics simulations, band structures, densities of
states, spin-orbit couplings, van der Waals functionals, DFT+U for correlated
systems, real-time TDDFT, and non-equilibrium calculations with TranSIESTA.

`YAMBO <http://www.yambo-code.eu/>`__ is an open-source code implementing 
first-principles methods based on Green’s function (GF) theory to describe 
excited-state properties of realistic materials. These methods include the GW 
approximation, the Bethe Salpeter equation, nonequilibrium GF (NEGF) and TDDFT, 
allowing for the prediction of accurate quasiparticle energies (e.g. ARPES band 
structures), linear and non-linear optical properties, capturing the physics of 
excitons, plasmons, and magnons. It is also possible to calculate 
temperature-dependent electronic and optical properties via electron-phonon 
coupling and nonequilibrium and non-linear optical properties via NEGF real-time 
simulations (pump-probe experiments, etc).

`MAX (MAterials design at the eXascale) <http://www.max-centre.eu/>`__ is a 
European Centre of Excellence which enables materials modelling, simulations, 
discovery and design at the frontiers of the current and future High-Performance 
Computing (HPC), High Throughput Computing (HTC) and data analytics technologies.  
MaX's challenge lies in bringing the most successful and widely used open-source, 
community codes in quantum simulations of materials towards exascale and extreme 
scaling performance and make them available for a large and growing base of 
researchers in the materials' domain.


.. prereq::

   - Some familiarity with density functional theory (DFT), self-consistent 
     field (SCF) calculations and plane wave basis sets is desirable as the 
     workshop will not cover the fundamental theory of these topics.
   - Familiarity with working in a Linux environment and some experience with 
     working on an HPC system is needed to participate in the hands-on exercises.


Who is the course for?
----------------------

This workshop is aimed towards researchers and engineers who already have some 
previous experience with materials modelling and electronic structure calculations.


.. toctree::
   :maxdepth: 1
   :caption: Day 1 - Quantum ESPRESSO I

   
   

.. toctree::
   :maxdepth: 1
   :caption: Day 2 - Quantum ESPRESSO II 


.. toctree::
   :maxdepth: 1
   :caption: Day 3 - Siesta I

   day3/index


.. toctree::
   :maxdepth: 1
   :caption: Day 4 - Siesta II

   day4/index


.. toctree::
   :maxdepth: 1
   :caption: Day 5 - Yambo

   day5/yambo-tutorial

.. toctree::
   :maxdepth: 1
   :caption: Reference

   quick-reference
   guide

.. toctree::
   :maxdepth: 1
   :caption: About

   All lessons <https://enccs.se/lessons/>
   ENCCS <https://enccs.se/>




About the course
----------------

In this workshop, participants will learn how to launch the most common 
types of calculations  (e.g. scf, phonons, quasi-particle energies, 
time-dependent properties) using QE, SIESTA and Yambo, how to prepare input 
files and how to read output files in order to extract the desired properties.

Best practices for efficient exploitation of HPC resources will be discussed.
On the QE days, there will be particular emphasis on how to use the different schemes of data
distribution (e.g. plane waves, pools, images) in combination with the different 
parallelization and acceleration schemes (MPI, OpenMP, GPU-offload) available.
Regarding SIESTA, participants will learn about its algorithmic efficiency,
and they will be able to explore its accelerated and massively parallel solvers.

Schedule
^^^^^^^^

**Day 1, QUANTUM ESPRESSO**

+------------+-------------------------------------------------------+
| Time       | Section                                               |
+============+=======================================================+
|09:00-09:15 | Welcome and introduction to ENCCS                     |
+------------+-------------------------------------------------------+
|09:15-09:30 | Introduction to Max-CoE and MaX flagship codes        |
+------------+-------------------------------------------------------+
|09:30-10:00 | Overview of the QE suite of codes and main features   |
+------------+-------------------------------------------------------+
|10:00-10:25 | Coffee break                                          |
+------------+-------------------------------------------------------+
|10:25-13:00 | PWSCF for HPC and GPU                                 |
+------------+-------------------------------------------------------+


**Day 2, QUANTUM ESPRESSO**

+------------+----------------------------------------------------------------------+
| Time       | Section                                                              |
+============+======================================================================+
|09:00-09:45 | Introduction to Density Functional Perturbation Theory               |
+------------+----------------------------------------------------------------------+
|09:45-10:15 | Introduction to Time Dependent Density Functional Perturbation Theory|
+------------+----------------------------------------------------------------------+
|10:15-10:30 | Coffee break                                                         |
+------------+----------------------------------------------------------------------+
|10:30-13:00 | Phonons and time dependent properties on HPC and GPU                 |
+------------+----------------------------------------------------------------------+


**Day 3, SIESTA**

+------------+-------------------------------------------------------------------------------------+
| Time       | Section                                                                             |
+============+=====================================================================================+
|09:00-09:45 | SIESTA basics                                                                       |
+------------+-------------------------------------------------------------------------------------+
|09:45-10:30 | Hands-on tutorial: A first contact with SIESTA: inputs, execution and outputs       |
+------------+-------------------------------------------------------------------------------------+
|10:30-10:45 | Break                                                                               |
+------------+-------------------------------------------------------------------------------------+
|10:45-11:30 | Hands-on tutorial: Convergence (k points, mesh, mixing)                             |
+------------+-------------------------------------------------------------------------------------+
|11:30-12:00 | Basis sets                                                                          |
+------------+-------------------------------------------------------------------------------------+
|12:00-13:00 | Hands-on tutorial: Basis set optimization                                           |
+------------+-------------------------------------------------------------------------------------+

**Day 4, SIESTA**

+------------+-------------------------------------------------------------------------------------------------+
| Time       | Section                                                                                         |
+============+=================================================================================================+
|09:00-10:00 | Hands-on tutorial: Moving atoms: geometry optimisation and beyond                               |
+------------+-------------------------------------------------------------------------------------------------+
|10:30-11:00 | Hands-on tutorial: Analysis tools                                                               |
+------------+-------------------------------------------------------------------------------------------------+
|11:00-11:15 | Break                                                                                           |
+------------+-------------------------------------------------------------------------------------------------+
|11:15-11:45 | Features available in SIESTA: spin-orbit couplings, TranSIESTA, and others                      |
+------------+-------------------------------------------------------------------------------------------------+
|11:45-13:00 | Hands-on tutorial: Pushing the boundaries of SIESTA: accelerated and massively parallel solvers |
+------------+-------------------------------------------------------------------------------------------------+


**Day 5, Yambo**

+------------+------------------------------------------------------------------+
| Time       | Section                                                          |
+============+==================================================================+
|09:00-09:20 | Overview of the Yambo code and its main features and performance |
+------------+------------------------------------------------------------------+
|09:20-10:00 | Introduction to the GW approximation                             |
+------------+------------------------------------------------------------------+
|10:00-10:20 | Coffee break                                                     |
+------------+------------------------------------------------------------------+
|10:20-13:00 | Hands-on tutorial: A guided tour through GW simulations          |
+------------+------------------------------------------------------------------+


See also
--------

- ENCCS: https://enccs.se/
- MAX-CoE: http://www.max-centre.eu/
- Follow ENCCS on `LinkedIn <https://www.linkedin.com/company/enccs>`__, or `Twitter <https://twitter.com/EuroCC_Sweden>`__
- Follow MAX-CoE on `LinkedIn <https://www.linkedin.com/company/max-centre/>`__, or `Twitter <https://twitter.com/max_center2>`__.

.. math::


Credits
-------

Contributors to this workshop:

- Pietro Davide Delugas (SISSA)
- Ivan Carnimeo (SISSA)
- Oscar Baseggio (SISSA)
- Fabrizio Ferrari Ruffino (CNR-IOM)
- Paolo Giannozzi (CNR-IOM, UniUD)
- Iurii Timrov (Paul Scherrer Institut)
- Laura Bellentani (CINECA)
- Tommaso Gorni (CINECA)
- Aurora Ponzi (CNR-IOM)
- Emilio Artacho (CIC NanoGUNE and University of Cambridge)
- Catalina Coll (ICN2)
- José Mª Escartín (ICN2)
- Roberta Farris (ICN2)
- Ernane de Freitas (ICN2)
- Alberto García (ICMAB-CSIC)
- Arnold Kole (Utrecht University)
- Nick Papior (DTU)
- Federico Pedron (ICN2)
- Miguel Pruneda (CINN-CSIC)
- José Ángel Silva Guillén (IMDEA Nanociencia)
- D. Varsano (CNR-NANO)
- A. Ferretti (CNR-NANO)
- D. Sangalli (CNR-ISM)
- A. Guandalini (Univ. of Rome, La Sapienza)
- F. Paleari (CNR-NANO)
- M. D’Alessio (Univ. Modena and Reggio Emilia, CNR-NANO)
- G. Sesti (CNR-NANO)
- N. Spallanzani (CNR-NANO)


The lesson file structure and browsing layout is inspired by and derived from
`work <https://github.com/coderefinery/sphinx-lesson>`__ by `CodeRefinery
<https://coderefinery.org/>`__ licensed under the `MIT license
<http://opensource.org/licenses/mit-license.html>`__. We have copied and adapted
most of their license text.

Instructional Material
^^^^^^^^^^^^^^^^^^^^^^

This instructional material is made available under the
`Creative Commons Attribution license (CC-BY-4.0) <https://creativecommons.org/licenses/by/4.0/>`__.
The following is a human-readable summary of (and not a substitute for) the
`full legal text of the CC-BY-4.0 license
<https://creativecommons.org/licenses/by/4.0/legalcode>`__.
You are free to:

- **share** - copy and redistribute the material in any medium or format
- **adapt** - remix, transform, and build upon the material for any purpose,
  even commercially.

The licensor cannot revoke these freedoms as long as you follow these license terms:

- **Attribution** - You must give appropriate credit (mentioning that your work
  is derived from work that is Copyright (c) ENCCS and individual contributors and, where practical, linking
  to `<https://enccs.github.io/sphinx-lesson-template>`_), provide a `link to the license
  <https://creativecommons.org/licenses/by/4.0/>`__, and indicate if changes were
  made. You may do so in any reasonable manner, but not in any way that suggests
  the licensor endorses you or your use.
- **No additional restrictions** - You may not apply legal terms or
  technological measures that legally restrict others from doing anything the
  license permits.

With the understanding that:

- You do not have to comply with the license for elements of the material in
  the public domain or where your use is permitted by an applicable exception
  or limitation.
- No warranties are given. The license may not give you all of the permissions
  necessary for your intended use. For example, other rights such as
  publicity, privacy, or moral rights may limit how you use the material.


Software
^^^^^^^^

Except where otherwise noted, the example programs and other software provided
with this repository are made available under the `OSI <http://opensource.org/>`__-approved
`MIT license <https://opensource.org/licenses/mit-license.html>`__.
