def f1(a)
  p a
end

f1(5)

def f2(a:)
  p a
end

f2(a:5)

def f3(*args)
  p args
end

f3(1,2,3)

def f4(args = [])
  p args
end

f4([1,2,3])

def f5(args = {})
  p args
end

f5(a: 5, b: 6)

def f6(**args)
  p args
end

f6(a: 5, b: 6)

def f7(*args, **args1)
  p args
  p args1
end

f7(1,2,3,4,a:8,b:5)

def f8(...)
  yield("Hello")
  f7(...)
end

f8(1,2,3,4,a:8,b:5){|a| p a}


