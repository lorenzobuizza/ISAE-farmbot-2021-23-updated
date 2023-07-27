README3 file for Research Project Report


24/01/23

14:36
I downloaded the Prost Planner from git (https://github.com/prost-planner/prost) including
all the different dependencies (z3, BDD lib, ...). Pay attention to modify the bashrc file in order to include the variables (export NAME="/path/to/folder") that point to the things specified on the README on the Prost github page.
The commands available in this same github page can be used to run the Prost Planner, but using the RDDL files contained in the benchmark examples. Hence, in order to utilize Python instead of trying to learn the RDDL language, it is possible to have a look at the github page of the Prost Lab ("https://github.com/prost-planner/prostlab"). 
I created a folder /AAA_prostlab in which I created a virtual environment for it:


    cd ~/AAA_prostlab (switch to directory)
    python3 -m venv prostlab-venv (create virtual environment)
    source prostlab-venv/bin/activate (activate the virtual environment)
    pip install -U pip (upgrade pip)
    pip install prostlab (install prostlab)


I also defined the PROST_BENCHMARKS in the bashrc file that points to the benchmarks of the Prost Planner folder.
At this point I took a look at the Prost wiki page ("https://github.com/prost-planner/prost/wiki/Evaluation") in the section "PERFORMING AN EXPERIMENT":

	Performing an experiment

	If you haven't just set up Prost Lab as 
	described in the previous point, you need
	to re-activate your virtual environment 
	by switching to the directory containing
	the virtual environment for Prost Lab 
	and by running source prostlab-venv/bin/activate.
	To run an experiment with Prost Lab, 
	you need to set up a python script that
	uses Prost Lab. An example script can be 
	found at testbed/experiments/issue-83/exp1.py. 
	If you plan to perform experiments on the IPC
	benchmark suite that comes with Prost, we
	recommend to copy the file 
	testbed/experiments/issue-83/ipc_benchmarks.py
	to your experiment folder and load the IPC
	benchmarks, e.g. by using the predefined 
	benchmarks suites "IPC2011", "IPC2014", 
	"IPC2018" or "IPC_ALL".

16:02
ChatGPT told me that there are no publicly available parsers or libraries that can translate an MDP defined in Python to RDDL automatically. Therefore, it is necessary to manually write the RDDL file describind the MDP.
The Prost Lab that I found before is not to parse from Python to RDDL! In fact, Prost Lab is simply a Python package for performing experiments with the Prost planner, and it just evaluates the solver.
(Maybe) useful links that I found online:
	- https://github.com/aibasel/lab 					-> Lab and Downward Lab
	- https://github.com/ataitler/pyRDDLGym 				-> pyRDDLGym
	- https://github.com/thiagopbueno/pyrddl				-> pyrddl
	- https://ataitler.github.io/IPPC2023/					-> International Planning Competition July 2023
	- http://users.cecs.anu.edu.au/~ssanner/IPPC_2011/RDDL.pdf		-> RDDL Language Description (PDF)
	- https://github.com/ssanner/rddlsim					-> Java RDDLSim
	- https://sites.google.com/site/rddltutorial/				-> Fighting Wildfires: RDDL Tutorial
	- https://sites.google.com/site/rddltutorial/rddl-language-discription	-> RDDL Language Description (web page)

16:34
VERY IMPORTANT: I spoke to Nicolas about the definition of "Evaluator" in the Fast Downward planner. Basically it's the same thing as the heuristic. An heuristic is a criterion on states, a mathematical function denoted by "h" which is able to to "rank" the actions (based on some sort of decision, a different one for every type of heuristic). Then, in the "for" loop of the search algorithm (for example A*), the actions are selected following this "rank" specified by the heuristic.
IMPORTANT: if the heuristic function is ADMISSIBLE and MONOTONE, the output solution of the A* algorithm is the OPTIMAL SOLUTION (the one that minimizes the cost!). However, if the heuristic function is NOT ADMISSIBLE or NOT MONOTONE, even the A* algorithm won't generate the optimal output! And that's probably what is happening for Metric FF or FD with the "add" evaluator.
ADMISSIBLE means that the heuristic "h" never overestimates the actual minimal cost to reach the goal.
In particular, to obtain the optimal (but very slow) plan with the FD I used the BLIND heuristic: I SHOULD WRITE WHAT IS THE BLIND HEURISTIC! And from what I understood, this BLIND heurstic is ADMISSIBLE and MONOTONE, so at the end I obtain the optimal plan!

16:43
I will produce the PDDL files to run with the FD solver using the "blind" evaluator for 12 waypoints (v16) and 15 waypoints (v17) taking the information from the complete problem file at v12. I will give these files to Nicolas to run them on the supercomputer PANDO. 



02/02/2023

11:00
v16 and v17 didn't work even if we tried to run them on the Pando supercomputer. They never finish to calculate probably because of memory limit. We tried to increase the memory limit but it's not working either. Now Nicolas will try running v16 and v17 with Metric FF using a particular evaluation, maybe we can get the optimal plan also with that. He will let me know.


11:02
Since I was able to read the tutorial for RDDL, I will try to produce a simplified problem DETERMINISTIC! Maybe with only 6 waypoints.



02/03/23
Nicolas was able to obtain version v16 using MetricFF and Pando, and we found out it was optimal!! and it took only 12 minutes with option 3. this means that it's much better than FD, especially because FD for version v16 never produced an output.
At this point i can make comparisons between all the metric FF results with all the different sizes of the plan. 

Should we cite Hierarchical planning?
Now I will send Nicolas all the problem files with all the sizes! And he will run them with options 3, 4, 5. I can mention that I used FD but we had memory issues with that! SO it's not useful.
I can aso mention all the different heuristics and algorithms!










