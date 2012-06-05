module RatingSystem
	FILENAME = "file.data"
	class DataManager
		def read_data
			puts "I am reading data from \"#{FILENAME}\""
		end

		def calculate_stats
			puts "I am calculating stats"
		end
	end
end

data_manager = RatingSystem::DataManager.new
data_manager.read_data

module SpecialMath
	def compute_square x 
		x**x
	end
end

class BadRatingSystem
	include SpecialMath

	def initialize base
		@base_line = base 
	end

	def base_square
		compute_square @base_line
	end
end

bad_seed = BadRatingSystem.new 5
puts "The Square of 5 is: " + bad_seed.base_square.to_s
