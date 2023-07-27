import math


#important: each point will only have coordinates x,y and not z
#because we assume that the "move" command consists only in the horizontal movement 
#without any vertical movement. The vertical movement will be taken into account
#by the cost of different tasks
#for i in range(5):
	#print(chr(ord('a')+i))

with open('distances.txt', 'w') as f:
	coordinates={
		'a': [['1000','450'],['1000','850'],['1000','1250']],
		'b': [['1400','450'],['1400','850'],['1400','1250']],
		'c': [['1800','450'],['1800','850'],['1800','1250']]
		#'d': [['2200','450'],['2200','850'],['2200','1250']]
		#'e': [['2600','450'],['2600','850'],['2600','1250']],
		#'f': [['3000','450'],['3000','850'],['3000','1250']],
		#'g': [['3400','450'],['3400','850'],['3400','1250']]
		#'h': [['3800','450'],['3800','850'],['3800','1250']]
		#'i': [['4200','450'],['4200','850'],['4200','1250']]
		#'j': [['4600','450'],['4600','850'],['4600','1250']]
		#'k': [['5000','450'],['5000','850'],['5000','1250']]
	}
	for i in range(3):
		for j in range(3):
			#print(coordinates[chr(ord('a')+i)][j][0] + ', ' +coordinates[chr(ord('a')+i)][j][1])
			for k in range(3):
				for l in range(3):
					distance_x=int(coordinates[chr(ord('a')+i)][j][0]) - int(coordinates[chr(ord('a')+k)][l][0])
					distance_y=int(coordinates[chr(ord('a')+i)][j][1]) - int(coordinates[chr(ord('a')+k)][l][1])
					eucled_dist=int(math.sqrt(math.pow(distance_x,2)+math.pow(distance_y,2)))
					#print(eucled_dist)
					#print(chr(ord('a')+i))
					tmp_line = "DISTANCE(" + str(chr(ord('a')+i)) + str(j) + ", " + str(chr(ord('a')+k)) + str(l) + ") = " + str(eucled_dist) + ";" + "\n"
					f.write(tmp_line)
					#print("distance x: ",distance_x)
					#print("\n")
					#print("distance y: ",distance_y)
					#print("\n")
								
			
		#tmp_line = coordinates[chr(ord('a')+i)][0][0] +"\n"
		#f.write(tmp_line)
	f.close()

with open('distances_z6_z0_z1.txt', 'w') as f:
	coordinates={
		'a': [['1000','450'],['1000','850'],['1000','1250']],
		'b': [['1400','450'],['1400','850'],['1400','1250']],
		'c': [['1800','450'],['1800','850'],['1800','1250']]
		#'d': [['2200','450'],['2200','850'],['2200','1250']]
		#'e': [['2600','450'],['2600','850'],['2600','1250']]
		#'f': [['3000','450'],['3000','850'],['3000','1250']],
		#'g': [['3400','450'],['3400','850'],['3400','1250']]
		#'h': [['3800','450'],['3800','850'],['3800','1250']]
		#'i': [['4200','450'],['4200','850'],['4200','1250']]
		#'j': [['4600','450'],['4600','850'],['4600','1250']]
		#'k': [['5000','450'],['5000','850'],['5000','1250']]
	}
	for i in range(3):
		for j in range(3):
			
			#calculating distances bewteen the waypoints and the base (z6)
			distance_x_z6=int(coordinates[chr(ord('a')+i)][j][0])
			distance_y_z6=int(coordinates[chr(ord('a')+i)][j][1])
			eucled_dist=int(math.sqrt(math.pow(distance_x_z6,2)+math.pow(distance_y_z6,2)))
			tmp_line = "DISTANCE(" + str(chr(ord('a')+i)) + str(j) + ", z6) = " + str(eucled_dist) + ";" + "\n"
			f.write(tmp_line)
			tmp_line = "DISTANCE(z6, " + str(chr(ord('a')+i)) + str(j) + ") = " + str(eucled_dist) + ";" + "\n"
			f.write(tmp_line)
			
			#calculating distances bewteen the waypoints and the location of the soilsensor (z0)
			distance_x_z0=int(coordinates[chr(ord('a')+i)][j][0]) - 7.6
			distance_y_z0=int(coordinates[chr(ord('a')+i)][j][1]) - 1361.6
			eucled_dist=int(math.sqrt(math.pow(distance_x_z0,2)+math.pow(distance_y_z0,2)))
			tmp_line = "DISTANCE(" + str(chr(ord('a')+i)) + str(j) + ", z0) = " + str(eucled_dist) + ";" + "\n"
			f.write(tmp_line)
			tmp_line = "DISTANCE(z0, " + str(chr(ord('a')+i)) + str(j) + ") = " + str(eucled_dist) + ";" + "\n"
			f.write(tmp_line)
			
			#calculating distances bewteen the waypoints and the location of the waternozzle (z1)
			distance_x_z1=int(coordinates[chr(ord('a')+i)][j][0]) - 7.6
			distance_y_z1=int(coordinates[chr(ord('a')+i)][j][1]) - 1462.6
			eucled_dist=int(math.sqrt(math.pow(distance_x_z1,2)+math.pow(distance_y_z1,2)))
			tmp_line = "DISTANCE(" + str(chr(ord('a')+i)) + str(j) + ", z1) = " + str(eucled_dist) + ";" + "\n"
			f.write(tmp_line)
			tmp_line = "DISTANCE(z1, " + str(chr(ord('a')+i)) + str(j) + ") = " + str(eucled_dist) + ";" + "\n"
			f.write(tmp_line)
	f.close()

with open('distances_relative_z6_z0_z1.txt', 'w') as f:
	list_z = [[7.6, 1361.6],[7.6,1462.6],[0,0]] #index 0 is z0, index 1 is z1, index 2 is z6
	print(list_z)
	
	for i in range(3):
		for j in range(3):
			eucl_dist = int(math.sqrt(math.pow((list_z[i][0] - list_z[j][0]),2) + math.pow((list_z[i][1] - list_z[j][1]),2)))
			tmp_line = "DISTANCE(z" + str(i) + ", z" + str(j) + ") = " + str(eucl_dist) + "\n"
			f.write(tmp_line)
			tmp_line = "DISTANCE(z" + str(j) + ", z" + str(i) + ") = " + str(eucl_dist) + "\n"
			f.write(tmp_line)
	f.close()
