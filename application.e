note
	description: "DUNGEON application root class"
	date: "$Date$"
	revision: "$Revision$"

class
	APPLICATION

inherit
	ANY

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.

		local
			accept, purchase, room, rand, open, guac, selectItem: INTEGER
			name: STRING
			explored: BOOLEAN

		do
			--| Add your code here
			print ("Welcome to the Dunegon game!%N")
			d.classchoose

			d.statread

			print("You are travelling on a long journey away from your home in the land of C.")
			print("In the distance you see a travler.%N")
			print("%N Villager: Greetings young")
			print(d.classstring)
			print(".I'm afraid that I have troubling news!")
			print(" My hometown of Macintosh has been terrorized by a near- by Code Dungeon.%N")
			print("Viruses leak out and murder our farmers. We may starve soon! It would be great if a ")
			print(d.classstring)
			print(" like you could help us!")

			print("%NVillager: So will you accept?? %N")
			print("<0> YES	<1> NO")
			io.read_integer
			accept := io.last_integer

			if accept=0 then
				print("Vllager: Thank you so much! What is your name great")
				print(d.classstring)
				print(" ?%N")
				io.read_line
				name := io.last_string

				print("%N")
				print(name)
				print(" That's a great name! Come to my village we will help equip you for you jouney!%N")
				print("%N The two of you travel to the village.")
				d.purchase

				if d.purchaseNo = 1 then
					d.inventory.extend ("Alienware 18")
					--Set stats for computer
					d.firewall := d.firewall + 5
					d.viruses := d.viruses + 3
					d.code := d.code + 3
					d.system := d.system + 50

					--Inventory Update
					d.inventory.extend ("Tech Support")
					d.inventory.extend ("Tech Support")
					d.inventory.extend ("USB")

				else
				if d.purchaseNo = 2 then
					d.inventory.extend ("Macbook Pro")
					--stats for computer
					d.firewall := d.firewall + 4
					d.viruses := d.viruses + 1
					d.code := d.code + 2
					d.system := d.system + 20
					d.intelligence := d.intelligence + 1

					d.inventory.extend ("USB")
					d.inventory.extend ("USB")
					d.inventory.extend ("USB")
					d.inventory.extend ("Tech Support")
					d.inventory.extend ("Tech Support")
					d.inventory.extend ("Tech Support")
					d.inventory.extend ("Trojan Virus")
					d.inventory.extend ("Trojan Virus")
					d.inventory.extend ("Trojan Virus")
					d.inventory.extend ("Anti-Virus")
					d.inventory.extend ("USB Mouse")

				else
				if d.purchaseNo = 3 then
					d.inventory.extend ("Jailbroken Chromebook")

					--Computer stats
					d.firewall := d.firewall + 3
					d.viruses := d.viruses + 1
					d.code := d.code + 1
					d.system := d.system + 10

					d.inventory.extend ("USB")
					d.inventory.extend ("USB")
					d.inventory.extend ("USB")
					d.inventory.extend ("USB")
					d.inventory.extend ("Trojan Virus")
					d.inventory.extend ("Trojan Virus")
					d.inventory.extend ("Trojan Virus")
					d.inventory.extend ("Anti-Virus")
					d.inventory.extend ("Anti-Virus")
					d.inventory.extend ("USB Mouse")
					d.inventory.extend ("Tech Support")
					d.inventory.extend ("Tech Support")
					d.inventory.extend ("Great IDE")

				else
					d.inventory.extend ("Moldy Sandwich")
					d.inventory.extend ("How to: Java Guide")
				end
				end
				end

				print("Villager: Here is the dungeon. But before you go take 200 BitCoins...")
				print("You might need them...%N")
				print("%N Wow! That guy scammed you! He only gave you 20 coins!%N")
				print("Villager: Oh! I forgot There is a boss who guards the door. Don't worry thuogh he's weak.")
				print(" I'd watch out for mini boss though...")

				d.cash := d.cash + 20
				explored := False
				room := 1

				from
					d.system := 0
				until
					d.system > 0
				loop
					if d.xp = d.level*100 then
						print("You are almost ready to level up... Boss FIGHT!!")
						if d.dobattle ("Boss", (d.xp + 1)*10, (d.xp + 1), (d.xp + 1)) then
							print("You beat a boss and level up!")
							d.set_level(d.level + 1)
							d.set_firewall(d.firewall + d.level)
							d.viruses := d.viruses + d.level
							d.set_code(d.code + d.level)
							d.set_system(d.system + d.level)
							d.set_intelligence(d.intelligence + d.level)
							d.set_xp(0)
							d.statread

						end
					else
						d.mainopt
						if d.mainoption = 1 then
							print(not explored)
							if not explored then
								explored := True
								rand := 0
								print("%N You explore the room. ")
								print(rand)
								if rand=0 then
									print("%N")
									print("You find a mysterious looking computer possibly filled with BitCoins. Open ?%N")
									print("<1> YES  <2> NO   ")
									io.read_integer
									open := io.last_integer

									if open=1 then
										if random_gent.item \\ 100 >= 50 then
											print("The chest was filled with malware that infects your system.")
											d.system := 0
										else
											print("You find a load of 1000 BITCOINS!!")
											d.cash := d.cash + 1000
										end

									end
								else
								if rand <= 50 then
									print("You encounter an enemy coder!")
									if d.dobattle ("Hacker", (d.level+2)*10, (d.level+2)*2, (d.level+2)*2) then
										print("You won the battle!!")
									end
								else
								if rand=99 then
									print("You find a mysterious looking bowl of gucamole. Investigate ?%N")
									print("<1>YES  <2>NO   ")
									io.read_integer
									guac := io.last_integer

									if guac=1 then
										print("%N")
										print("You take a bite of the guac and find a key upon your chip!%N")
										print("Also you feel quite rejuvinated...")
										d.system := d.system + 100
										d.inventory.extend ("Key")
									else
										print("%N You stay away from the guac...%N")
										print(" You were always suspicous of avocadoes...")
									end
								else
								if rand > 85 then
									print("You encounter a Mini Boss!")
									if d.dobattle ("CEO Hacker", rand, rand, rand) then
										print("You beat a mini boss!")
									end
								else
									print("You find nothing.")
								end
								end
								end
								end
							else
								print("You already saw what was in this room.")

							end
						else
						if d.mainoption=2 then
							d.merchant
						else
						if d.mainoption=3 then
							d.invenread
						else
						if d.mainoption=4 then
							d.statread
						else
						if d.mainoption=5 then
							explored := False
							room := room + 1
						else
						if d.mainoption=6 then
							selectItem := d.invenask

							if d.inventory.array_item (selectItem).is_equal ("USB") then
								d.system := d.system + 15
								print("You used a USB and repaired your system by 15.")
								d.inventory.go_i_th (selectItem)
								d.inventory.remove
							else
								print("Not a valid item.")
							end
						end
						end
						end
						end
						end
						end
					end
				end

				else
					print("Villager: Oh... That's okay...%N")
					print("The whole village of Macintosh was later slaughtered...")
			end

		end


feature
	d: DUNGEON
	once
		create Result.make
	end


feature{NONE}
	random_gent: RANDOM
	local
		time:DATE_TIME
			do
			create time.make_now_utc
			create Result.set_seed (time.seconds * 1000 + time.time.milli_second)
			Result.start

		end

end
