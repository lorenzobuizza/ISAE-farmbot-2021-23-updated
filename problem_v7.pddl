(define
	(problem motionandpicture)
	(:domain farmbot)
	(:objects
		farmbot - robot
		z6 - location	; z6 is the base 
		b2 - waypoint
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
		(= (distance b2 b2) 0)
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
