class Person
	attr_accessor :first_name, :last_name

	def initialize fn, ln 
		@first_name = fn
		@last_name = ln
	end

	def to_s 
		"#{@first_name} #{@last_name}"
	end

	def headcount
		1
	end

end

p1 = Person.new("John", "Smith")
#puts 'p1 = Person.new("John", "Smith") ==> ' + p1.to_s

class Student < Person

	def initialize fn, ln, year
		super(fn, ln)
		@year = year
	end

	def year
		@year
	end
end

s1 = Student.new("Jane", "Smith", 2012)
#puts 's1 = Student.new("Jane", "Smith", 2012) ===> ' + s1.to_s

class Person
	@count = 0

	def self.how_many_people
		@count
	end

	def self.increment
		@count += 1
	end


	def initialize fn, ln 
		Person.increment
		@first_name = fn
		@last_name = ln
	end
end

p2 = Person.new("Pito", "Salas")
p3 = Person.new("Chris", "Salas")

#puts 'Person.how_many_people ===> ' + Person.how_many_people.to_s

class Party
	attr_accessor :headcount 

	def initialize count
		@headcount = count
	end

end

e1 = Party.new 10
e2 = Party.new 5

#puts 'p1.headcount ===> ' + p1.headcount.to_s
#puts 'e1.headcount ===> ' + e1.headcount.to_s

invite_list = [s1, p2, p3, e1, e2]
puts 'invite_list.reduce(0) { |s, e| s + e.headcount }.to_s ===> ' + invite_list.reduce(0) { |s, e| s + e.headcount }.to_s
		




