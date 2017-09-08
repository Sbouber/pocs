# Null pointer dereference in gc_mark_children
# Issue: https://github.com/mruby/mruby/issues/3761
# Reported via hackerone

String(
  def to_str
    "" != []
  ensure
    - -> {}.dup
  end
)