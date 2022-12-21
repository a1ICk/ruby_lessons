module M
  def f
    p "Hello"
  end
end

class Base
  include M
  extend M
  def f
    p "Goodbye"
  end
  def self.f
    p "LALALA"
  end
end
Base.f
Base.new.f
