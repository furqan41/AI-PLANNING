# AI-PLANNING-PDDL
The Project is based on AI Planning which involves the demonstration of automated robotics for coffee shop scenarios in an efficient manner
and management in a precise way.

two robots named (barista & waiter ) are implemented in this project which perform actions to prepare and serve the drinks to customers

* The barista robot needs to prepare two different kinds of drinks ordered by the customers

       Hot drink 
       Clod drink

Cold drinks are faster to prepare than warm drinks, It takes the barista  robot 3-time units to prepare a cold drink, and 5-time units to prepare a warm drink. Once ready, the drinks are put in the bar, where the waiter can pick them up.

* WAITER ROBOT
  
     The waiter robot is then in charge of  serving customers and cleaning tables where customers have already left the shop.
     The waiter robot can decide to grasp a drink with its gripper or to use a tray to carry more drinks at once, the waiter robot can grasp a single drink using one of its grippers and bring it to the table where the corresponding customer is seated. The waiter can only bring a drink at a time if it is not using a tray. The tray can be taken from the bar and must be returned there after use. The waiter is not allowed to leave the tray on the table. The waiter moves at 2 meters per time unit; 1 meter per time unit if he is using the tray. Finally, the robot has to clean tables: it takes 2-time units per square meter to clean a table. The robot cannot clean a table while carrying the tray

## CAFE LAYOUT
![image](https://github.com/furqan41/AI-PALNNING-PDDL/assets/105802251/09e92b98-d5ff-4eda-9f76-457abbee8a75)

The coffee shop layout is shown in the figure above. It has a bar counter on the very top, and 4 tables for customers. Each table is 1 meter apart from any other (let’s assume Euclidean geometry does not apply here, so also tables 1 and 4 are 1 meter from each other). The bar is 2 meters away from tables 1 and 2. Table 3 is the only table of 2 square meters, all the others are of 1 square meter. 

## REQUIRMENTS
* **Problem 1**: There are 2 customers at table 2: they ordered 2 cold drinks. Tables 3 and 4 need to be cleaned. 
* **Problem 2**:There are 4 customers at table 3: they ordered 2 cold drinks and 2 warm drinks. Table 1 needs to be cleaned. 
* **Problem 3**:There are 2 customers at table 4: they ordered 2 warm drinks. There are also 2 customers at table 1: they ordered 2 warm drinks. Table 3 needs to be cleaned.
* **Problem 4**: There are 2 customers at table 4 and 2 customers at table 1: they all ordered cold drinks. There are also 4 customers at table 3: they all ordered warm drinks. Table 4 needs to be cleaned.

## METHODOLOGY
To design a plan we used a LPG Planner. LPG (Local search for Planning Graphs) is a planner which is based on local search and planning graphs. These will grasps PDDL 2.1 domains. This PDDL 2.1 domain associates with numerical quantities and durations. This planner is able to solve not only plan generation but also plan adaptation problems. The evaluation function uses some heuristics to estimate the "search cost" and the "execution cost" of achieving a (possibly numeric) precondition. Action durations and numerical quantities (e.g., fuel consumption) are represented in the actions graphs and are modeled in the evaluation function. In temporal domains, actions are ordered using a "precedence graph" that is maintained during search, and that takes into account the mutex relations of the planning graph. The system can produce good quality plans in terms of one or more criteria. This is achieved by an anytime process producing a sequence of plans, each of which is an improvement of the previous ones in terms of its quality. LPG is integrated with a best-first algorithm similar to the one used by FF. The system can automatically switch to best-first search after a certain number of search steps and "restarts" have been performed. Finally, LPG can be used as a pre-processor to produce a quasi-solution that is then repaired by ADJ, a plan-analysis technique for fast plan adaptation (source from: https://lpg.unibs.it/lpg/). 

## RESULTS
Here are some results parameters obtain from the planners such as:
![image](https://github.com/furqan41/AI-PALNNING-PDDL/assets/105802251/8bad0b17-c0ea-42cd-a8f2-eceb81881e5d)

The above figure highlights the table that describes the actions taken by the planner to solve problems.

**Analyzing Planning Problem:**

       Temporal Planning Problem: YES
       Numeric Planning Problem: YES
       Problem with Timed Initial Literals: NO
       Problem with Derived Predicates: NO

**Evaluation function weights:**

       Action duration 1.00
       Action cost 0.0


## CONCLUSION
In summary, the utilization of robots in coffee shop operations exemplifies the growing trend of automation and robotics in diverse industries. This application offers advantages such as enhanced efficiency, error reduction, and improved customer experiences. However, effective implementation necessitates meticulous planning, design, and interdisciplinary collaboration. As automation continues to evolve, robotic coffee shops provide essential insights into the potential benefits and challenges of integrating robots into various sectors.
