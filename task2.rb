module M
  def f

  end
end
class Base

end

class Derived < Base
  extend M
  def initialize
    @a = 8
  end
end

d = Derived.new
def d.f1
  p "Hello"
end
d1 = Derived.new
d.f1
#d1.f1

p Derived.singleton_class.ancestors
#p Class.ancestors
#p Module.class
#p Object.class
#p Kernel.class
