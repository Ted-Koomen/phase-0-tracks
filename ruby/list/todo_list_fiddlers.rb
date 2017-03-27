class TodoList

	def initialize(chore)
		@list = chore
	end

	def get_items
		@list
	end

	def add_item(chore)
		@list << chore
	end

	def delete_item(item)
		@list.delete(item)
	end

	def get_item(index)
		@list[index]
	end

end