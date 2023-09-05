## Component
- Exports one or more interfaces including clear semantics (interface contract)
- Imports other interfaces
- Hides its implementation and can be replaced by another component
- Can be reused
- Hides implementation
- Can contain other components
### What components are not
- Unit of deployment
- Support inheritance
- Construct of programming language


### Parts of an interface
- Interface & Dependencies
	- Services offered
	- Call-backs
	- Required interfces	
- Types
	- Business data types
	- Entity interfaces
- Results
	- Result types
	- Error/Exception classes
- Contract
	- Semantics of methods, parameters
	- Pre-and post conditions invariants
	- Fulfilled guaranteed NFR's

### Adapter
More loosely coupled elements
Decoupling by means of adapters
___
> Take care of the dependencies


### Software categories 
Similar to software bood groups
* Independent application and tech
* Ideal for reuse
* Determined by the logical application
* Independent of technology
* Lagers part of the system
* Independent of the logical application
* REusavle id the same technical component is uded
* Concerned with technolog and application
* Difficult to maintain, resists changes
* Reuse as likely as winning the lottery
* Pure transformation
* Configuration
* Brings different categories together

Keep the core agnostic

Try to avoid mixing context and categories, keep them separated

#### Breaking system down into components 
Strong cohesion  (holding together)
	PUt elements with related content into a single component
	Create a clearly denined precise area of responsibility
	Simple components should belong to a single software category
loose coupling
	Minimize dependencies
	Minimeze assumptions about other components

As cohesion evolves and becomes stronger, it might be time to couple it into a single component


#### Errors when making components
Mixing business and technology -> Use adapters
God components -> Build simpler more singular components
Distributed responsibilities
Spaghetti design


## Important takeaways
Document for each component
	Idea
	External view
	Internal vew
Prepare it for the future, 

Describe the semantics of component
	Instructions
	Side effects
	Identification
	Call effect 
	Variabilities and configurability
	Error scenarios
	Restrictions
	Design decision
### Workflow  OUT-IN pattern
- Collection of tasks
- Component formation
- Dependencies among components
- Interfaces (coarce grained)
- Communication between components
- Interfaces with prameters
- External view of a component
- Internal view of a components


Use of UML diagrams
Sequence diagram


What is our boundary as software architect



What symbol is ...? <br></br> 
<details> 
	<summary>
		Click once on <font color="red"><b>this text</b></font> to hide/unhide the answer!
	</summary>
 </details>
 
 
 
 <details> 
	 <summary>Click to expand!</summary>
	## Heading 
		1. A numbered 
		2. list * With some * Sub bullets 
</details>




