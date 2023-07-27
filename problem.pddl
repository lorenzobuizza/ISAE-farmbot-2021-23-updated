(define
	(problem motionandpicture)
	(:domain farmbot)
	(:objects
		farmbot - robot
		z6 z0 z1 - location	; z6 is the base, z0 is the location of the soil sensor, z1 is the location of the watering nozzle
		a0 a1 a2 b0 b1 b2 c0 c1 c2 d0 d1 d2 e0 e1 e2 f0 f1 f2 g0 g1 g2 h0 h1 h2 i0 i1 i2 j0 j1 j2 k0 k1 k2 - waypoint
		soilsensor wateringnozzle - tool
		takedatabefore takedataafter irrigate - task
	)

	(:init 
		(at farmbot z6)		;initial conditions of the robot and the tools
		(bare farmbot)
		(adapted soilsensor takedatabefore)
		(adapted soilsensor takedataafter)
		(adapted wateringnozzle irrigate)
		(available soilsensor z0)
		(available wateringnozzle z1)
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
		(= (distance a0 c0) 800)
		(= (distance a0 c1) 894)
		(= (distance a0 c2) 1131)
		(= (distance a0 d0) 1200)
		(= (distance a0 d1) 1264)
		(= (distance a0 d2) 1442)
		(= (distance a0 e0) 1600)
		(= (distance a0 e1) 1649)
		(= (distance a0 e2) 1788)
		(= (distance a0 f0) 2000)
		(= (distance a0 f1) 2039)
		(= (distance a0 f2) 2154)
		(= (distance a0 g0) 2400)
		(= (distance a0 g1) 2433)
		(= (distance a0 g2) 2529)
		(= (distance a0 h0) 2800)
		(= (distance a0 h1) 2828)
		(= (distance a0 h2) 2912)
		(= (distance a0 i0) 3200)
		(= (distance a0 i1) 3224)
		(= (distance a0 i2) 3298)
		(= (distance a0 j0) 3600)
		(= (distance a0 j1) 3622)
		(= (distance a0 j2) 3687)
		(= (distance a0 k0) 4000)
		(= (distance a0 k1) 4019)
		(= (distance a0 k2) 4079)
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
		(= (distance a1 e0) 1649)
		(= (distance a1 e1) 1600)
		(= (distance a1 e2) 1649)
		(= (distance a1 f0) 2039)
		(= (distance a1 f1) 2000)
		(= (distance a1 f2) 2039)
		(= (distance a1 g0) 2433)
		(= (distance a1 g1) 2400)
		(= (distance a1 g2) 2433)
		(= (distance a1 h0) 2828)
		(= (distance a1 h1) 2800)
		(= (distance a1 h2) 2828)
		(= (distance a1 i0) 3224)
		(= (distance a1 i1) 3200)
		(= (distance a1 i2) 3224)
		(= (distance a1 j0) 3622)
		(= (distance a1 j1) 3600)
		(= (distance a1 j2) 3622)
		(= (distance a1 k0) 4019)
		(= (distance a1 k1) 4000)
		(= (distance a1 k2) 4019)
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
		(= (distance a2 e0) 1788)
		(= (distance a2 e1) 1649)
		(= (distance a2 e2) 1600)
		(= (distance a2 f0) 2154)
		(= (distance a2 f1) 2039)
		(= (distance a2 f2) 2000)
		(= (distance a2 g0) 2529)
		(= (distance a2 g1) 2433)
		(= (distance a2 g2) 2400)
		(= (distance a2 h0) 2912)
		(= (distance a2 h1) 2828)
		(= (distance a2 h2) 2800)
		(= (distance a2 i0) 3298)
		(= (distance a2 i1) 3224)
		(= (distance a2 i2) 3200)
		(= (distance a2 j0) 3687)
		(= (distance a2 j1) 3622)
		(= (distance a2 j2) 3600)
		(= (distance a2 k0) 4079)
		(= (distance a2 k1) 4019)
		(= (distance a2 k2) 4000)
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
		(= (distance b0 e0) 1200)
		(= (distance b0 e1) 1264)
		(= (distance b0 e2) 1442)
		(= (distance b0 f0) 1600)
		(= (distance b0 f1) 1649)
		(= (distance b0 f2) 1788)
		(= (distance b0 g0) 2000)
		(= (distance b0 g1) 2039)
		(= (distance b0 g2) 2154)
		(= (distance b0 h0) 2400)
		(= (distance b0 h1) 2433)
		(= (distance b0 h2) 2529)
		(= (distance b0 i0) 2800)
		(= (distance b0 i1) 2828)
		(= (distance b0 i2) 2912)
		(= (distance b0 j0) 3200)
		(= (distance b0 j1) 3224)
		(= (distance b0 j2) 3298)
		(= (distance b0 k0) 3600)
		(= (distance b0 k1) 3622)
		(= (distance b0 k2) 3687)
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
		(= (distance b1 e0) 1264)
		(= (distance b1 e1) 1200)
		(= (distance b1 e2) 1264)
		(= (distance b1 f0) 1649)
		(= (distance b1 f1) 1600)
		(= (distance b1 f2) 1649)
		(= (distance b1 g0) 2039)
		(= (distance b1 g1) 2000)
		(= (distance b1 g2) 2039)
		(= (distance b1 h0) 2433)
		(= (distance b1 h1) 2400)
		(= (distance b1 h2) 2433)
		(= (distance b1 i0) 2828)
		(= (distance b1 i1) 2800)
		(= (distance b1 i2) 2828)
		(= (distance b1 j0) 3224)
		(= (distance b1 j1) 3200)
		(= (distance b1 j2) 3224)
		(= (distance b1 k0) 3622)
		(= (distance b1 k1) 3600)
		(= (distance b1 k2) 3622)
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
		(= (distance b2 e0) 1442)
		(= (distance b2 e1) 1264)
		(= (distance b2 e2) 1200)
		(= (distance b2 f0) 1788)
		(= (distance b2 f1) 1649)
		(= (distance b2 f2) 1600)
		(= (distance b2 g0) 2154)
		(= (distance b2 g1) 2039)
		(= (distance b2 g2) 2000)
		(= (distance b2 h0) 2529)
		(= (distance b2 h1) 2433)
		(= (distance b2 h2) 2400)
		(= (distance b2 i0) 2912)
		(= (distance b2 i1) 2828)
		(= (distance b2 i2) 2800)
		(= (distance b2 j0) 3298)
		(= (distance b2 j1) 3224)
		(= (distance b2 j2) 3200)
		(= (distance b2 k0) 3687)
		(= (distance b2 k1) 3622)
		(= (distance b2 k2) 3600)
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
		(= (distance c0 e0) 800)
		(= (distance c0 e1) 894)
		(= (distance c0 e2) 1131)
		(= (distance c0 f0) 1200)
		(= (distance c0 f1) 1264)
		(= (distance c0 f2) 1442)
		(= (distance c0 g0) 1600)
		(= (distance c0 g1) 1649)
		(= (distance c0 g2) 1788)
		(= (distance c0 h0) 2000)
		(= (distance c0 h1) 2039)
		(= (distance c0 h2) 2154)
		(= (distance c0 i0) 2400)
		(= (distance c0 i1) 2433)
		(= (distance c0 i2) 2529)
		(= (distance c0 j0) 2800)
		(= (distance c0 j1) 2828)
		(= (distance c0 j2) 2912)
		(= (distance c0 k0) 3200)
		(= (distance c0 k1) 3224)
		(= (distance c0 k2) 3298)
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
		(= (distance c1 e0) 894)
		(= (distance c1 e1) 800)
		(= (distance c1 e2) 894)
		(= (distance c1 f0) 1264)
		(= (distance c1 f1) 1200)
		(= (distance c1 f2) 1264)
		(= (distance c1 g0) 1649)
		(= (distance c1 g1) 1600)
		(= (distance c1 g2) 1649)
		(= (distance c1 h0) 2039)
		(= (distance c1 h1) 2000)
		(= (distance c1 h2) 2039)
		(= (distance c1 i0) 2433)
		(= (distance c1 i1) 2400)
		(= (distance c1 i2) 2433)
		(= (distance c1 j0) 2828)
		(= (distance c1 j1) 2800)
		(= (distance c1 j2) 2828)
		(= (distance c1 k0) 3224)
		(= (distance c1 k1) 3200)
		(= (distance c1 k2) 3224)
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
		(= (distance c2 e0) 1131)
		(= (distance c2 e1) 894)
		(= (distance c2 e2) 800)
		(= (distance c2 f0) 1442)
		(= (distance c2 f1) 1264)
		(= (distance c2 f2) 1200)
		(= (distance c2 g0) 1788)
		(= (distance c2 g1) 1649)
		(= (distance c2 g2) 1600)
		(= (distance c2 h0) 2154)
		(= (distance c2 h1) 2039)
		(= (distance c2 h2) 2000)
		(= (distance c2 i0) 2529)
		(= (distance c2 i1) 2433)
		(= (distance c2 i2) 2400)
		(= (distance c2 j0) 2912)
		(= (distance c2 j1) 2828)
		(= (distance c2 j2) 2800)
		(= (distance c2 k0) 3298)
		(= (distance c2 k1) 3224)
		(= (distance c2 k2) 3200)
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
		(= (distance d0 e0) 400)
		(= (distance d0 e1) 565)
		(= (distance d0 e2) 894)
		(= (distance d0 f0) 800)
		(= (distance d0 f1) 894)
		(= (distance d0 f2) 1131)
		(= (distance d0 g0) 1200)
		(= (distance d0 g1) 1264)
		(= (distance d0 g2) 1442)
		(= (distance d0 h0) 1600)
		(= (distance d0 h1) 1649)
		(= (distance d0 h2) 1788)
		(= (distance d0 i0) 2000)
		(= (distance d0 i1) 2039)
		(= (distance d0 i2) 2154)
		(= (distance d0 j0) 2400)
		(= (distance d0 j1) 2433)
		(= (distance d0 j2) 2529)
		(= (distance d0 k0) 2800)
		(= (distance d0 k1) 2828)
		(= (distance d0 k2) 2912)
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
		(= (distance d1 e0) 565)
		(= (distance d1 e1) 400)
		(= (distance d1 e2) 565)
		(= (distance d1 f0) 894)
		(= (distance d1 f1) 800)
		(= (distance d1 f2) 894)
		(= (distance d1 g0) 1264)
		(= (distance d1 g1) 1200)
		(= (distance d1 g2) 1264)
		(= (distance d1 h0) 1649)
		(= (distance d1 h1) 1600)
		(= (distance d1 h2) 1649)
		(= (distance d1 i0) 2039)
		(= (distance d1 i1) 2000)
		(= (distance d1 i2) 2039)
		(= (distance d1 j0) 2433)
		(= (distance d1 j1) 2400)
		(= (distance d1 j2) 2433)
		(= (distance d1 k0) 2828)
		(= (distance d1 k1) 2800)
		(= (distance d1 k2) 2828)
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
		(= (distance d2 e0) 894)
		(= (distance d2 e1) 565)
		(= (distance d2 e2) 400)
		(= (distance d2 f0) 1131)
		(= (distance d2 f1) 894)
		(= (distance d2 f2) 800)
		(= (distance d2 g0) 1442)
		(= (distance d2 g1) 1264)
		(= (distance d2 g2) 1200)
		(= (distance d2 h0) 1788)
		(= (distance d2 h1) 1649)
		(= (distance d2 h2) 1600)
		(= (distance d2 i0) 2154)
		(= (distance d2 i1) 2039)
		(= (distance d2 i2) 2000)
		(= (distance d2 j0) 2529)
		(= (distance d2 j1) 2433)
		(= (distance d2 j2) 2400)
		(= (distance d2 k0) 2912)
		(= (distance d2 k1) 2828)
		(= (distance d2 k2) 2800)
		(= (distance e0 a0) 1600)
		(= (distance e0 a1) 1649)
		(= (distance e0 a2) 1788)
		(= (distance e0 b0) 1200)
		(= (distance e0 b1) 1264)
		(= (distance e0 b2) 1442)
		(= (distance e0 c0) 800)
		(= (distance e0 c1) 894)
		(= (distance e0 c2) 1131)
		(= (distance e0 d0) 400)
		(= (distance e0 d1) 565)
		(= (distance e0 d2) 894)
		(= (distance e0 e0) 0)
		(= (distance e0 e1) 400)
		(= (distance e0 e2) 800)
		(= (distance e0 f0) 400)
		(= (distance e0 f1) 565)
		(= (distance e0 f2) 894)
		(= (distance e0 g0) 800)
		(= (distance e0 g1) 894)
		(= (distance e0 g2) 1131)
		(= (distance e0 h0) 1200)
		(= (distance e0 h1) 1264)
		(= (distance e0 h2) 1442)
		(= (distance e0 i0) 1600)
		(= (distance e0 i1) 1649)
		(= (distance e0 i2) 1788)
		(= (distance e0 j0) 2000)
		(= (distance e0 j1) 2039)
		(= (distance e0 j2) 2154)
		(= (distance e0 k0) 2400)
		(= (distance e0 k1) 2433)
		(= (distance e0 k2) 2529)
		(= (distance e1 a0) 1649)
		(= (distance e1 a1) 1600)
		(= (distance e1 a2) 1649)
		(= (distance e1 b0) 1264)
		(= (distance e1 b1) 1200)
		(= (distance e1 b2) 1264)
		(= (distance e1 c0) 894)
		(= (distance e1 c1) 800)
		(= (distance e1 c2) 894)
		(= (distance e1 d0) 565)
		(= (distance e1 d1) 400)
		(= (distance e1 d2) 565)
		(= (distance e1 e0) 400)
		(= (distance e1 e1) 0)
		(= (distance e1 e2) 400)
		(= (distance e1 f0) 565)
		(= (distance e1 f1) 400)
		(= (distance e1 f2) 565)
		(= (distance e1 g0) 894)
		(= (distance e1 g1) 800)
		(= (distance e1 g2) 894)
		(= (distance e1 h0) 1264)
		(= (distance e1 h1) 1200)
		(= (distance e1 h2) 1264)
		(= (distance e1 i0) 1649)
		(= (distance e1 i1) 1600)
		(= (distance e1 i2) 1649)
		(= (distance e1 j0) 2039)
		(= (distance e1 j1) 2000)
		(= (distance e1 j2) 2039)
		(= (distance e1 k0) 2433)
		(= (distance e1 k1) 2400)
		(= (distance e1 k2) 2433)
		(= (distance e2 a0) 1788)
		(= (distance e2 a1) 1649)
		(= (distance e2 a2) 1600)
		(= (distance e2 b0) 1442)
		(= (distance e2 b1) 1264)
		(= (distance e2 b2) 1200)
		(= (distance e2 c0) 1131)
		(= (distance e2 c1) 894)
		(= (distance e2 c2) 800)
		(= (distance e2 d0) 894)
		(= (distance e2 d1) 565)
		(= (distance e2 d2) 400)
		(= (distance e2 e0) 800)
		(= (distance e2 e1) 400)
		(= (distance e2 e2) 0)
		(= (distance e2 f0) 894)
		(= (distance e2 f1) 565)
		(= (distance e2 f2) 400)
		(= (distance e2 g0) 1131)
		(= (distance e2 g1) 894)
		(= (distance e2 g2) 800)
		(= (distance e2 h0) 1442)
		(= (distance e2 h1) 1264)
		(= (distance e2 h2) 1200)
		(= (distance e2 i0) 1788)
		(= (distance e2 i1) 1649)
		(= (distance e2 i2) 1600)
		(= (distance e2 j0) 2154)
		(= (distance e2 j1) 2039)
		(= (distance e2 j2) 2000)
		(= (distance e2 k0) 2529)
		(= (distance e2 k1) 2433)
		(= (distance e2 k2) 2400)
		(= (distance f0 a0) 2000)
		(= (distance f0 a1) 2039)
		(= (distance f0 a2) 2154)
		(= (distance f0 b0) 1600)
		(= (distance f0 b1) 1649)
		(= (distance f0 b2) 1788)
		(= (distance f0 c0) 1200)
		(= (distance f0 c1) 1264)
		(= (distance f0 c2) 1442)
		(= (distance f0 d0) 800)
		(= (distance f0 d1) 894)
		(= (distance f0 d2) 1131)
		(= (distance f0 e0) 400)
		(= (distance f0 e1) 565)
		(= (distance f0 e2) 894)
		(= (distance f0 f0) 0)
		(= (distance f0 f1) 400)
		(= (distance f0 f2) 800)
		(= (distance f0 g0) 400)
		(= (distance f0 g1) 565)
		(= (distance f0 g2) 894)
		(= (distance f0 h0) 800)
		(= (distance f0 h1) 894)
		(= (distance f0 h2) 1131)
		(= (distance f0 i0) 1200)
		(= (distance f0 i1) 1264)
		(= (distance f0 i2) 1442)
		(= (distance f0 j0) 1600)
		(= (distance f0 j1) 1649)
		(= (distance f0 j2) 1788)
		(= (distance f0 k0) 2000)
		(= (distance f0 k1) 2039)
		(= (distance f0 k2) 2154)
		(= (distance f1 a0) 2039)
		(= (distance f1 a1) 2000)
		(= (distance f1 a2) 2039)
		(= (distance f1 b0) 1649)
		(= (distance f1 b1) 1600)
		(= (distance f1 b2) 1649)
		(= (distance f1 c0) 1264)
		(= (distance f1 c1) 1200)
		(= (distance f1 c2) 1264)
		(= (distance f1 d0) 894)
		(= (distance f1 d1) 800)
		(= (distance f1 d2) 894)
		(= (distance f1 e0) 565)
		(= (distance f1 e1) 400)
		(= (distance f1 e2) 565)
		(= (distance f1 f0) 400)
		(= (distance f1 f1) 0)
		(= (distance f1 f2) 400)
		(= (distance f1 g0) 565)
		(= (distance f1 g1) 400)
		(= (distance f1 g2) 565)
		(= (distance f1 h0) 894)
		(= (distance f1 h1) 800)
		(= (distance f1 h2) 894)
		(= (distance f1 i0) 1264)
		(= (distance f1 i1) 1200)
		(= (distance f1 i2) 1264)
		(= (distance f1 j0) 1649)
		(= (distance f1 j1) 1600)
		(= (distance f1 j2) 1649)
		(= (distance f1 k0) 2039)
		(= (distance f1 k1) 2000)
		(= (distance f1 k2) 2039)
		(= (distance f2 a0) 2154)
		(= (distance f2 a1) 2039)
		(= (distance f2 a2) 2000)
		(= (distance f2 b0) 1788)
		(= (distance f2 b1) 1649)
		(= (distance f2 b2) 1600)
		(= (distance f2 c0) 1442)
		(= (distance f2 c1) 1264)
		(= (distance f2 c2) 1200)
		(= (distance f2 d0) 1131)
		(= (distance f2 d1) 894)
		(= (distance f2 d2) 800)
		(= (distance f2 e0) 894)
		(= (distance f2 e1) 565)
		(= (distance f2 e2) 400)
		(= (distance f2 f0) 800)
		(= (distance f2 f1) 400)
		(= (distance f2 f2) 0)
		(= (distance f2 g0) 894)
		(= (distance f2 g1) 565)
		(= (distance f2 g2) 400)
		(= (distance f2 h0) 1131)
		(= (distance f2 h1) 894)
		(= (distance f2 h2) 800)
		(= (distance f2 i0) 1442)
		(= (distance f2 i1) 1264)
		(= (distance f2 i2) 1200)
		(= (distance f2 j0) 1788)
		(= (distance f2 j1) 1649)
		(= (distance f2 j2) 1600)
		(= (distance f2 k0) 2154)
		(= (distance f2 k1) 2039)
		(= (distance f2 k2) 2000)
		(= (distance g0 a0) 2400)
		(= (distance g0 a1) 2433)
		(= (distance g0 a2) 2529)
		(= (distance g0 b0) 2000)
		(= (distance g0 b1) 2039)
		(= (distance g0 b2) 2154)
		(= (distance g0 c0) 1600)
		(= (distance g0 c1) 1649)
		(= (distance g0 c2) 1788)
		(= (distance g0 d0) 1200)
		(= (distance g0 d1) 1264)
		(= (distance g0 d2) 1442)
		(= (distance g0 e0) 800)
		(= (distance g0 e1) 894)
		(= (distance g0 e2) 1131)
		(= (distance g0 f0) 400)
		(= (distance g0 f1) 565)
		(= (distance g0 f2) 894)
		(= (distance g0 g0) 0)
		(= (distance g0 g1) 400)
		(= (distance g0 g2) 800)
		(= (distance g0 h0) 400)
		(= (distance g0 h1) 565)
		(= (distance g0 h2) 894)
		(= (distance g0 i0) 800)
		(= (distance g0 i1) 894)
		(= (distance g0 i2) 1131)
		(= (distance g0 j0) 1200)
		(= (distance g0 j1) 1264)
		(= (distance g0 j2) 1442)
		(= (distance g0 k0) 1600)
		(= (distance g0 k1) 1649)
		(= (distance g0 k2) 1788)
		(= (distance g1 a0) 2433)
		(= (distance g1 a1) 2400)
		(= (distance g1 a2) 2433)
		(= (distance g1 b0) 2039)
		(= (distance g1 b1) 2000)
		(= (distance g1 b2) 2039)
		(= (distance g1 c0) 1649)
		(= (distance g1 c1) 1600)
		(= (distance g1 c2) 1649)
		(= (distance g1 d0) 1264)
		(= (distance g1 d1) 1200)
		(= (distance g1 d2) 1264)
		(= (distance g1 e0) 894)
		(= (distance g1 e1) 800)
		(= (distance g1 e2) 894)
		(= (distance g1 f0) 565)
		(= (distance g1 f1) 400)
		(= (distance g1 f2) 565)
		(= (distance g1 g0) 400)
		(= (distance g1 g1) 0)
		(= (distance g1 g2) 400)
		(= (distance g1 h0) 565)
		(= (distance g1 h1) 400)
		(= (distance g1 h2) 565)
		(= (distance g1 i0) 894)
		(= (distance g1 i1) 800)
		(= (distance g1 i2) 894)
		(= (distance g1 j0) 1264)
		(= (distance g1 j1) 1200)
		(= (distance g1 j2) 1264)
		(= (distance g1 k0) 1649)
		(= (distance g1 k1) 1600)
		(= (distance g1 k2) 1649)
		(= (distance g2 a0) 2529)
		(= (distance g2 a1) 2433)
		(= (distance g2 a2) 2400)
		(= (distance g2 b0) 2154)
		(= (distance g2 b1) 2039)
		(= (distance g2 b2) 2000)
		(= (distance g2 c0) 1788)
		(= (distance g2 c1) 1649)
		(= (distance g2 c2) 1600)
		(= (distance g2 d0) 1442)
		(= (distance g2 d1) 1264)
		(= (distance g2 d2) 1200)
		(= (distance g2 e0) 1131)
		(= (distance g2 e1) 894)
		(= (distance g2 e2) 800)
		(= (distance g2 f0) 894)
		(= (distance g2 f1) 565)
		(= (distance g2 f2) 400)
		(= (distance g2 g0) 800)
		(= (distance g2 g1) 400)
		(= (distance g2 g2) 0)
		(= (distance g2 h0) 894)
		(= (distance g2 h1) 565)
		(= (distance g2 h2) 400)
		(= (distance g2 i0) 1131)
		(= (distance g2 i1) 894)
		(= (distance g2 i2) 800)
		(= (distance g2 j0) 1442)
		(= (distance g2 j1) 1264)
		(= (distance g2 j2) 1200)
		(= (distance g2 k0) 1788)
		(= (distance g2 k1) 1649)
		(= (distance g2 k2) 1600)
		(= (distance h0 a0) 2800)
		(= (distance h0 a1) 2828)
		(= (distance h0 a2) 2912)
		(= (distance h0 b0) 2400)
		(= (distance h0 b1) 2433)
		(= (distance h0 b2) 2529)
		(= (distance h0 c0) 2000)
		(= (distance h0 c1) 2039)
		(= (distance h0 c2) 2154)
		(= (distance h0 d0) 1600)
		(= (distance h0 d1) 1649)
		(= (distance h0 d2) 1788)
		(= (distance h0 e0) 1200)
		(= (distance h0 e1) 1264)
		(= (distance h0 e2) 1442)
		(= (distance h0 f0) 800)
		(= (distance h0 f1) 894)
		(= (distance h0 f2) 1131)
		(= (distance h0 g0) 400)
		(= (distance h0 g1) 565)
		(= (distance h0 g2) 894)
		(= (distance h0 h0) 0)
		(= (distance h0 h1) 400)
		(= (distance h0 h2) 800)
		(= (distance h0 i0) 400)
		(= (distance h0 i1) 565)
		(= (distance h0 i2) 894)
		(= (distance h0 j0) 800)
		(= (distance h0 j1) 894)
		(= (distance h0 j2) 1131)
		(= (distance h0 k0) 1200)
		(= (distance h0 k1) 1264)
		(= (distance h0 k2) 1442)
		(= (distance h1 a0) 2828)
		(= (distance h1 a1) 2800)
		(= (distance h1 a2) 2828)
		(= (distance h1 b0) 2433)
		(= (distance h1 b1) 2400)
		(= (distance h1 b2) 2433)
		(= (distance h1 c0) 2039)
		(= (distance h1 c1) 2000)
		(= (distance h1 c2) 2039)
		(= (distance h1 d0) 1649)
		(= (distance h1 d1) 1600)
		(= (distance h1 d2) 1649)
		(= (distance h1 e0) 1264)
		(= (distance h1 e1) 1200)
		(= (distance h1 e2) 1264)
		(= (distance h1 f0) 894)
		(= (distance h1 f1) 800)
		(= (distance h1 f2) 894)
		(= (distance h1 g0) 565)
		(= (distance h1 g1) 400)
		(= (distance h1 g2) 565)
		(= (distance h1 h0) 400)
		(= (distance h1 h1) 0)
		(= (distance h1 h2) 400)
		(= (distance h1 i0) 565)
		(= (distance h1 i1) 400)
		(= (distance h1 i2) 565)
		(= (distance h1 j0) 894)
		(= (distance h1 j1) 800)
		(= (distance h1 j2) 894)
		(= (distance h1 k0) 1264)
		(= (distance h1 k1) 1200)
		(= (distance h1 k2) 1264)
		(= (distance h2 a0) 2912)
		(= (distance h2 a1) 2828)
		(= (distance h2 a2) 2800)
		(= (distance h2 b0) 2529)
		(= (distance h2 b1) 2433)
		(= (distance h2 b2) 2400)
		(= (distance h2 c0) 2154)
		(= (distance h2 c1) 2039)
		(= (distance h2 c2) 2000)
		(= (distance h2 d0) 1788)
		(= (distance h2 d1) 1649)
		(= (distance h2 d2) 1600)
		(= (distance h2 e0) 1442)
		(= (distance h2 e1) 1264)
		(= (distance h2 e2) 1200)
		(= (distance h2 f0) 1131)
		(= (distance h2 f1) 894)
		(= (distance h2 f2) 800)
		(= (distance h2 g0) 894)
		(= (distance h2 g1) 565)
		(= (distance h2 g2) 400)
		(= (distance h2 h0) 800)
		(= (distance h2 h1) 400)
		(= (distance h2 h2) 0)
		(= (distance h2 i0) 894)
		(= (distance h2 i1) 565)
		(= (distance h2 i2) 400)
		(= (distance h2 j0) 1131)
		(= (distance h2 j1) 894)
		(= (distance h2 j2) 800)
		(= (distance h2 k0) 1442)
		(= (distance h2 k1) 1264)
		(= (distance h2 k2) 1200)
		(= (distance i0 a0) 3200)
		(= (distance i0 a1) 3224)
		(= (distance i0 a2) 3298)
		(= (distance i0 b0) 2800)
		(= (distance i0 b1) 2828)
		(= (distance i0 b2) 2912)
		(= (distance i0 c0) 2400)
		(= (distance i0 c1) 2433)
		(= (distance i0 c2) 2529)
		(= (distance i0 d0) 2000)
		(= (distance i0 d1) 2039)
		(= (distance i0 d2) 2154)
		(= (distance i0 e0) 1600)
		(= (distance i0 e1) 1649)
		(= (distance i0 e2) 1788)
		(= (distance i0 f0) 1200)
		(= (distance i0 f1) 1264)
		(= (distance i0 f2) 1442)
		(= (distance i0 g0) 800)
		(= (distance i0 g1) 894)
		(= (distance i0 g2) 1131)
		(= (distance i0 h0) 400)
		(= (distance i0 h1) 565)
		(= (distance i0 h2) 894)
		(= (distance i0 i0) 0)
		(= (distance i0 i1) 400)
		(= (distance i0 i2) 800)
		(= (distance i0 j0) 400)
		(= (distance i0 j1) 565)
		(= (distance i0 j2) 894)
		(= (distance i0 k0) 800)
		(= (distance i0 k1) 894)
		(= (distance i0 k2) 1131)
		(= (distance i1 a0) 3224)
		(= (distance i1 a1) 3200)
		(= (distance i1 a2) 3224)
		(= (distance i1 b0) 2828)
		(= (distance i1 b1) 2800)
		(= (distance i1 b2) 2828)
		(= (distance i1 c0) 2433)
		(= (distance i1 c1) 2400)
		(= (distance i1 c2) 2433)
		(= (distance i1 d0) 2039)
		(= (distance i1 d1) 2000)
		(= (distance i1 d2) 2039)
		(= (distance i1 e0) 1649)
		(= (distance i1 e1) 1600)
		(= (distance i1 e2) 1649)
		(= (distance i1 f0) 1264)
		(= (distance i1 f1) 1200)
		(= (distance i1 f2) 1264)
		(= (distance i1 g0) 894)
		(= (distance i1 g1) 800)
		(= (distance i1 g2) 894)
		(= (distance i1 h0) 565)
		(= (distance i1 h1) 400)
		(= (distance i1 h2) 565)
		(= (distance i1 i0) 400)
		(= (distance i1 i1) 0)
		(= (distance i1 i2) 400)
		(= (distance i1 j0) 565)
		(= (distance i1 j1) 400)
		(= (distance i1 j2) 565)
		(= (distance i1 k0) 894)
		(= (distance i1 k1) 800)
		(= (distance i1 k2) 894)
		(= (distance i2 a0) 3298)
		(= (distance i2 a1) 3224)
		(= (distance i2 a2) 3200)
		(= (distance i2 b0) 2912)
		(= (distance i2 b1) 2828)
		(= (distance i2 b2) 2800)
		(= (distance i2 c0) 2529)
		(= (distance i2 c1) 2433)
		(= (distance i2 c2) 2400)
		(= (distance i2 d0) 2154)
		(= (distance i2 d1) 2039)
		(= (distance i2 d2) 2000)
		(= (distance i2 e0) 1788)
		(= (distance i2 e1) 1649)
		(= (distance i2 e2) 1600)
		(= (distance i2 f0) 1442)
		(= (distance i2 f1) 1264)
		(= (distance i2 f2) 1200)
		(= (distance i2 g0) 1131)
		(= (distance i2 g1) 894)
		(= (distance i2 g2) 800)
		(= (distance i2 h0) 894)
		(= (distance i2 h1) 565)
		(= (distance i2 h2) 400)
		(= (distance i2 i0) 800)
		(= (distance i2 i1) 400)
		(= (distance i2 i2) 0)
		(= (distance i2 j0) 894)
		(= (distance i2 j1) 565)
		(= (distance i2 j2) 400)
		(= (distance i2 k0) 1131)
		(= (distance i2 k1) 894)
		(= (distance i2 k2) 800)
		(= (distance j0 a0) 3600)
		(= (distance j0 a1) 3622)
		(= (distance j0 a2) 3687)
		(= (distance j0 b0) 3200)
		(= (distance j0 b1) 3224)
		(= (distance j0 b2) 3298)
		(= (distance j0 c0) 2800)
		(= (distance j0 c1) 2828)
		(= (distance j0 c2) 2912)
		(= (distance j0 d0) 2400)
		(= (distance j0 d1) 2433)
		(= (distance j0 d2) 2529)
		(= (distance j0 e0) 2000)
		(= (distance j0 e1) 2039)
		(= (distance j0 e2) 2154)
		(= (distance j0 f0) 1600)
		(= (distance j0 f1) 1649)
		(= (distance j0 f2) 1788)
		(= (distance j0 g0) 1200)
		(= (distance j0 g1) 1264)
		(= (distance j0 g2) 1442)
		(= (distance j0 h0) 800)
		(= (distance j0 h1) 894)
		(= (distance j0 h2) 1131)
		(= (distance j0 i0) 400)
		(= (distance j0 i1) 565)
		(= (distance j0 i2) 894)
		(= (distance j0 j0) 0)
		(= (distance j0 j1) 400)
		(= (distance j0 j2) 800)
		(= (distance j0 k0) 400)
		(= (distance j0 k1) 565)
		(= (distance j0 k2) 894)
		(= (distance j1 a0) 3622)
		(= (distance j1 a1) 3600)
		(= (distance j1 a2) 3622)
		(= (distance j1 b0) 3224)
		(= (distance j1 b1) 3200)
		(= (distance j1 b2) 3224)
		(= (distance j1 c0) 2828)
		(= (distance j1 c1) 2800)
		(= (distance j1 c2) 2828)
		(= (distance j1 d0) 2433)
		(= (distance j1 d1) 2400)
		(= (distance j1 d2) 2433)
		(= (distance j1 e0) 2039)
		(= (distance j1 e1) 2000)
		(= (distance j1 e2) 2039)
		(= (distance j1 f0) 1649)
		(= (distance j1 f1) 1600)
		(= (distance j1 f2) 1649)
		(= (distance j1 g0) 1264)
		(= (distance j1 g1) 1200)
		(= (distance j1 g2) 1264)
		(= (distance j1 h0) 894)
		(= (distance j1 h1) 800)
		(= (distance j1 h2) 894)
		(= (distance j1 i0) 565)
		(= (distance j1 i1) 400)
		(= (distance j1 i2) 565)
		(= (distance j1 j0) 400)
		(= (distance j1 j1) 0)
		(= (distance j1 j2) 400)
		(= (distance j1 k0) 565)
		(= (distance j1 k1) 400)
		(= (distance j1 k2) 565)
		(= (distance j2 a0) 3687)
		(= (distance j2 a1) 3622)
		(= (distance j2 a2) 3600)
		(= (distance j2 b0) 3298)
		(= (distance j2 b1) 3224)
		(= (distance j2 b2) 3200)
		(= (distance j2 c0) 2912)
		(= (distance j2 c1) 2828)
		(= (distance j2 c2) 2800)
		(= (distance j2 d0) 2529)
		(= (distance j2 d1) 2433)
		(= (distance j2 d2) 2400)
		(= (distance j2 e0) 2154)
		(= (distance j2 e1) 2039)
		(= (distance j2 e2) 2000)
		(= (distance j2 f0) 1788)
		(= (distance j2 f1) 1649)
		(= (distance j2 f2) 1600)
		(= (distance j2 g0) 1442)
		(= (distance j2 g1) 1264)
		(= (distance j2 g2) 1200)
		(= (distance j2 h0) 1131)
		(= (distance j2 h1) 894)
		(= (distance j2 h2) 800)
		(= (distance j2 i0) 894)
		(= (distance j2 i1) 565)
		(= (distance j2 i2) 400)
		(= (distance j2 j0) 800)
		(= (distance j2 j1) 400)
		(= (distance j2 j2) 0)
		(= (distance j2 k0) 894)
		(= (distance j2 k1) 565)
		(= (distance j2 k2) 400)
		(= (distance k0 a0) 4000)
		(= (distance k0 a1) 4019)
		(= (distance k0 a2) 4079)
		(= (distance k0 b0) 3600)
		(= (distance k0 b1) 3622)
		(= (distance k0 b2) 3687)
		(= (distance k0 c0) 3200)
		(= (distance k0 c1) 3224)
		(= (distance k0 c2) 3298)
		(= (distance k0 d0) 2800)
		(= (distance k0 d1) 2828)
		(= (distance k0 d2) 2912)
		(= (distance k0 e0) 2400)
		(= (distance k0 e1) 2433)
		(= (distance k0 e2) 2529)
		(= (distance k0 f0) 2000)
		(= (distance k0 f1) 2039)
		(= (distance k0 f2) 2154)
		(= (distance k0 g0) 1600)
		(= (distance k0 g1) 1649)
		(= (distance k0 g2) 1788)
		(= (distance k0 h0) 1200)
		(= (distance k0 h1) 1264)
		(= (distance k0 h2) 1442)
		(= (distance k0 i0) 800)
		(= (distance k0 i1) 894)
		(= (distance k0 i2) 1131)
		(= (distance k0 j0) 400)
		(= (distance k0 j1) 565)
		(= (distance k0 j2) 894)
		(= (distance k0 k0) 0)
		(= (distance k0 k1) 400)
		(= (distance k0 k2) 800)
		(= (distance k1 a0) 4019)
		(= (distance k1 a1) 4000)
		(= (distance k1 a2) 4019)
		(= (distance k1 b0) 3622)
		(= (distance k1 b1) 3600)
		(= (distance k1 b2) 3622)
		(= (distance k1 c0) 3224)
		(= (distance k1 c1) 3200)
		(= (distance k1 c2) 3224)
		(= (distance k1 d0) 2828)
		(= (distance k1 d1) 2800)
		(= (distance k1 d2) 2828)
		(= (distance k1 e0) 2433)
		(= (distance k1 e1) 2400)
		(= (distance k1 e2) 2433)
		(= (distance k1 f0) 2039)
		(= (distance k1 f1) 2000)
		(= (distance k1 f2) 2039)
		(= (distance k1 g0) 1649)
		(= (distance k1 g1) 1600)
		(= (distance k1 g2) 1649)
		(= (distance k1 h0) 1264)
		(= (distance k1 h1) 1200)
		(= (distance k1 h2) 1264)
		(= (distance k1 i0) 894)
		(= (distance k1 i1) 800)
		(= (distance k1 i2) 894)
		(= (distance k1 j0) 565)
		(= (distance k1 j1) 400)
		(= (distance k1 j2) 565)
		(= (distance k1 k0) 400)
		(= (distance k1 k1) 0)
		(= (distance k1 k2) 400)
		(= (distance k2 a0) 4079)
		(= (distance k2 a1) 4019)
		(= (distance k2 a2) 4000)
		(= (distance k2 b0) 3687)
		(= (distance k2 b1) 3622)
		(= (distance k2 b2) 3600)
		(= (distance k2 c0) 3298)
		(= (distance k2 c1) 3224)
		(= (distance k2 c2) 3200)
		(= (distance k2 d0) 2912)
		(= (distance k2 d1) 2828)
		(= (distance k2 d2) 2800)
		(= (distance k2 e0) 2529)
		(= (distance k2 e1) 2433)
		(= (distance k2 e2) 2400)
		(= (distance k2 f0) 2154)
		(= (distance k2 f1) 2039)
		(= (distance k2 f2) 2000)
		(= (distance k2 g0) 1788)
		(= (distance k2 g1) 1649)
		(= (distance k2 g2) 1600)
		(= (distance k2 h0) 1442)
		(= (distance k2 h1) 1264)
		(= (distance k2 h2) 1200)
		(= (distance k2 i0) 1131)
		(= (distance k2 i1) 894)
		(= (distance k2 i2) 800)
		(= (distance k2 j0) 894)
		(= (distance k2 j1) 565)
		(= (distance k2 j2) 400)
		(= (distance k2 k0) 800)
		(= (distance k2 k1) 400)
		(= (distance k2 k2) 0)
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
		(= (distance e0 z6) 2638)
		(= (distance z6 e0) 2638)
		(= (distance e0 z0) 2748)
		(= (distance z0 e0) 2748)
		(= (distance e0 z1) 2783)
		(= (distance z1 e0) 2783)
		(= (distance e1 z6) 2735)
		(= (distance z6 e1) 2735)
		(= (distance e1 z0) 2642)
		(= (distance z0 e1) 2642)
		(= (distance e1 z1) 2663)
		(= (distance z1 e1) 2663)
		(= (distance e2 z6) 2884)
		(= (distance z6 e2) 2884)
		(= (distance e2 z0) 2594)
		(= (distance z0 e2) 2594)
		(= (distance e2 z1) 2601)
		(= (distance z1 e2) 2601)
		(= (distance f0 z6) 3033)
		(= (distance z6 f0) 3033)
		(= (distance f0 z0) 3128)
		(= (distance z0 f0) 3128)
		(= (distance f0 z1) 3159)
		(= (distance z1 f0) 3159)
		(= (distance f1 z6) 3118)
		(= (distance z6 f1) 3118)
		(= (distance f1 z0) 3035)
		(= (distance z0 f1) 3035)
		(= (distance f1 z1) 3054)
		(= (distance z1 f1) 3054)
		(= (distance f2 z6) 3250)
		(= (distance z6 f2) 3250)
		(= (distance f2 z0) 2994)
		(= (distance z0 f2) 2994)
		(= (distance f2 z1) 2999)
		(= (distance z1 f2) 2999)
		(= (distance g0 z6) 3429)
		(= (distance z6 g0) 3429)
		(= (distance g0 z0) 3512)
		(= (distance z0 g0) 3512)
		(= (distance g0 z1) 3540)
		(= (distance z1 g0) 3540)
		(= (distance g1 z6) 3504)
		(= (distance z6 g1) 3504)
		(= (distance g1 z0) 3430)
		(= (distance z0 g1) 3430)
		(= (distance g1 z1) 3447)
		(= (distance z1 g1) 3447)
		(= (distance g2 z6) 3622)
		(= (distance z6 g2) 3622)
		(= (distance g2 z0) 3394)
		(= (distance z0 g2) 3394)
		(= (distance g2 z1) 3399)
		(= (distance z1 g2) 3399)
		(= (distance h0 z6) 3826)
		(= (distance z6 h0) 3826)
		(= (distance h0 z0) 3900)
		(= (distance z0 h0) 3900)
		(= (distance h0 z1) 3925)
		(= (distance z1 h0) 3925)
		(= (distance h1 z6) 3893)
		(= (distance z6 h1) 3893)
		(= (distance h1 z0) 3826)
		(= (distance z0 h1) 3826)
		(= (distance h1 z1) 3841)
		(= (distance z1 h1) 3841)
		(= (distance h2 z6) 4000)
		(= (distance z6 h2) 4000)
		(= (distance h2 z0) 3794)
		(= (distance z0 h2) 3794)
		(= (distance h2 z1) 3798)
		(= (distance z1 h2) 3798)
		(= (distance i0 z6) 4224)
		(= (distance z6 i0) 4224)
		(= (distance i0 z0) 4290)
		(= (distance z0 i0) 4290)
		(= (distance i0 z1) 4312)
		(= (distance z1 i0) 4312)
		(= (distance i1 z6) 4285)
		(= (distance z6 i1) 4285)
		(= (distance i1 z0) 4223)
		(= (distance z0 i1) 4223)
		(= (distance i1 z1) 4236)
		(= (distance z1 i1) 4236)
		(= (distance i2 z6) 4382)
		(= (distance z6 i2) 4382)
		(= (distance i2 z0) 4193)
		(= (distance z0 i2) 4193)
		(= (distance i2 z1) 4197)
		(= (distance z1 i2) 4197)
		(= (distance j0 z6) 4621)
		(= (distance z6 j0) 4621)
		(= (distance j0 z0) 4682)
		(= (distance z0 j0) 4682)
		(= (distance j0 z1) 4702)
		(= (distance z1 j0) 4702)
		(= (distance j1 z6) 4677)
		(= (distance z6 j1) 4677)
		(= (distance j1 z0) 4620)
		(= (distance z0 j1) 4620)
		(= (distance j1 z1) 4633)
		(= (distance z1 j1) 4633)
		(= (distance j2 z6) 4766)
		(= (distance z6 j2) 4766)
		(= (distance j2 z0) 4593)
		(= (distance z0 j2) 4593)
		(= (distance j2 z1) 4597)
		(= (distance z1 j2) 4597)
		(= (distance k0 z6) 5020)
		(= (distance z6 k0) 5020)
		(= (distance k0 z0) 5074)
		(= (distance z0 k0) 5074)
		(= (distance k0 z1) 5094)
		(= (distance z1 k0) 5094)
		(= (distance k1 z6) 5071)
		(= (distance z6 k1) 5071)
		(= (distance k1 z0) 5018)
		(= (distance z0 k1) 5018)
		(= (distance k1 z1) 5029)
		(= (distance z1 k1) 5029)
		(= (distance k2 z6) 5153)
		(= (distance z6 k2) 5153)
		(= (distance k2 z0) 4993)
		(= (distance z0 k2) 4993)
		(= (distance k2 z1) 4996)
		(= (distance z1 k2) 4996)
	)


	(:goal 
		(and (forall (?wp - waypoint) (achieved takedataafter ?wp))
		     (at farmbot z6)
		     (bare farmbot)
		)
	)
	
	(:metric minimize (energycons))
)
