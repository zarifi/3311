note
	description: "[
		Summary description for {DUNGEON_VIEW}. 
		This class is responsible to enable user-system interaction between the player and the game 
		by displaying instructions and choices for the player to make during the game.
	]"
	author: "[
		Mohammad Hossein Zarifi (Student no:213320437 )
		Rachel Chang (Student no: 213530266)
		Azade Farokhshahi (Student no: 213421706)
		]"
	date: "Aug 3, 2016"
	revision: "$Revision$"

expanded class
	DUNGEON_VIEW

feature


	instruction_level2
	-- displays an introduction to level 2 to the player to have a better understanding of it.
	do
		print("Villager: I see you have passed level 0, that's great! I underestimated you. While you were fighting the virus, i sent out some flexibits to keep a watch around the motherboard.")
		print(" And it has come to my notice that the villagers around the X-code building are falling sick due to some bugs. After A/B testing that area, we have found that the bugs are originating ")
		print("from the safari building which is located in the east wing of the X-code building. I would like you to check it out.%N")
		print("%N%N")

		print("*A ghost appears infront of you*%N")
		print("BOSS: You think you could beat me in level 0?? That was nothing! well watch out buddy! I've got friends from the underground to avenge my death bwahahahhaah!!%N")
		print("%N")
		print("You travel towards the building...%N%N")

		print("Wizard: Oh hello lad! I guess your the one everyone is raving about. I've come here to warn you about this building. I sense a poisonous energy in this building and looking at my crystal ball ")
		print("there is a mini boss in there. The mini boss is the master of all these troubles happening in this town. You need to fight him! but it is not as easy as you think! It is very hard to get a hold of him.")
		print("%N%N")
		print("Though there is another way of destroying the mini boss, and that is to kill his beloved minions- the enemy coder, who are a part of him.... but the catch here is you have to defeat 5 of them to destroy the mini boss.%N")

		print("%NAll the best! Go catch em all!!%N")

	end

	purchase_Instruction
		--Display items which can be purchased by the user in 3 different gorups
	do
		print("<1> Supercomputer, (1) Geek Help, (1) Worm, (1) Microcomputer, Elder Wand %N")
		print("<2> PC, (2) Microcomputer, (1) Geek Help, (3) Worm, (1) Firewall, Invisibility Cloak %N")
		print("<3> Embedded Computer, (3) Microcomputer, (2) Geek Help, (3) Worm, (1) Firewall,Resurrection Stone %N")
		io.read_integer

	end

	purchase_wrong_number
		do
			print("You did not choose from the provided items so I would give you random items")
		end


	mainOpt_Instruction
		--Give the user 6 different option to choose
		do
			print("Look around the room: %N")
			print("<1> Look around%N")
			print("<2> Talk to the Shady Dealer in the corner%N")
			print("<3> Inventory%N")
			print("<4> Stats%N")
			print("<5> Next Room%N")
			print("<6> Use Item%N")
			io.read_integer
			--mainOption := io.last_integer
		end


	classChoose_Instruction
		--Gives the user 3 option to choose for the identity
		do
			print("%NPlease choose one of the characters you like below:%N")
			print("To select from the options below please type in their corresponding numbers.. (e.g. 1 - to select Hacker)%N%N")
			print("<1> Hacker: Good with viruses and pretty fine with code but has a weakness for firewalls. Also low intelligence...%N")
			print("<2> CEO: Very intelligent and lots and lots of system space but not the best with code.%N")
			print("<3> Coder : Great with code, kinda bad system space, decent viruses and firewalls.%N")
			io.read_integer
		--	playerClass := io.last_integer

		end


	merchant_Instruction(cash:INTEGER)
		--Display the items that user can buy
			do
				print("Shady Merchant: Buy Something!?!?! %N")
				print("<1> Microcomputer - 10 BitCoins %N")
				print("<2> Geek Help - 35 BitCoins %N")
				print("<3> Worm - 30 BitCoins %N")
				print("<4> Firewall - 15 BitCoins %N")
				print("<5> Nothing Thanks! %N")
			--	print("%N")
				print("BitCoins: ")
				print(cash)
				print("%N")

				io.read_integer
				--buy := io.last_integer
			end

	merchant_not_enoght_money
		--Inform the user for not having enought money to proceed
			do
				print("You don't have enough money for that. What?! you trying to scam me??%N")
			end

	merchant_not_exist
		--Inform the user for invalid item
		do
			print("Merchant: That doesn't exists!!%N")
		end

	statRead_Instruction(firewall:INTEGER;viruses:INTEGER;code:INTEGER;intelligence:INTEGER;system:INTEGER;level:INTEGER;xp:INTEGER)
		--Display status including firewall, viruses, code, intelligence, system, level and XP
		do
			print("--Stats-- %N")
				print("Firewall: ")
				print(firewall)
				print("%N")

				print("Viruse's power: ")
				print(viruses)
				print("%N")

				print("Code: ")
				print(code)
				print("%N")

				print("Intelligence: ")
				print(intelligence)
				print("%N")

				print("System: ")
				print(system)
				print("%N")

				print("Level: ")
				print(level)
				print("%N")

				print("XP: ")
				print(xp)
				print("%N%N%N")
		end

	invenAsk_instruction(list:STRING;i:INTEGER)
		--Display inventory items' numbers
		do
				print("<")
				print(i)
				print(">: ")
				print(list)
				print("%N")
		end

	invenAsk_input
		do
			io.read_integer

		end


	doBattle_Instruction(system:INTEGER;myDefense:INTEGER;enemyHP:INTEGER;enemyAttack:INTEGER;enemyDefense:INTEGER;virusesMade:INTEGER;virusAttack:INTEGER)
		--Display 6 different options to choose for the user
		do
			print("Action: %N")
			print("<1> Send out virus. %N")
			print("<2> Build a virus. %N")
			print("<3> Work on system defense. %N")
			print("<4> Repair system. %N")
			print("<5> Use Item. %N")
			print("<6> See Full Stats%N")

			print("%N System Status:")
			print(system)
			print("%N Defense: ")
			print(myDefense)
			print("%N Enemy HP: ")
			print(enemyHP)
			print("%N Enemy Attack: ")
			print(enemyAttack)
			print("%N Enemy Defense: ")
			print(enemyDefense)
			print("%N Viruses Made: ")
			print(virusesMade)
			print("%N Viruses Power: ")
			print(virusAttack)
			print("%N")

			io.read_integer
			--action := io.last_integer
		end




		doBattle_not_valid_no
		--Warn the user about the invalid number
		do
			print("You did not type in a valid number. %N")
		end

		doBattle_Need_Virus
		--Inform to the user to make more viruses
		do
			print("You need to make a virus!%N")
		end

		doBattle_Build_virus
		--inform the user that virus is built
		do
			print("You build a virus%N")
		end

		doBattle_Defense_Improved
		--Inform the user that the defense system is improved
			do
				print("Defense improved!%N")
			end

		doBattle_System_Improved
		--Inform the user that the system is improved
			do
				print("System improved!%N")
			end

		doBattle_Repaired_System
		--Inform the user that the system is repaired
			do
				print("You used a USB and repaired your system by 15.%N")
			end


		doBattle_Leave_Battle
		--Inform the user to leave the battle
			do
				print("You get to leave battle%N")
			end


		doBattle_Increased_Deffense_Five
		--Inform the user that the system defence is increased by 5
			do
				print("You increased your system defense by 5.%N")
			end


		doBattle_More_Two_Virus
		--Inform the user that the viruses got more powerful and you got two for free
			do
				print("Your viruses got more powerful and you got two for free!%N")
			end


		doBattle_Not_Valid_Item
		--Inform the user about invalid item
			do
				print("Not a valid item.%N")
			end


		doBattle_Enemy_Attack(enemyAttack:INTEGER;myDefense:INTEGER;)
			--Displays
			do
				if enemyAttack > myDefense then
				print("Enemy attacks for ")
					print(enemyAttack - myDefense)
					print("%N")
				else
				print("Enemy attacks for ")
				print(enemyAttack)
				print("%N")
			end
			end

		doBattle_Num_Cash(sentHP:INTEGER)
			--Display the number of the cash and XP number which user has
			do
				print("You got ")
				print(sentHP // 2)
				print(" cash.%N")
				print(sentHP)
				print(" XP.")
				print("%N")
			end

		doBattle_system_improved_20
			do
				print("Your system status has been improved by 20 %N")
			end

		doBattle_system_improved_5
			do
				print("Your system status has been improved by 5 %N")
			end

		doBattle_system_improved_10
			do
				print("Your system status has been improved by 10 %N")
			end

		doBattle_system_improved_15
			do
				print("Your system status has been improved by 15 %N")
			end

		doBattle_firewall_improved
			do
				print("Your defense has been improved and enemy's attack has less impact on you %N")
			end

		doBattle_viruses_improved_3
			do
				print("Your viruse's power have been improved by 3 %N")
			end

		doBattle_luck_item
			do
				print("I told you cannot use this item, you should keep it for its luck!!!!%N")
			end


		doBattle_geek_help
			do
				print("You won this battle with the help of Geek, but you had to pay 10 system status for it. %N")
			end

		doBattle_worm
			do
				print("You are given 3 viruses to attack enemy %N")
			end

		inven_Read_Inventory_List(list:STRING)
		--Read the inventory items and display their numbers
			do
				print(list)
				print("%N")
			end

		inven_Read_Bit_Coin(cash:INTEGER)
		--Read the amount of bitcoins
			do
				print("%NBitCoins: ")
				print(cash)
				print("%N")
			end

		app_Welcome(classstring:STRING)
		--Welcomes the user and explains the opening of the game
			do
				print ("Welcome to the Dunegon game!%N")


						print("You are travelling on a long journey away from your home in the land of Eiffel.%N")
						print("In the distance you see a travler.%N")
						print("%N")
						print("Villager: Greetings young ")
						print(classstring)
						print("%N")
						print("I'm afraid that I have troubling news!%N")
						print("My hometown of Macintosh has been terrorized by a near- by Code Dungeon.%N")
						print("Viruses leak out and murder our farmers. We may starve soon! It would be great if a ")
						print(classstring)
						print(" like you could help us!")

						print("%NVillager: So will you accept?? %N")
						print("<0> YES	<1> NO")
						print("%N")

						io.read_integer

			end

			app_accept_zero(classstring:STRING)
				do
				print("Villager: Thank you so much! What is your name great")
				print(classstring)
				print(" ?")
				print("%N")
				io.read_line
				end

			app_greate_name(name:STRING)
				do
				print("%N")
				print(name)
				print(" That's a great name! Come to my village we will help equip you for you jouney!%N")
				print("%N The two of you travel to the village.%N%N")
				end


		app_Message_Bitcoin
			--Explains
			do
				print("%N%N%N%N%N")
				print("Villager: Here is the dungeon. But before you go take 200 BitCoins...")
				print("You might need them...%N")
				print("%N Wow! That guy scammed you! He only gave you 20 coins!%N") --made change after this line
				print("%NVillager: Ah! I just remembered! In addition to your equipments, You may have noticed a Elder wand, Invisibility cloak, or a Resurrection stone among the list; ")
				print("these items are known to bring luck and good fortune. But it cannot be used at any cost!! Keep it safe!%N%N ")
				print("%NVillager: Oh! and I also forgot to mention that, there is a boss who guards the door. Don't worry though he's weak.%N%N")
				print("To fight him, first you need to build a virus and send a virus to attack him, this would lower his HP(health-points). But at the same time you need ")
				print("to watch out for yourself! you need to keep track of your system status which is like your health-points.. Make sure it doesn't go lower than the enemy's HP.")
				print("If your system points goes lower than the enemy's HP, you have two options; use the repair system option to build up your system points or use an ITEM.")
				print(" You can also increase your system defense-(option no.3) to lessen the impact of enemy attack")
				print("Rememeber you have to be agile and attack enemy in time otherwise by just building viruses or increasing your system defense you would finally lose%N%N")
				print("The different uses of the ITEMs you have are as follows:- %N")

				print("Supercomputer/PC/Embedded computer - would help increase your system status.%N")
				print("Geek Help - would help you win the battle if you're not able to handle the enemy but in exchange you have give in 10 system status.%N")
				print("Firewall would help build your system defense%N")
				print("Worm will help strengthen your viruse and have a strong effect on your opponent!%N")
				print("ATTENTION: You can only win the battle with Geek Help if your system status is more than 10 %N")
				print("Do use these ITEMs carefully as they are limited!%N%N")

			end

			app_Boss_Fight
			--Inform the user the ready situation to go up
			do
				print("You are almost ready to level up... Boss FIGHT!!%N")
			end

			app_beat_boss
				do
					print("You beat a boss and level up!%N%N%N")
				end

			app_Explore_Room
			--Inform that the user explore the room
			do
				print("%NYou exploring the room ")
				--print(rand)
			end

			app_Ask_Computer_Open
			--Asks if the user wants to open a mysterious computer or not
			do
				print("%N")
				print("You find a mysterious looking computer possibly filled with BitCoins. Open ?%N") --made change
				print("<1> YES  <2> NO   ")
				io.read_integer
				--open := io.last_integer
			end

			app_Malware_Infection
			--Inform that the user's system is infected by malware
			do
				print("The chest was filled with malware that infects your system.%N")
			end

			app_Found_1000_Bitcoin
			--Informs that the user found 1000 bitcoins
			do
				print("You find a load of 1000 BITCOINS!!%N")
			end

			app_Enemy_Coder
			--Informs that the user encounters an enemy coder
			do
				print("You encounter an enemy coder!%N")
			end

			app_won
			--Informs winning of the user
			do
				print("You won the battle!!%N")
			end

			app_Ask_Bowl_Investigate
			--Asks if the user wants to investigate on a mysterious bowl or not
			do
				print("You find a mysterious looking bowl of gucamole. Investigate ?%N")
				print("<1>YES  <2>NO   ")
				io.read_integer
				--guac := io.last_integer
			end

			app_Quac_Key
			--Inform that the user took a bite of the quac and found a key
			do
				print("%N")
				print("You take a bite of the guac and find a key upon your chip!%N")
				print("Also you feel quite rejuvinated...%N")
			end

			app_Not_Quac
			--Inform the user stayed away from the quac and is suspicous
			do
				print("%NYou stay away from the guac...%N")
				print("You were always suspicous of avocadoes...%N")
			end

			app_encounter_Mini_Boss
			--Inform that the user encounter a mini boss
			do
				print("You encounter a Mini Boss!%N")
			end

			app_Beat_Mini_Boss
			--Inform that the user beat a mini boss
			do
				print("You beat a mini boss!%N")
			end

			app_find_nothing
			--Informs that the user found nothing
			do
				print("You find nothing.%N")
			end

			app_Saw_Before
			--Informs that the user already saw the room
			do
				print("You already saw what was in this room.%N")
			end

			app_Need_USB_Repaired_15
			--Informs that the user used a USB and repaired the system by 15
			do
				print("You used a USB and repaired your system by 15.%N")
			end

			app_Not_Valid_Item
			--Displays not valid item
			do
				print("Not a valid item.%N")
			end


			app_you_died
				do
				print("%NYou died... The villager morns your death.%N")

				end
			app_Village_Slaughtered
			--Informs that the village is slaughtered
			do
				print("%NVillager: Oh... That's okay...%N")
				print("The whole village of Macintosh was later slaughtered...%N")
			end


			app_win
			do
				print("%N %N %N")
				print("Villager: Congratulations!! You beat the mini BOSS!!%N")
				print("Thank you for saving our town!! YOUR A HERO!!%N")
				print("The town of Macintosh rejoices and the people lives happily ever after..%N")

			end

			app_win_enemy
				do
					print("Awesome! You beat the enemy! Your system status has been improved by 20 points.%N")

				end

			invalid
			-- displays the message when an invalid input has been typed by the player
			do
				print("Invalid input! please try again: %N")

			end



end
