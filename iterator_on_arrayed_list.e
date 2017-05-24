note
	description: "[
	Summary description for {ITERATOR_ON_ARRAYED_LIST}.
	This class inherits a deferred class ITEATOR[E];
	the implementation of all the methods of the deferred class is seen in this class.
	This class provides the property of iterating through a list of items, 
	in this game it goes through a list of inventories which the player possess.
	]"
	author: "[
		Mohammad Hossein Zarifi (Student no:213320437 )
		Rachel Chang (Student no: 213530266)
		Azade Farokhshahi (Student no: 213421706)
	]"
	date: "Aug 3, 2016"
	revision: "$Revision$"

class
	ITERATOR_ON_ARRAYED_LIST[E]

	inherit
		ITERATOR[E]
		redefine target end

	create
		make

feature {NONE}-- Attributes
	target:ARRAYED_LIST[E]
	item_index:INTEGER

feature -- initialization
	make(c:ARRAYED_LIST[E])
		require
			--c /= void
		do
			target := c
			item_index := 1

		end

	start
		do
			target.start
			item_index := 1
		end

	index:INTEGER
		do
			Result := item_index
		end

	item:E
		do
			Result := target.at (item_index)
		end

	next
		do
			target.forth
			item_index := item_index + 1

		end

	is_off:BOOLEAN
		do
			Result := not target.valid_index (item_index)
		end

	is_end:BOOLEAN
		do
			Result := target.after
		end

		do_until (action: PROCEDURE [E]; test: FUNCTION [E, BOOLEAN])
				-- Apply `action' to every item of `target' up to
				-- and including first one satisfying `test'.
				-- (Apply to full list if no item satisfies `test').
			require else
				action_exists: action /= Void
				test_exists: test /= Void
		--	deferred
			do
			end

		do_while (action: PROCEDURE [E]; test: FUNCTION [E, BOOLEAN])
				-- Apply `action' to every item of `target' up to
				-- and including first one not satisfying `test'.
				-- (Apply to full list if all items satisfy `test').
			require else
				action_exists: action /= Void
				test_exists: test /= Void
			--deferred
			do
			end

		until_do (action: PROCEDURE [E]; test: FUNCTION [E, BOOLEAN])
				-- Apply `action' to every item of `target' up to
				-- but excluding first one satisfying `test'.
				-- (Apply to full list if no items satisfy `test'.)
			require else
				action_exists: action /= Void
				test_exists: test /= Void
		--	deferred
			do
			end

		while_do (action: PROCEDURE [E]; test: FUNCTION [E, BOOLEAN])
				-- Apply `action' to every item of `target' up to
				-- but excluding first one satisfying not `test'.
				-- (Apply to full list if all items satisfy `test'.)
			require else
				action_exists: action /= Void
				test_exists: test /= Void
			--deferred
			do
			end

		there_exists (test: FUNCTION [E, BOOLEAN]): BOOLEAN
				-- Is `test' true for at least one item of `target'?
			require else
				test_exists: test /= Void
		--	deferred
			do
			end

		for_all (test: FUNCTION [E, BOOLEAN]): BOOLEAN
				-- Is `test' true for all items of `target'?
			require else
				test_exists: test /= Void
		--	deferred
			do
			end


end
