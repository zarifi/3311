note
	description: "[
	Summary description for {DUNGEON_CONTROLLER}.
	This is a controller class, which means that this class is responsible to control
	the communication between the model and the view class.
	 ]"
	author: "[
		Mohammad Hossein Zarifi (Student no:213320437 )
		Rachel Chang (Student no: 213530266)
		Azade Farokhshahi (Student no: 213421706)
		]"
	date: "Aug 3, 2016"
	revision: "$Revision$"

class
	DUNGEON_CONTROLLER

create
	make


feature --Attributes

v: DUNGEON_VIEW
m: DUNGEON_MODEL
once
	create Result.make
end
iterator:ITERATOR_ON_ARRAYED_LIST[STRING]
inventory:ARRAYED_LIST[STRING]

feature --initialization of attributes
		make

			do
				create inventory.make (100)
				create iterator.make(inventory)
			end

feature --Operations

	purchase
	-- this feature calls the view function to display purchase options for the player to choose from
	-- and sets the player's input in the model class in an attribute- purchaseno
	-- which could be used accessing the model class for later use.

		do
			v.purchase_instruction
			m.set_purchaseno (io.last_integer_32)

			ensure --made change
				purchaseno_set_properly: m.get_purchaseno = io.last_integer

		end

	main_Opt
	-- this feature calls te view function- mainopt_instruction to display the various instructions
	-- a player could choose from. This feature also checks if the input is valid according to the instructions
	-- given to the player and saves the input in the model feature- mainOption for later use.

		do
			v.mainopt_instruction
			if io.last_integer > 0 and io.last_integer < 7 then  --made change
				m.set_mainoption (io.last_integer)
			else

				from

				until
					io.last_integer > 0 and io.last_integer < 7
				loop
					v.invalid
					io.read_integer
				end
				m.set_mainoption (io.last_integer)
			end

			ensure --made change
				mainopt_set_properly: m.get_mainoption = io.last_integer

		end

	class_Choose
	-- This feature calls the view function- class_instruction to display which identity a player
	-- would like to be recognized as and give the player appropriate skill set which would be useful
	-- in the game. This feature also saves the input and sets it
	-- in the model class which could be useful later in the program/game.
		do
			v.classchoose_instruction
			if io.last_integer > 0 and io.last_integer < 4 then --made change
				m.set_playerclass (io.last_integer)

				else
					from

					until
						io.last_integer >0 and io.last_integer < 4
					loop
						v.invalid
						io.read_integer
					end
					m.set_playerclass (io.last_integer)
			end


			if m.playerclass = 1 then
				m.set_classstring ("Hacker")
		    	m.set_firewall (1)
		    	m.set_viruses(4)
			    m.set_code (3)
			    m.set_system (20) --(random.item \\ 20) + 20
			    m.set_intelligence ((random.item \\ 2) + 1)
			else if m.playerclass = 2 then
				m.set_classstring("CEO")
				m.set_firewall (random.item \\ 2 + 1)
				m.set_viruses (random.item \\ 1 + 3)
				m.set_code (random.item \\ 1 + 2)
				m.set_system (30) --random.item \\ 20 + 30
				m.set_intelligence (random.item \\ 2 + 4)
			else if m.playerclass = 3 then
				m.set_classstring("coder")
				m.set_firewall (random.item \\ 1 + 3)
				m.set_viruses (random.item \\ 1 + 3)
				m.set_code (random.item \\ 1 + 4)
				m.set_system (20) --random.item \\ 20 + 20
				m.set_intelligence (random.item \\ 2 + 2)

			end

			end

			end

			ensure --made change
				playerclass_set_properly: m.get_playerclass = io.last_integer


		end

	merchant
	-- This feature calls the view function- merchant_instruction to display the various item the player can purchase
	-- and update the player's list of items (inventory) according to what the player has chosen to purchase; which the player could use later in the game.
	-- This feature also checks and saves the input.
		do
			v.merchant_instruction(m.get_cash)

			if io.last_integer > 0 and io.last_integer < 6  then --made change
				m.set_buy (io.last_integer)
				else
					from

					until
						io.last_integer > 0 and io.last_integer < 6
					loop
						v.merchant_not_exist
						v.invalid
						io.read_integer
					end
					m.set_buy (io.last_integer)
			end


			if m.get_buy = 1 then
				if m.get_cash >= 20 then
					inventory.extend ("Microcomputer")
					m.set_cash (m.cash - 10)
				else
					v.merchant_not_enoght_money
				end
			else if m.get_buy = 2 then
				if m.get_cash >= 35 then
					inventory.extend ("Geek Help")
					m.set_cash (m.cash - 35)
				else
					v.merchant_not_enoght_money
				end
			else if m.get_buy = 3 then
				if m.get_cash >= 30 then
					inventory.extend ("Worm")
					m.set_cash (m.cash - 30)
				else
					v.merchant_not_enoght_money

				end
			else if m.get_buy = 4 then
				if m.get_cash >= 15 then
					inventory.extend ("Firewall")
					m.set_cash (m.cash - 15)
				else
					v.merchant_not_enoght_money
				end

			end

			end

			end


			end
			ensure  --made change
				buy_set_properly: m.get_buy = io.last_integer

		end

	statRead
			--Display stats
		do
			v.statread_instruction(m.firewall,m.viruses,m.code,m.intelligence,m.system,m.level,m.xp)
		end

	invenAsk:INTEGER
			--Ask Inventory - Return Inventory item number
	local
		invenOption:INTEGER
		do

			from
				iterator.start
			until
				iterator.is_end
			loop

				v.invenask_instruction(iterator.item,iterator.index)
				iterator.next
			end
			v.invenask_input
			invenOption := io.last_integer
			if io.last_integer > 0 and io.last_integer <= inventory.upper then  --made change
				Result := io.last_integer
			else

				from

				until
					invenOption > 0 and invenOption <= inventory.upper
				loop
				--	print("this is a test")
					v.invalid
					io.read_integer
					invenOption := io.last_integer
				end

				Result := io.last_integer
			end

	end

	doBattle(name:STRING; sentHP:INTEGER; sentAttack:INTEGER; sentDefense:INTEGER): BOOLEAN
	-- This feature is all about how the enemy attacks the player, how the attack effects the player's status,
	-- and when the player attacks the enemy, this feature updates the enemy's status accordingly.
	-- This feature is called when the player encounter's an enemy.
	require			--made change
		valid_hp_arg: sentHP > 0
		valid_attack_arg: sentAttack >0
		valid_defense_arg: sentDefense > 0
	local
		enemyHP,enemyAttack,enemyDefense,virusAttack, action,virusesMade, selectItem: INTEGER
		do
			enemyHP := sentHP + m.level  + random.item \\ 1
			enemyAttack := sentAttack + m.level  + random.item \\ 1
			enemyDefense := sentDefense + m.level  + random.item \\ 1

			m.set_myDefense(m.firewall)
			virusesMade := 0
			virusAttack := 0

			from

			until
				m.system <= 0 or enemyHP <= 0			--if one of it becomes true exit loop
			loop
				v.dobattle_instruction(m.system,m.myDefense,enemyHP,enemyAttack,enemyDefense,virusesmade,virusAttack)
				action := io.last_integer

				if action  < 1 or action > 6 then
					action := 7
					v.dobattle_not_valid_no
				end

				if action = 1 then

					if virusesMade > 0 then
						if virusAttack - enemyDefense > 0 then
							enemyHP := enemyHP - virusAttack
							virusesMade := virusesMade - 1
						end
						else
							v.dobattle_need_virus
							action := 7



					end
				else if action = 2 then
						virusesMade := virusesMade + 1
						if virusAttack > 0 then
							virusAttack := m.viruses + m.code // 2
							virusAttack := virusAttack + 1
						else
							virusAttack := m.viruses + m.code // 2

				end
				v.dobattle_build_virus
				else if action = 3 then
					m.set_myDefense( m.myDefense + (m.code + m.firewall) // 2)
					v.dobattle_defense_improved
				else if action = 4 then
					m.set_system (m.system + m.intelligence // 2 + m.code // 2)
					v.dobattle_system_improved
				else if action = 5 then
					selectItem := invenAsk - 1

					if  inventory.array_at (selectItem).is_equal ("Embedded Computer") then
							m.set_system (m.system + 15)
							inventory.go_i_th (selectItem + 1)
							inventory.remove
							v.dobattle_system_improved_10
					else if  inventory.array_at (selectItem).is_equal ("PC") then
						m.set_system (m.system + 15)
						inventory.go_i_th (selectItem + 1)
						inventory.remove
						v.dobattle_system_improved_15
					else if inventory.array_at (selectItem).is_equal ("Supercomputer") then
						m.set_system (m.system + 20)
						inventory.go_i_th (selectItem + 1)
						inventory.remove
						v.dobattle_system_improved_20
					else if inventory.array_item (selectItem).is_equal("Microcomputer") then
						m.set_system (m.system + 5)
						inventory.go_i_th (selectItem + 1)
						inventory.remove
						v.dobattle_system_improved_5
					else if inventory.array_item (selectItem).is_equal("Geek Help") then
						enemyHP := 0
						m.set_system (m.system - 10)
						inventory.go_i_th (selectItem + 1)
						inventory.remove
						v.dobattle_geek_help
					else if inventory.array_item (selectItem).is_equal("Firewall") then
							m.set_mydefense (m.mydefense + 5)
							inventory.go_i_th (selectItem + 1)
							inventory.remove
							v.dobattle_firewall_improved
					else if inventory.array_item (selectItem).is_equal("Worm") then
							m.set_viruses(m.viruses + 3)
							inventory.go_i_th (selectItem + 1)
							inventory.remove
							v.dobattle_viruses_improved_3
					else if inventory.array_at (selectItem).is_equal ("Elder Wand") then
							v.dobattle_luck_item

					else if inventory.array_at (selectItem).is_equal ("Invisibility Cloak") then
							v.dobattle_luck_item

					else if inventory.array_at (selectItem).is_equal ("Resurrection Stone") then
							v.dobattle_luck_item

					else
						action := 7
						v.dobattle_not_valid_item
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
				else if action = 6 then
					statRead
				end

				end

				end

				end
				end

			end
			if (action /= 6 or action /= 7) then
				if (enemyAttack > m.myDefense) then
					m.set_system (m.system-(enemyAttack - m.myDefense))
					v.dobattle_enemy_attack(enemyAttack,m.myDefense)
				else
					m.set_system (m.system - enemyAttack)
					v.dobattle_enemy_attack(enemyAttack,m.myDefense)
				end


			end
			enemyAttack := enemyAttack + 1
		end
		if m.system <= 0 then
			Result := false
		else
			v.dobattle_num_cash(sentHP)
			m.set_cash (m.cash + sentHP // 2)
			m.set_xp (m.xp + sentHP)
			Result := true

		end


		end

	invenRead
	-- prints the list of items the player has in his inventory.
	do

	print("--Inventory-- %N")
			from
				iterator.start
			until
				iterator.is_off
			loop

				v.inven_read_inventory_list(iterator.item.to_string_8)
				iterator.next
			end
			v.inven_read_bit_coin(m.cash)
	end

feature
	random: RANDOM
	local
		time:DATE_TIME
			do
			create time.make_now_utc
			create Result.set_seed (time.seconds * 1000 + time.time.milli_second)
			Result.start

		end


end
