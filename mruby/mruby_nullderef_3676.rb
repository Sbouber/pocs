# Null pointer dereference in mrb_obj_iv_get
# Issue: https://github.com/mruby/mruby/issues/3676
# Reported via hackerone

h = {}
a =String [a]