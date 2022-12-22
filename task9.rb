class Person
  attr_accessor :name, :age
  def initialize(name, age)
    @name, @age = name, age
  end

  def method_missing(m, *args, &block)

    if /set(_)(.*)/.match(m)
      p "#{$0}"

      self.send("#{$2}=", *args)

    else
      super
    end
  end
end

person = Person.new("Danila", 2)
person.set_age(10)
# person.set_lalala(20)
p person
# p ("#{$1}=", [1,2,3])
