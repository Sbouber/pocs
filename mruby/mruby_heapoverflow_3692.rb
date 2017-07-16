# Heap buffer overflow in OP_SEND
# Issue: https://github.com/mruby/mruby/issues/3692
# Reported via hackerone

def a(n)
  if n >= 0
    instance_exec(0) {}
    a(n-1)
  end
end

a(1000)