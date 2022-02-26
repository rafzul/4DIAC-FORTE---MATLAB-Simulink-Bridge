Mechanical Press Example
========================
This system provides several applications for controlling a simulated a 
mechanical press. The core of the simulation is made from function blocks 
developed by Jim Christensen and provided with the FBDK tool at 
http://www.holobloc.com.   


1. Provided Applications
========================

1.1 Manual
----------
The Manual application allows to manually control the operation of the press.  

1.2 Simulation
--------------
Simulation of the mechanical press offering its input over a network interface 
using 2 PUBLISH_4 and 2 SUBSCRIBE_4.  

1.2 Automated
-------------
Simple automatic control of the simulated press provided by the 'Simulation'
application. The automated process is done using only IEC 61499 standard event
function blocks. A simple HMI for starting and stopping is also provided.  

1.3 Start
---------
Template application containing already pre-configured IO function blocks to be 
used for own experiments together with the 'Simulation' application.    


2. Running the Applications
===========================

2.1 Manual
----------
For running the Manual application you need to perform the following steps:
 1. Start a RMT_FRAME_DEV with port set to 61500
 2. Select the ManualTest device
 3. Perform download 

2.2 Simulation
--------------
For running the Simulation application you need to perform the following steps:
 1. Start a RMT_FRAME_DEV with port set to 61501
 2. Select the Simulation device
 3. Perform download
 
2.3 Automated
-------------
For running the Automated application you need to perform the following steps:
 1. Before you can run the Automated application you need to start the 
    Simulation application as described in Section 2.2.
 2. Prepare FORTE
    2.1 Export the FBs DI_4 and DO_5 from the mech directory for FORTE
    2.2 Add the cpp files of these FBs to your FORTE build
    2.3 Rebuild FORTE 
 3. Start this FORTE with port set to 61499
 4. Start a RMT_FRAME_DEV with port set to 61502
 5. Select the Control and HMI device
 6. Perform download

2.4 Start
---------
Depends on your application configuration.


3. Exercises
============
This example system has several potential points for improvements left as 
exercises for people who like to learn IEC 61499 and 4DIAC:
  * Add a counter for the parts produced and display it in the HMI.
  * Develop two basic function blocks: one for controlling the conveyor belt and
    one for the press. Compare the two solutions.
  * Extend the automatic mode a hand mode allowing operators to manually operate
    the press and switch between both modes appropriately. 
  * The press simulation allows to inject errors (e.g., stop movement of press).
    Add code for handling such failures and means for recover from them. 




