note
	description: "[
	Summary description for {DUNGEON_MODEL}.
	This class is like a database for the game, it stores all the attributes value of the game. 
	It enables the controller class class to access these data or set these data whenever a attribute is updated during the game.
	]"
	author: "[
		Mohammad Hossein Zarifi (Student no:213320437 )
		Rachel Chang (Student no: 213530266)
		Azade Farokhshahi (Student no: 213421706)
		]"
	date: "Aug 3, 2016"
	revision: "$Revision$"

class
	DUNGEON_MODEL

create
	make
feature --All attributes in the project

		classString: STRING assign set_classString
		firewall: INTEGER assign set_firewall
		viruses: INTEGER assign set_viruses
		code: INTEGER	assign set_code
		system: INTEGER		assign set_system
		intelligence: INTEGER	assign set_intelligence
		cash: INTEGER			assign set_cash
		level: INTEGER			assign set_level
		XP: INTEGER				assign set_xp
		mainOption: INTEGER_32		assign set_mainOption
		room: INTEGER
		playerClass: INTEGER
		win:INTEGER				assign set_win
		myDefense:INTEGER		assign set_myDefense
		--inventory: ARRAYED_LIST[STRING]

		purchaseNo: INTEGER
		buy: INTEGER

		accept: INTEGER
		explored: BOOLEAN
		open: INTEGER
		guac: INTEGER
		selectItem: INTEGER
		name: STRING

feature --Initializing the attributes in the project
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

		accept := 0
		explored := FALSE
		open := 0
		guac := 0
		selectItem := 0
		name := ""
		win := 0
		myDefense := 0


	end





feature -- accessors - features/routines that accesses data in the project.
		-- It helps the controller/user to access the data of the attributes at any point of the program.


			get_classString:STRING
				do
					Result := classString

				ensure
					Result = classString
				end

			get_firewall: INTEGER
			do
				Result := firewall

			ensure
				Result = firewall
			end

			get_viruses: INTEGER
			do
				Result := viruses

			ensure
				Result = viruses
			end

			get_code: INTEGER
			do
				Result := code
			ensure
				Result = code
			end

			get_system: INTEGER
			do
				Result := system
			ensure
				Result = system

			end

			get_intelligence: INTEGER
			do
				Result := intelligence

			ensure
				Result = intelligence
			end

			get_cash: INTEGER
			do
				Result := cash

			ensure
				Result = cash
			end

			get_level: INTEGER
			do
				Result := level
			ensure
				Result = level
			end

			get_XP: INTEGER
			do
				Result := XP

			ensure
				Result = XP
			end

			get_room: INTEGER
			do
				Result := room
			ensure
				Result = room
			end

			get_mainOption: INTEGER
			do
				Result := mainOption
			ensure
				Result = mainOption
			end


			get_playerClass: INTEGER
			do
				Result := playerClass

			ensure
				Result = playerClass
			end

			get_purchaseNo: INTEGER
			do
				Result := purchaseNo

			ensure
				Result = purchaseNo
			end

			get_buy: INTEGER
			do
				Result := buy

			ensure
				Result = buy
			end

			get_accept: INTEGER
			do
				Result := accept

			ensure
				Result = accept
			end

			get_explored: BOOLEAN
			do
				Result := explored

			ensure
				Result = explored
			end

			get_open: INTEGER
			do
				Result := open

			ensure
				Result = open
			end

			get_guac: INTEGER
			do
				Result := guac

			ensure
				Result = guac
			end

			get_selectItem: INTEGER
			do
				Result := selectItem

			ensure
				Result = selectItem
			end

			get_name: STRING
			do
				Result := name

			ensure
				Result = name
			end


feature -- mutators - also known as the settler; changes some property of an object.
		-- It helps the controller/user to change or update the values/data of the attributes throughout the program.
		-- It helps to keep track of the most recent value of an attribute.

	-- For each mutators we are using postcondition to ensure that the value is correctly set to the attribute

	--For the accessor routines we are using post condition to ensure correct value is being returend
			set_classString(s:STRING)
					do
						classString := s

					ensure
						classString = s
					end

			set_win(n:INTEGER)
				do
					win := n

				ensure
					win = n
				end

			set_firewall(n: INTEGER)
				do
					firewall := n

				ensure
					firewall = n
				end

			set_viruses(n: INTEGER)
				do
					viruses := n

				ensure
					viruses = n
				end

			set_code(n: INTEGER)
			do
				code := n

			ensure
				code = n
			end

			set_system(n:INTEGER)
			do
				system := n

			ensure
				system = n
			end

			set_intelligence(n:INTEGER)
			do
				intelligence := n

			ensure
				intelligence = n
			end

			set_cash(n:INTEGER)
			do
				cash := n

			ensure
				cash = n
			end

			set_level(n:INTEGER)
			do
				level := n
			ensure
				level = n
			end

			set_xp(n:INTEGER)
			do
				XP := n

			ensure
				XP = n
			end

			set_room(n:INTEGER)
			do
				room := n

			ensure
				room = n
			end

			set_mainOption(n:INTEGER_32)
			do
				mainOption := n

			ensure
				mainOption = n
			end

			set_playerClass(n:INTEGER)
			do
				playerClass := n

			ensure
				playerClass = n
			end

			set_purchaseNo(n:INTEGER)
			do
				purchaseNo := n

			ensure
				purchaseNo = n
			end

			set_buy(n:INTEGER)
			do
				buy := n

			ensure
				buy = n
			end

			set_accept(n:INTEGER)
			do
				accept := n

			ensure
				accept = n
			end

			set_explored(n:BOOLEAN)
			do
				explored := n

			ensure
				explored = n
			end

			set_open(n:INTEGER)
			do
				open := n

			ensure
				open = n
			end

			set_guac(n:INTEGER)
			do
				guac := n

			ensure
				guac = n
			end

			set_selectItem(n:INTEGER)
			do
				selectItem := n

			ensure
				selectItem = n
			end

			set_name(n:STRING)
			do
				name := n

			ensure
				name = n
			end

			set_myDefense(n:INTEGER)
				do
					myDefense := n

				ensure
					myDefense = n
				end



end
