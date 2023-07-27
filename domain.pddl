;; assumption: all the waypoints are assumed to contain a plant.

(define
	(domain farmbot)
	(:types
		tool			; used by the robot to achieve a task
		location		; either a waypoint, the base or a toolslot
		waypoint - location	; several waypoints, each waypoint has a plant
		robot			; the farmbot
		task			; activity to be achieved in the various waypoints
	)

	(:predicates
		(at ?r - robot ?wp - location)			; robot ?r is at location ?wp
		(carry ?r - robot ?i - tool)			; robot ?r is carrying tool ?i
		(bare ?r - robot)				; robot ?r is not carrying any tool
		(achieved ?t - task ?wp - waypoint)		; task ?t has been achieved in waypoint ?wp
		(adapted ?i - tool ?t - task)			; tool ?i can be used for task ?t
		(available ?i - tool ?wp - location)		; tool ?i is available at its toolslot in location ?wp
		(require ?t ?tbefore - task)			; task ?t requires that task ?tbefore has been achieved on the same waypoint
		(independent ?t - task)				; task ?t can be performed any time
	)

	(:functions
		(distance ?l1 ?l2 - location) - number		; a move increases the consumed energy by the corresponding distance
		(energycons) - number				; energy consumption: starts from zero, keeps increasing for every performed task
		(taskcost ?t - task) - number			; energy consumed for each task: collect soil data; irrigate, ...
	)


	;; there are 4 operators in this domain:

	;; move robot between two locations, increase consumed energy
	(:action move
		:parameters (?r - robot ?from ?to - location)
		:precondition (at ?r ?from)
		:effect (and (not (at ?r ?from))
			     (at ?r ?to)
			     (increase (energycons) (distance ?from ?to))
			)
	)


	;; mount a tool at the specific tool location, increase consumed energy
	(:action mount
		:parameters (?r - robot ?i - tool ?l - location)
		:precondition (and (at ?r ?l)
				   (available ?i ?l)
				   (bare ?r)
			      )
		:effect (and (not (available ?i ?l))
			     (not (bare ?r))
			     (increase (energycons) 0)
			     (carry ?r ?i)
			)
	)

	
	;; dismount a tool at the specific tool location, increase consumed energy
	(:action dismount 
		:parameters (?r - robot ?i - tool ?l - location)
		:precondition (and (at ?r ?l)
				   (not (available ?i ?l))
				   (carry ?r ?i)
			      )
		:effect (and (available ?i ?l)
			     (bare ?r)
			     (not (carry ?r ?i))
			     (increase (energycons) 0)
			)		
	)


	;; perform task ?t1 at waypoint ?wp by robot ?r with instrument ?i, and task ?t2 is required OR task ?t1 is independent
	(:action perform
		:parameters (?r - robot ?i - tool ?wp - waypoint ?t1 ?t2 - task)
		:precondition (and (at ?r ?wp)
				   (carry ?r ?i)
				   (adapted ?i ?t1)
				   (or (independent ?t1)
				       (and (require ?t1 ?t2)
				            (achieved ?t2 ?wp)
				       )
				   )
			      )
		:effect (and (achieved ?t1 ?wp)
			     (increase (energycons) (taskcost ?t1))
			)		
	)

)