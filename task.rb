class Base
  attr_accessor(:a, :b)
  def initialize(a, b)
    @a = a
    @b = b
    p @c
  end

  def f
    @c ||= 8
  end
end

base = Base.new(1, 2)
p base.a
p base.f
p base.f

klass = Base
base1 = klass.new(1,2)

MyBase = Class.new do
  attr_accessor :a, :b

  def initialize(a, b)
    self.a = a
    self.b = b
    p @c
  end
end

base2 = MyBase.new(1,2)
p base2
