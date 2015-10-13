class Opinion
	attr_accessor :stance
	def initialize(stance, neighbours)
		@stance    = stance
		@neighbours = neighbours
	end

	def find
		if block_given?
			@neighbours.inject(0) do |seed,val|
				yield(val) ? seed += 1 : seed
			end
		else
			[]
		end
	end

	def neighbours
		@neighbours.inject(0) do |seed,val|
			hard_or_soft?(val) ? seed += 1 : seed
		end
	end

	def valid?
		hard_or_soft?(@stance)
	end

private
	def hard_or_soft?(stance)
		stance == :hard || stance == :soft
	end
end
