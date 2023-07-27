(define
	(problem motionandpicture)
	(:domain farmbot)
	(:objects
		farmbot - robot
		z0 z1 z6 - location	; z6 is the base, z0 is the slot of the soil sensor, z1 is the slot of the watering nozzle
		a0 a1 a2 b0 b1 b2 c0 c1 c2 d0 d1 d2 - waypoint
	)

	(:init 
		(at farmbot z6)		;initial conditions of the robot and the tools
		(bare farmbot)
		(= (total-cost) 0)
		(= (distance a0 a0) 0)		;distance bewteen the different waypoints
		(= (distance a0 a1) 400)
		(= (distance a0 a2) 800)
		(= (distance a0 b0) 400)
		(= (distance a0 b1) 565)
		(= (distance a0 b2) 894)	
		(= (distance a0 c0) 800)
		(= (distance a0 c1) 894)
		(= (distance a0 c2) 1131)
		(= (distance a0 d0) 1200)
		(= (distance a0 d1) 1264)
		(= (distance a0 d2) 1442)
		(= (distance a1 a0) 400)
		(= (distance a1 a1) 0)
		(= (distance a1 a2) 400)
		(= (distance a1 b0) 565)
		(= (distance a1 b1) 400)
		(= (distance a1 b2) 565)
		(= (distance a1 c0) 894)
		(= (distance a1 c1) 800)
		(= (distance a1 c2) 894)
		(= (distance a1 d0) 1264)
		(= (distance a1 d1) 1200)
		(= (distance a1 d2) 1264)
		(= (distance a2 a0) 800)
		(= (distance a2 a1) 400)
		(= (distance a2 a2) 0)
		(= (distance a2 b0) 894)
		(= (distance a2 b1) 565)
		(= (distance a2 b2) 400)
		(= (distance a2 c0) 1131)
		(= (distance a2 c1) 894)
		(= (distance a2 c2) 800)
		(= (distance a2 d0) 1442)
		(= (distance a2 d1) 1264)
		(= (distance a2 d2) 1200)
		(= (distance b0 a0) 400)
		(= (distance b0 a1) 565)
		(= (distance b0 a2) 894)
		(= (distance b0 b0) 0)
		(= (distance b0 b1) 400)
		(= (distance b0 b2) 800)
		(= (distance b0 c0) 400)
		(= (distance b0 c1) 565)
		(= (distance b0 c2) 894)
		(= (distance b0 d0) 800)
		(= (distance b0 d1) 894)
		(= (distance b0 d2) 1131)
		(= (distance b1 a0) 565)
		(= (distance b1 a1) 400)
		(= (distance b1 a2) 565)
		(= (distance b1 b0) 400)
		(= (distance b1 b1) 0)
		(= (distance b1 b2) 400)
		(= (distance b1 c0) 565)
		(= (distance b1 c1) 400)
		(= (distance b1 c2) 565)
		(= (distance b1 d0) 894)
		(= (distance b1 d1) 800)
		(= (distance b1 d2) 894)
		(= (distance b2 a0) 894)
		(= (distance b2 a1) 565)
		(= (distance b2 a2) 400)
		(= (distance b2 b0) 800)
		(= (distance b2 b1) 400)
		(= (distance b2 b2) 0)
		(= (distance b2 c0) 894)
		(= (distance b2 c1) 565)
		(= (distance b2 c2) 400)
		(= (distance b2 d0) 1131)
		(= (distance b2 d1) 894)
		(= (distance b2 d2) 800)
		(= (distance c0 a0) 800)
		(= (distance c0 a1) 894)
		(= (distance c0 a2) 1131)
		(= (distance c0 b0) 400)
		(= (distance c0 b1) 565)
		(= (distance c0 b2) 894)
		(= (distance c0 c0) 0)
		(= (distance c0 c1) 400)
		(= (distance c0 c2) 800)
		(= (distance c0 d0) 400)
		(= (distance c0 d1) 565)
		(= (distance c0 d2) 894)
		(= (distance c1 a0) 894)
		(= (distance c1 a1) 800)
		(= (distance c1 a2) 894)
		(= (distance c1 b0) 565)
		(= (distance c1 b1) 400)
		(= (distance c1 b2) 565)
		(= (distance c1 c0) 400)
		(= (distance c1 c1) 0)
		(= (distance c1 c2) 400)
		(= (distance c1 d0) 565)
		(= (distance c1 d1) 400)
		(= (distance c1 d2) 565)
		(= (distance c2 a0) 1131)
		(= (distance c2 a1) 894)
		(= (distance c2 a2) 800)
		(= (distance c2 b0) 894)
		(= (distance c2 b1) 565)
		(= (distance c2 b2) 400)
		(= (distance c2 c0) 800)
		(= (distance c2 c1) 400)
		(= (distance c2 c2) 0)
		(= (distance c2 d0) 894)
		(= (distance c2 d1) 565)
		(= (distance c2 d2) 400)
		(= (distance d0 a0) 1200)
		(= (distance d0 a1) 1264)
		(= (distance d0 a2) 1442)
		(= (distance d0 b0) 800)
		(= (distance d0 b1) 894)
		(= (distance d0 b2) 1131)
		(= (distance d0 c0) 400)
		(= (distance d0 c1) 565)
		(= (distance d0 c2) 894)
		(= (distance d0 d0) 0)
		(= (distance d0 d1) 400)
		(= (distance d0 d2) 800)
		(= (distance d1 a0) 1264)
		(= (distance d1 a1) 1200)
		(= (distance d1 a2) 1264)
		(= (distance d1 b0) 894)
		(= (distance d1 b1) 800)
		(= (distance d1 b2) 894)
		(= (distance d1 c0) 565)
		(= (distance d1 c1) 400)
		(= (distance d1 c2) 565)
		(= (distance d1 d0) 400)
		(= (distance d1 d1) 0)
		(= (distance d1 d2) 400)
		(= (distance d2 a0) 1442)
		(= (distance d2 a1) 1264)
		(= (distance d2 a2) 1200)
		(= (distance d2 b0) 1131)
		(= (distance d2 b1) 894)
		(= (distance d2 b2) 800)
		(= (distance d2 c0) 894)
		(= (distance d2 c1) 565)
		(= (distance d2 c2) 400)
		(= (distance d2 d0) 800)
		(= (distance d2 d1) 400)
		(= (distance d2 d2) 0)
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
		(= (distance c0 z6) 1855)
		(= (distance z6 c0) 1855)
		(= (distance c0 z0) 2010)
		(= (distance z0 c0) 2010)
		(= (distance c0 z1) 2058)
		(= (distance z1 c0) 2058)
		(= (distance c1 z6) 1990)
		(= (distance z6 c1) 1990)
		(= (distance c1 z0) 1863)
		(= (distance z0 c1) 1863)
		(= (distance c1 z1) 1894)
		(= (distance z1 c1) 1894)
		(= (distance c2 z6) 2191)
		(= (distance z6 c2) 2191)
		(= (distance c2 z0) 1795)
		(= (distance z0 c2) 1795)
		(= (distance c2 z1) 1804)
		(= (distance z1 c2) 1804)
		(= (distance d0 z6) 2245)
		(= (distance z6 d0) 2245)
		(= (distance d0 z0) 2374)
		(= (distance z0 d0) 2374)
		(= (distance d0 z1) 2414)
		(= (distance z1 d0) 2414)
		(= (distance d1 z6) 2358)
		(= (distance z6 d1) 2358)
		(= (distance d1 z0) 2251)
		(= (distance z0 d1) 2251)
		(= (distance d1 z1) 2276)
		(= (distance z1 d1) 2276)
		(= (distance d2 z6) 2530)
		(= (distance z6 d2) 2530)
		(= (distance d2 z0) 2195)
		(= (distance z0 d2) 2195)
		(= (distance d2 z1) 2202)
		(= (distance z1 d2) 2202)
		(= (distance z0 z0) 0)		;here are the relative distances between the z points. They should be 9!
		(= (distance z0 z1) 101)
		(= (distance z1 z0) 101)
		(= (distance z0 z6) 1361)
		(= (distance z6 z0) 1361)
		(= (distance z1 z1) 0)
		(= (distance z1 z6) 1462)
		(= (distance z6 z1) 1462)
		(= (distance z6 z6) 0)
	)


	(:goal 
		(and (forall (?wp - waypoint) (takendataafter farmbot ?wp))
		     (at farmbot z6)
		     (bare farmbot)
		)
	)
	
	(:metric minimize (total-cost))
)
