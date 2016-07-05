note
	description: "Summary description for {DUNGEON}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DUNGEON

create
	make

feature{ANY}
	--random: RANDOM
	classString: STRING
	firewall: INTEGER
	viruses: INTEGER
	code: INTEGER
	system: INTEGER
	intelligence: INTEGER
	cash: INTEGER
	level: INTEGER
	XP: INTEGER
	mainOption: INTEGER
	room: INTEGER
	playerClass: INTEGER
	inventory: ARRAYED_LIST[STRING]

	purchaseNo: INTEGER
	buy: INTEGER


feature
	make
	do
	classString := ""
	firewall := 0
	viruses := 0
	code := 0
	system := 0
	intelligence := 0
	cash := 0
	level := 0
	XP := 0
	mainOption := 0
	room := 0
	playerClass := 0

	purchaseNo := 0
	buy := 0
	--create random.make
	create inventory.make (100)


	end


	feature {ANY}

	purchase
	do
		print("<1> Alienware 18 Laptop, (2) Tech Support, (1) USB %N")
		print("<2> Macbook Pro, (3) USBs, (3) Tech Support, (3) Trojan Virus, (1) Anti-Virus, (1) USB Mouse %N")
		print("<3> Jailbroken Chromebook, (4) USBs, (3) Trojan Viruses, (2) Anti-Viruses, (1) USB Mouse, (2) Tech Support, (1) Great IDE %N")
		io.read_integer
		purchaseNo := io.last_integer
--		print("this is the random number: ")
--		random.start


	end


	mainOpt
		do
			print("Look around %N")
			print("<1> Look around%N")
			print("<2> Talk to the Shady Dealer in the corner%N")
			print("<3> Inventory%N")
			print("<4> Stats%N")
			print("<5> Next Room%N")
			print("<6> Use Item%N")

			io.read_integer
			mainOption := io.last_integer

		end

	classChoose

		do
			print("<1> Hacker: Good with viruses and pretty fine with code but has a weakness for firewalls. Also low intelligence...%N")
			print("<2> CEO: Very intelligent and lots and lots of system space but not the best with code.%N")
			print("<3> Coder : Great with code, kinda bad system space, decent viruses and firewalls.%N")

			io.read_integer
			playerClass := io.last_integer


			if playerClass = 1 then
				classString := "hacker"
		    	firewall := 1
		    	viruses := 4
			    code := 3
				--  system := random_integer
			   -- system := generator.nextInt(20) + 20
			   -- intelligence := generator.nextInt(2) + 1
			else if playerClass = 2 then
				classString := "CEO"
			--	firewall := generator.nextInt(2) + 1
			--	viruses := generator.nextInt(1) + 3
			--	code := generator.nextInt(1) + 2
			--	system := generator.nextInt(20) + 30
			--	intelligence := generator.nextInt(2) + 4
			else if playerClass = 3 then
				classString := "coder"
			--	firewall := generator.nextInt(1) + 3
			--	viruses := generator.nextInt(1) + 3
			--	code := generator.nextInt(1) + 4
			--	system := generator.nextInt(20) + 20
			--	intelligence := generator.nextInt(2) + 2

			end

			end

			end


		end

		merchant
			do
				print("Shady Merchant: Buy Something!?!?! %N")
				print("<1> USB - 10 BitCoins %N")
				print("<2> Tech Support - 20 BitCoins %N")
				print("<3> Trojan Virus - 30 BitCoins %N")
				print("<4> Anti-Virus - 15 BitCoins %N")
				print("%N")
				print("BitCoins: ")
				print(cash)
				print("%N")
				print("<5> Nothing Thanks! %N")

				io.read_integer
				buy := io.last_integer

				if buy=1 then
					if cash >= 10 then
						inventory.extend ("USB")
						cash := cash - 10

					else
							print("You don't have enough money for that. What?! you trying to scam me??")
					end

				else
				if buy=2 then
					if cash >= 20 then
						inventory.extend ("Tech Support")
						cash := cash - 20

						else
							print("You don't have enough money for that. What?! you trying to scam me??")
					end

				else
				if buy=3 then
					if cash >= 30 then
						inventory.extend ("Trojan Virus")
						cash := cash - 30

						else
							print("You don't have enough money for that. What?! you trying to scam me??")
					end

				else
				if buy=4 then
					if cash >= 15 then
						inventory.extend ("Anti-Virus")
						cash := cash - 15

						else
							print("You don't have enough money for that. What?! you trying to scam me??")
					end
				else
					print("Merchant: That doesn't exists!!")
				end
			end
			end
			end
			end



		statRead  --Display stats
			do
				print("--Stats-- %N")
				print("Firewall: ")
				print(firewall)
				print("%N")

				print("Viruses: ")
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
				print("%N")
			end

		InvenAsk: INTEGER  --Return Inventory item number
			local
				list: STRING
				i: INTEGER
				invenOption: INTEGER
			do
				i := 1
				from
					inventory.start
				until
					inventory.after
				loop
					list := inventory.item
					print("<")
					print(i)
					print(">: ")
					print(list)
					print("%N")

					inventory.forth
					i := i + 1
				end

				io.read_integer
				invenOption := io.last_integer
				Result := invenOption
			end

		--Battle system
		doBattle(name:STRING; sentHP:INTEGER; sentAttack:INTEGER; sentDefense:INTEGER): BOOLEAN
			local
				enemyHP,enemyAttack,enemyDefense,myDefense,virusesMade,virusAttack, action: INTEGER
			do
				enemyHP := sentHP + level -- + generator.nextINT(1)
				enemyAttack := sentAttack + level -- + generator
				enemyDefense := sentDefense + level -- + generator

				myDefense := firewall

				virusesMade := 0
				virusAttack := 0

				from

				until
					system > 0 AND enemyHP > 0
				loop
					print("Action: %N")
					print("<1> Send out virus. %N")
					print("<2> Build. %N")
					print("<3> Work on system defense. %N")
					print("<4> Repair system. %N")
					print("<5> Use Item. %N")
					print("%N System Status: ")
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
					print("<6> See Full Stats")

					io.read_integer
					action := io.last_integer

					--NOTE:- add a rescue clause here!!!
					if action < 1 OR action >6 then
						action := 7
						print("You did not type in a valid number.")
					end

					if action=1 then
						if virusesMade > 0 then
							if virusAttack - enemyDefense > 0 then
								enemyHP := enemyHP - virusAttack
								virusesMade := virusesMade - 1
								else
									print("You need to make a virus!")
									action := 7
							end
						end
					else
					if action=2  then
						virusesMade := virusesMade + 1
						if virusAttack > 0 then
							virusAttack := viruses + code // 2
							virusAttack := virusAttack + 1
							else
								virusAttack := viruses + code // 2
						end
						print("You build a virus")

					else
					end
					end

				end
			end



end
