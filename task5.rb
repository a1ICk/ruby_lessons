class Base
  def f
    p "World"
  end
  def method_missing(m, *args, &block)
    p m
    p args
    block.call
  end
end

class Derived < Base
  def f(a)
    super
    p "Hello"
    super
  end
end

Derived.new.f1(1,2,3){p "Hello world"}
p Derived.ancestors
