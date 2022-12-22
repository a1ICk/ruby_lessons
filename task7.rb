class Base
  def self.inherited(klass)
    p "Cant be inherited"
  end
  def f
    raise "Not Implemented"
  end
end

class Derived < Base

end

a = Derived.new
p a
