(define
	(problem motionandpicture)
	(:domain farmbot)
	(:objects
		farmbot - robot
		z6 - location	; z6 is the base 
		a0 a1 a2 b0 b1 b2 - waypoint
		z0 z1 - toolbase    ; z0 is the location of the soil sensor, z1 is the location of the watering nozzle
		soilsensor wateringnozzle - tool
		takedatabefore takedataafter irrigate - task
	)

	(:init 
		(at farmbot z6)		;initial conditions of the robot and the tools
		(bare farmbot)
		(adapted soilsensor takedatabefore)
		(adapted soilsensor takedataafter)
		(adapted wateringnozzle irrigate)
		(istoolbase soilsensor z0)
		(istoolbase wateringnozzle z1)
		(require irrigate takedatabefore)
		(require takedataafter irrigate)
		(independent takedatabefore)
		(= (energycons) 0)
		(= (taskcost takedatabefore) 500)
		(= (taskcost takedataafter) 500)
		(= (taskcost irrigate) 500)
		(= (distance a0 a0) 0)		;distance bewteen the different waypoints
		(= (distance a0 a1) 400)
		(= (distance a0 a2) 800)
		(= (distance a0 b0) 400)
		(= (distance a0 b1) 565)
		(= (distance a0 b2) 894)	
		(= (distance a1 a0) 400)
		(= (distance a1 a1) 0)
		(= (distance a1 a2) 400)
		(= (distance a1 b0) 565)
		(= (distance a1 b1) 400)
		(= (distance a1 b2) 565)
		(= (distance a2 a0) 800)
		(= (distance a2 a1) 400)
		(= (distance a2 a2) 0)
		(= (distance a2 b0) 894)
		(= (distance a2 b1) 565)
		(= (distance a2 b2) 400)
		(= (distance b0 a0) 400)
		(= (distance b0 a1) 565)
		(= (distance b0 a2) 894)
		(= (distance b0 b0) 0)
		(= (distance b0 b1) 400)
		(= (distance b0 b2) 800)
		(= (distance b1 a0) 565)
		(= (distance b1 a1) 400)
		(= (distance b1 a2) 565)
		(= (distance b1 b0) 400)
		(= (distance b1 b1) 0)
		(= (distance b1 b2) 400)
		(= (distance b2 a0) 894)
		(= (distance b2 a1) 565)
		(= (distance b2 a2) 400)
		(= (distance b2 b0) 800)
		(= (distance b2 b1) 400)
		(= (distance b2 b2) 0)
		(= (distance a0 z6) 1096)	; here are all the distances between the waypoints and the base and tool locations
		(= (distance z6 a0) 1096)
		(= (distance a0 z0) 1347)
		(= (distance z0 a0) 1347)
		(= (distance a0 z1) 1417)
		(= (distance z1 a0) 1417)
		(= (distance a1 z6) 1312)
		(= (distance z6 a1) 1312)
		(= (distance a1 z0) 1116)
		(= (distance z0 a1) 1116)
		(= (distance a1 z1) 1166)
		(= (distance z1 a1) 1166)
		(= (distance a2 z6) 1600)
		(= (distance z6 a2) 1600)
		(= (distance a2 z0) 998)
		(= (distance z0 a2) 998)
		(= (distance a2 z1) 1014)
		(= (distance z1 a2) 1014)
		(= (distance b0 z6) 1470)
		(= (distance z6 b0) 1470)
		(= (distance b0 z0) 1664)
		(= (distance z0 b0) 1664)
		(= (distance b0 z1) 1721)
		(= (distance z1 b0) 1721)
		(= (distance b1 z6) 1637)
		(= (distance z6 b1) 1637)
		(= (distance b1 z0) 1483)
		(= (distance z0 b1) 1483)
		(= (distance b1 z1) 1521)
		(= (distance z1 b1) 1521)
		(= (distance b2 z6) 1876)
		(= (distance z6 b2) 1876)
		(= (distance b2 z0) 1396)
		(= (distance z0 b2) 1396)
		(= (distance b2 z1) 1408)
		(= (distance z1 b2) 1408)
	)


	(:goal 
		(and (forall (?wp - waypoint) (achieved takedataafter ?wp))
		     (at farmbot z6)
		     (bare farmbot)
		)
	)
	
	(:metric minimize (energycons))
)
