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
		do
			--| Add your code here
			print ("Welcome to the Dunegon game!%N")
			d.purchase

		end


feature
	d: DUNGEON
	once
		create Result.make
	end





end
