class MyClass
	def a_method
		a = 100
		puts "a is equal to #{a}, and of class #{a.class}"
	end

	def b_method
		puts "joker is equal to #{joker}, and of class #{joker.class}"
	end

	def c_method
		joker = "I am not funny"
		puts "joker is equal to #{joker}, and of class #{joker.class}"
	end		

	def joker
		"Joke!"
	end
end

mc = MyClass.new
mc.a_method
mc.b_method
mc.c_method