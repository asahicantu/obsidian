# Quality Software Architecture

* Application of principles of separation of concerns
* Thinking in terms of components
* Thinking in terms of interfaces
> Instead of being a dogma, thos is a question of using best practices from projects

- [ ] Check for capgemini software engineering  books
 
Art <> Architecture 

* Plan to build something (Functional - Non functional requirements)
	* Beauty:
		* Clarity and comprehensibility
		* Elegance
		* Functionality
		* Simplicity


## Desing objectives - How to master complexity?
- Comprehensibility (Stakeholder communication)
- Planneability & Feasibility
- Maintainability
- Efficiency (Cost-Effective parallel development)

### Separation of concerns
Decomposition / Modularization
Separation of concerns
Design perspectives

Refinement stages
Application landscape
System desing
Cpomponent desing
Class and method design

 Design perspectives
Restriction to specific aspetcs 


The result of design is the sofrware architecture, the "cosntruction plan" for sofware engineering

- Software architecture
	- How an infomation system is organized and structured
	- Static and dynamic aspects
- Basis for appropriate communication of the design
- Determines system's quality characteristics
	- Adherence to [[non-functional requirements]]
	- [[Quality]]
Architecture by simplicity = 
Refactoring
Softweare Lifecycle of 

#### *Ideally*:
Software should be soft when changes and environments olbigued it to change
Changes should remian local, Each function is implemented only once.
Control redundancy - Avoid resource waste-repetition

* Changes remain local
* Partes are interchangable
* Easy to add to
* Custmobizability


| Specification                          | Architecture Design                                         |
| -------------------------------------- | ----------------------------------------------------------- |
| Functional/Non-functional requirements | Local and technical structure                               |
| Target groups, users                   | Developers                                                  |
| Business use cases                       | Models, views, compnents, classes, sequiences, ER diagrams, |

### Waterfall model
Large-scale projects
Specification - Design - CUT(Coding Unit Tests)

HLD - LLD (High level design ) / (Low level design)

It has to be both wise sometimes adaptable, not always agile is the best option

- Strategize
- Discover
	- Intentional Architecture
- Deliver
	- Emergent Architecture
- Measure

> The level of complexity shoots up if dependencies are not reduced

> Software that changes at different rates is subdivided into different modules 


### Components, 
Single organisms that export one or more interfaces for connections (Manifest, what it is for, implementation)
Imports other interfaces

### Changes 
business logic / technical 
Macro - component / Atomic - component
Gross pay / Net pay

> Thinking in terms of components and interfaces when attempting to master complexity



If the architecture has to be fundamentally modified again afterwards,
**this becomes very very expensive**


## Architectural principles
Must be applied with sense and judgment, **Exaggeration of single principles will not lead to well-conceived architectures**
Guideline
Valid
Elementary
Scale-invariant

### 11 architectural principles
#### Elementary
1. Separation of concerns
2. Minimization of dependencies
3. Dependency inversion principle
4. Information hiding
5. Homogeneity
6. Control redundancy

#### Derived
7. Differentiation of Software categories
8. Layering
9. Design -by contract
10. Data sovereignty (CQRS)
11. Re-use

## Design best practices
### Simplicity 
KISS ME Keep It Simple, Stupid, Make it Easy
### Base yourself on the requirements
Avoid redundancy
Uniform Style
Document decisions


### Architectural views

A/T Separation at the architectural level (Architectureal..haha)
#### AArchitecture (Application Architecture)
Free of technical product related practical constraints
Is developed anew for each project
Structures softwares from perspective of the application
Contains logical classes such as "employee" or" account'

#### TArchitecture (Technical architecture)

Described the virtual machine on which the software designed with the [AArchitecure] runs (Container,for A components)
Template for A Code
Combines A and TI archs
Structure of the 0/T code
Reuse possible

#### TI Architecture (Architecture of the technical infrastructure)
Physical devices, computers networks etc.
System Software OS
Think about network diagrams, topologies, systems distributions

| A Arch                     | T Arch         | TI Arch |
| -------------------------- | -------------- | ------- |
| Requirements               | Layers         |         |
| Subsdystems External app   | T components   |         |
| Specification              | Interfaces     |         |
| Busines use cases          | Clases/modules |         |
| Dialog, espcification      | Packages       |         |
| Subsystems, A components   |                |         |
| Interfaces/classes modules |                |         |


### Transfer objects
USing -> Maping using enityt types only
Decoupling components , 

Simple transfer object
Composite transfer

### Transactions
#### A Transaction
Native concept from the BL perspective
Free of technical transaction details


#### T Transaction

> [!abstract]+
> Abstract example
> 
```ad-note
collapse: closed

This is an example of admonnition
```



```start-multi-column
ID: ID_2kho
Number of Columns: 2
Largest Column: standard
```


this is first col

--- column-end ---

This is second col
This is second col

--- end-multi-column





[[Sequence Diagrams]]

