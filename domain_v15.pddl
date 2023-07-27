;; assumption: all the waypoints are assumed to contain a plant.

(define
	(domain farmbot)
	(:requirements :typing :strips)
	(:types
		location		; either a waypoint, the base or a toolslot
		waypoint - location	; several waypoints, each waypoint has a plant
		robot			; the farmbot
	)

	(:predicates
		(at ?r - robot ?l - location)			; robot ?r is at location ?l
		(carrysoilsensor ?r - robot)			; robot ?r is carrying the soilsensor
		(carrywaternozzle ?r - robot)			; robot ?r is carrying the watering nozzle
		(bare ?r - robot)				; robot ?r is not carrying any tool
		(takendatabefore ?r - robot ?wp - waypoint)
		(takendataafter ?r - robot ?wp - waypoint)
		(soilwatered ?r - robot ?wp - waypoint)
	)

	(:functions
		(distance ?l1 ?l2 - location) - number		
		(total-cost)
	)


	;; there are 8 operators in this domain:

	;; move robot between two locations, increase consumed energy
	(:action move
		:parameters (?r - robot ?from ?to - location)
		:precondition (at ?r ?from)
		:effect (and (not (at ?r ?from))
			     (at ?r ?to)
			     (increase (total-cost) (distance ?from ?to))
			)
	)


	;; mount the soilsensor at the specific location z0, increase consumed energy
	(:action mountsoilsensor
		:parameters (?r - robot)
		:precondition (and (at ?r z0)
				   (bare ?r)
			      )
		:effect (and (not (bare ?r))
			     (increase (total-cost) 1000)
			     (carrysoilsensor ?r)
			)
	)

	
	;; dismount the soilsensor at the specific location z0, increase consumed energy
	(:action dismountsoilsensor
		:parameters (?r - robot)
		:precondition (and (at ?r z0)
				   (carrysoilsensor ?r)
			      )
		:effect (and (bare ?r)
			     (not (carrysoilsensor ?r))
			     (increase (total-cost) 1000)
			)		
	)
	
	
	;; mount the watering nozzle at the specific location z1, increase consumed energy
	(:action mountwaternozzle
		:parameters (?r - robot)
		:precondition (and (at ?r z1)
				   (bare ?r)
			      )
		:effect (and (not (bare ?r))
			     (increase (total-cost) 1000)
			     (carrywaternozzle ?r)
			)
	)

	
	;; dismount the watering nozzle at the specific location z1, increase consumed energy
	(:action dismountwaternozzle
		:parameters (?r - robot)
		:precondition (and (at ?r z1)
				   (carrywaternozzle ?r)
			      )
		:effect (and (bare ?r)
			     (not (carrywaternozzle ?r))
			     (increase (total-cost) 1000)
			)		
	)


	;; perform action takedatabefore at waypoint ?wp by robot ?r
	(:action takedatabefore
		:parameters (?r - robot ?wp - waypoint)
		:precondition (and (at ?r ?wp)
				   (carrysoilsensor ?r)
			      )
		:effect (and (takendatabefore ?r ?wp)
			     (increase (total-cost) 500)
			)		
	)
	

	;; perform action watersoil at waypoint ?wp by robot ?r
	(:action watersoil
		:parameters (?r - robot ?wp - waypoint)
		:precondition (and (at ?r ?wp)
				   (carrywaternozzle ?r)
				   (takendatabefore ?r ?wp)
			      )
		:effect (and (soilwatered ?r ?wp)
			     (increase (total-cost) 500)
			)		
	)
	

	;; perform action takedataafter at waypoint ?wp by robot ?r
	(:action takedataafter
		:parameters (?r - robot ?wp - waypoint)
		:precondition (and (at ?r ?wp)
				   (carrysoilsensor ?r)
				   (soilwatered ?r ?wp)
			      )
		:effect (and (takendataafter ?r ?wp)
			     (increase (total-cost) 500)
			)		
	)
	

)
