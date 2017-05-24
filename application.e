note
	description: "[
		Summary description for {APPLICATION}.
		This class is the layout of the game, i.e. It assembles different classes and their features 
		to produce a proper story of the game it uses model and view class through the controller class
		to display introductions, instructions and choices for the player and send out challenges
		at appropriate times in the game.
		]"
	author: "[
		Mohammad Hossein Zarifi (Student no:213320437 )
		Rachel Chang (Student no: 213530266)
		Azade Farokhshahi (Student no: 213421706)
		]"
	date: "Aug 3, 2016"
	revision: "$Revision$"

class
	APPLICATION

create {APPLICATION_ACCESSOR}
	make

feature --Attributes
	c:DUNGEON_CONTROLLER

feature -- Initialization

	make
			-- Run application.
		do
			--| Add your code here

			create c.make
			current.run -- executing the game

		end

feature -- Run the Application

	run
		--this routine will execute the game
	local
		rand, open, guac:INTEGER
	do
		print ("Welcome to the Dunegon game!%N")
		--print(c.test)
		--print(c.inventory.array_at (1))
		--io.read_integer
		c.class_choose
		c.statread
		c.v.app_welcome(c.m.classstring)
		if io.last_integer = 0 or io.last_integer = 1 then
			c.m.set_accept (io.last_integer)
		else
			from			--made change

			until
				io.last_integer = 0 or io.last_integer = 1
			loop
				c.v.invalid
				io.read_integer
			end
			c.m.set_accept (io.last_integer)
		end


		if c.m.accept = 0 then
			c.v.app_accept_zero(c.m.classstring)
			c.m.set_name (io.last_string)
			c.v.app_greate_name(c.m.name)
			c.purchase

			if c.m.purchaseno = 1 then
				--Set stats for computer
				c.m.set_firewall (c.m.firewall + 5)
				c.m.set_viruses (c.m.viruses + 3)
				c.m.set_code (c.m.code + 3)
				c.m.set_system (c.m.system + 50)

				--Inventory Update
				c.inventory.extend ("Supercomputer")
				c.inventory.extend ("Geek Help")
				c.inventory.extend ("Worm")
				c.inventory.extend ("Worm")
				c.inventory.extend ("Microcomputer")
				c.inventory.extend ("Elder Wand")
			else if c.m.purchaseno = 2 then
				c.inventory.extend ("PC")
				--stats for computer

				c.m.set_firewall (c.m.firewall + 4)
				c.m.set_viruses (c.m.viruses + 1)
				c.m.set_code (c.m.code + 2)
				c.m.set_system (c.m.system + 20)
				c.m.set_intelligence (c.m.intelligence + 1)

				c.inventory.extend ("Microcomputer")
				c.inventory.extend ("Microcomputer")
				c.inventory.extend ("Geek Help")
				c.inventory.extend ("Worm")
				c.inventory.extend ("Worm")
				c.inventory.extend ("Worm")
				c.inventory.extend ("Firewall")
				c.inventory.extend	("Invisibility Cloak")
			else if c.m.purchaseno = 3 then
				c.inventory.extend ("Embedded Computer")
				--Computer stats
				c.m.set_firewall (c.m.firewall + 3)
				c.m.set_viruses (c.m.viruses + 1)
				c.m.set_code (c.m.code + 1)
				c.m.set_system (c.m.system + 10)

				c.inventory.extend ("Microcomputer")
				c.inventory.extend ("Microcomputer")
				c.inventory.extend ("Microcomputer")
				c.inventory.extend ("Worm")
				c.inventory.extend ("Worm")
				c.inventory.extend ("Worm")
				c.inventory.extend ("Firewall")
				c.inventory.extend ("Geek Help")
				c.inventory.extend ("Geek Help")
				c.inventory.extend ("Resurrection Stone")

			else
				c.v.purchase_wrong_number
				c.inventory.extend ("Microcomputer")
				c.inventory.extend ("Geek Help")
				c.inventory.extend ("Elder Wand")

			end
			end
			end

			c.v.app_message_bitcoin
			c.m.set_cash (c.m.cash + 20)
			c.m.set_explored (false)
			c.m.set_room (1)

			from

			until
				c.m.system <= 0 or c.m.win >= 5
			loop
				if c.m.xp = c.m.level * 100 then
					c.v.app_boss_fight
					if c.dobattle ("Boss", (c.m.xp + 1)*10, (c.m.xp + 1), (c.m.xp + 1)) then
						c.v.app_beat_boss
						c.m.set_level(c.m.level + 1)
						c.m.set_firewall(c.m.firewall + c.m.level)
						c.m.set_viruses( c.m.viruses + c.m.level)
						c.m.set_code(c.m.code + c.m.level)
						c.m.set_system(c.m.system + c.m.level)
						c.m.set_intelligence(c.m.intelligence + c.m.level)
						c.m.set_xp(0)
						c.statread
					end
				else
					c.main_opt
				--	c.test
				--	m.set_mainoption (5)
				--	io.read_integer
				--	m.set_mainoption (io.last_integer)
				--	print("this is the test")
				--	print(m.get_mainoption)
				--	print(m.get_mainoption = 1)
					if c.m.get_mainoption = 1 then
					--	print(not c.m.explored)
						if not c.m.explored then
							c.m.set_explored (true)
							rand := c.random.item \\ 100
							c.v.app_explore_room
							print(rand)
							print("%N")
							if rand >= 0 and rand <= 10 then
								c.v.app_ask_computer_open
								if io.last_integer = 1 or io.last_integer = 2 then		--made change
									open := io.last_integer
								else
									from

									until
										io.last_integer = 1 or io.last_integer = 2
									loop
										c.v.invalid
										io.read_integer
									end
								end


								if open = 1 then
									if c.random.item \\ 100 >= 50 then
										c.v.app_malware_infection
										c.m.set_system (0)
									else
										c.v.app_found_1000_bitcoin
										c.m.set_cash (c.m.cash + 1000)
									end

								end
							else if rand > 10 and rand <= 60 then
								c.v.app_enemy_coder
								if c.dobattle ("Hacker", (c.m.level+2)*5, (c.m.level+2)*2, (c.m.level+2)*2) then
									c.v.app_won
									c.m.set_win (c.m.win + 1)
									c.m.set_system (c.m.system + 20)
									c.v.app_win_enemy

								end
							else if rand = 99 then
								c.v.app_ask_bowl_investigate
								guac := io.last_integer
								if guac = 1 then
									c.v.app_quac_key
									c.m.set_system (c.m.system + 100)
									c.inventory.extend("Key")
								else
									c.v.app_not_quac
								end
							else if rand > 95 then
								c.v.app_encounter_mini_boss
								if c.dobattle ("CEO Hacker", (c.m.level+2)*5, (c.m.level+2)*2, (c.m.level+2)*2) then
									c.v.app_beat_mini_boss
									c.m.set_win (5)
								end
							else
								c.v.app_find_nothing

							end

							end

							end


							end
						else
							c.v.app_saw_before

						end
					else if c.m.mainoption = 2 then
						c.merchant
					else if c.m.mainoption = 3 then
						c.invenread
					else if c.m.mainoption = 4 then
						c.statread
					else if c.m.mainoption = 5 then
						c.m.set_explored (false)
						c.m.set_room (c.m.room + 1)
					else if c.m.mainoption = 6 then
						c.m.set_selectitem (c.invenask - 1)

					if  c.inventory.array_at (c.m.selectItem).is_equal ("Embedded Computer") then
						c.m.set_system (c.m.system + 15)
						c.inventory.go_i_th (c.m.selectItem + 1)
						c.inventory.remove
						c.v.dobattle_system_improved_10
					else if  c.inventory.array_at (c.m.selectItem).is_equal ("PC") then
						c.m.set_system (c.m.system + 15)
						c.inventory.go_i_th (c.m.selectItem + 1)
						c.inventory.remove
						c.v.dobattle_system_improved_15
					else if c.inventory.array_at (c.m.selectItem).is_equal ("Supercomputer") then
						c.m.set_system (c.m.system + 20)
						c.inventory.go_i_th (c.m.selectItem + 1)
						c.v.dobattle_system_improved_20
					else if c.inventory.array_item (c.m.selectItem).is_equal("Microcomputer") then
						c.m.set_system (c.m.system + 5)
						c.inventory.go_i_th (c.m.selectItem + 1)
						c.inventory.remove
						c.v.dobattle_system_improved_5
					else if c.inventory.array_item (c.m.selectItem).is_equal("Geek Help") then
						c.m.set_system (c.m.system + 10)
						c.inventory.go_i_th (c.m.selectItem + 1)
						c.inventory.remove
						c.v.dobattle_system_improved_10
					else if c.inventory.array_item (c.m.selectItem).is_equal("Firewall") then
							c.m.set_firewall (c.m.firewall + 5)
							c.inventory.go_i_th (c.m.selectItem + 1)
							c.inventory.remove
							c.v.dobattle_firewall_improved
					else if c.inventory.array_item (c.m.selectItem).is_equal("Worm") then
							c.m.set_viruses (c.m.viruses + 3)
							c.inventory.go_i_th (c.m.selectItem + 1)
							c.inventory.remove
							c.v.dobattle_viruses_improved_3

						else if c.inventory.array_at (c.m.selectItem).is_equal ("Elder Wand") then
							c.v.dobattle_luck_item


						else if c.inventory.array_at (c.m.selectItem).is_equal ("Invisibility Cloak") then
							c.v.dobattle_luck_item

					else if c.inventory.array_at (c.m.selectItem).is_equal ("Resurrection Stone") then
							c.v.dobattle_luck_item

						else

										c.v.app_not_valid_item
							end
							end
							end
							end
							end
							end
							end
							end
							end

						end

					end

					end

					end

					end

					end

					end

				end


			end
			if c.m.win >= 5 then
				c.v.app_win
			else
			c.v.app_you_died
			end


		else
			c.v.app_village_slaughtered


		end



	end


end --APPLICATION
