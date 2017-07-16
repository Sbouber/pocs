# Null pointer dereference in mrb_hash_dup
# Issue: https://github.com/mruby/mruby/issues/3609
# Reported via hackerone

class X < Hash
  def initialize
  end
end

X.new.dup