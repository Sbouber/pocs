# Heap use-after-free in OP_CALL (ObjectSpace gem)
# Issue: https://github.com/mruby/mruby/issues/3680
# Reported via hackerone

class NoMethodError
  def initialize(*)
  end

  ObjectSpace.each_object{ |obj| obj===[] }
end