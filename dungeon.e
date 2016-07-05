note
	description: "Summary description for {DUNGEON}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DUNGEON

create
	make

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

	end

feature{ANY}
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

	purchaseNo: INTEGER
	buy: INTEGER


	feature {ANY}

	purchase
	do
		print("<1> Alienware 18 Laptop, (2) Tech Support, (1) USB %N")
		print("<2> Macbook Pro, (3) USBs, (3) Tech Support, (3) Trojan Virus, (1) Anti-Virus, (1) USB Mouse %N")
		print("<3> Jailbroken Chromebook, (4) USBs, (3) Trojan Viruses, (2) Anti-Viruses, (1) USB Mouse, (2) Tech Support, (1) Great IDE %N")
		io.read_integer
		purchaseNo := io.last_integer
		print("this is the random number: ")

		print(random_intege)
	

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
				  system := random_integer
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


feature
	random: RANDOM
		--
	local
		time: DATE_TIME
	once
		create time.make_now_utc
	--	create Result.se
	end




end







