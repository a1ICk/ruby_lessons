class Base
  def self.f(name)

    define_method(name){|value| p value}
  end
  f(:book)
end

Base.new.book(1)
