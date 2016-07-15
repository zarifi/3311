note
	description: "Summary description for {DUNGEON_MODEL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DUNGEON_MODEL

create
	make
feature --All attributes in the project

		classString: STRING
		firewall: INTEGER assign set_firewall
		viruses: INTEGER assign set_viruses
		code: INTEGER	assign set_code
		system: INTEGER		assign set_system
		intelligence: INTEGER	assign set_intelligence
		cash: INTEGER			assign set_cash
		level: INTEGER			assign set_level
		XP: INTEGER				assign set_xp
		mainOption: INTEGER
		room: INTEGER
		playerClass: INTEGER

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

	end





feature -- accessors - features/routines that accesses data in the project.
		-- It helps the controller/user to access the data of the attributes at any point of the program.

			get_firewall: INTEGER
			do
				Result := firewall
			end

			get_viruses: INTEGER
			do
				Result := viruses
			end

			get_code: INTEGER
			do
				Result := code
			end

			get_system: INTEGER
			do
				Result := system
			end

			get_intelligence: INTEGER
			do
				Result := intelligence
			end

			get_cash: INTEGER
			do
				Result := cash
			end

			get_level: INTEGER
			do
				Result := level
			end

			get_XP: INTEGER
			do
				Result := XP
			end

			get_room: INTEGER
			do
				Result := room
			end

			get_mainOption: INTEGER
			do
				Result := mainOption
			end

			get_classString--: STRING
			do
			--	Result := classString
			end

			get_playerClass: INTEGER
			do
				Result := playerClass
			end

			get_purchaseNo: INTEGER
			do
				Result := purchaseNo
			end

			get_buy: INTEGER
			do
				Result := buy
			end

			get_accept: INTEGER
			do
				Result := accept
			end

			get_explored: BOOLEAN
			do
				Result := explored
			end

			get_open: INTEGER
			do
				Result := open
			end

			get_guac: INTEGER
			do
				Result := guac
			end

			get_selectItem: INTEGER
			do
				Result := selectItem
			end

			get_name: STRING
			do
				Result := name
			end


feature -- mutators - also known as the settler; changes some property of an object.
		-- It helps the controller/user to change or update the values/data of the attributes throughout the program.
		-- It helps to keep track of the most recent value of an attribute.

			set_firewall(n: INTEGER)
				do
					firewall := n
				end

			set_viruses(n: INTEGER)
				do
					viruses := n
				end

			set_code(n: INTEGER)
			do
				code := n
			end

			set_system(n:INTEGER)
			do
				system := n
			end

			set_intelligence(n:INTEGER)
			do
				intelligence := n
			end

			set_cash(n:INTEGER)
			do
				cash := n
			end

			set_level(n:INTEGER)
			do
				level := n
			end

			set_xp(n:INTEGER)
			do
				XP := n
			end

			set_room(n:INTEGER)
			do
				room := n
			end

			set_mainOption(n:INTEGER)
			do
				mainOption := n
			end

--			set_classString(n:STRING)
--			do
--				classString := n
--			end

			set_playerClass(n:INTEGER)
			do
				playerClass := n
			end

			set_purchaseNo(n:INTEGER)
			do
				purchaseNo := n
			end

			set_buy(n:INTEGER)
			do
				buy := n
			end

			set_accept(n:INTEGER)
			do
				accept := n
			end

			set_explored(n:BOOLEAN)
			do
				explored := n
			end

			set_open(n:INTEGER)
			do
				open := n
			end

			set_guac(n:INTEGER)
			do
				guac := n
			end

			set_selectItem(n:INTEGER)
			do
				selectItem := n
			end

			set_name(n:STRING)
			do
				name := n
			end

end



