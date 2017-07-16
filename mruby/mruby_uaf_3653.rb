# Heap use-after-free in gc_mark_children
# Issue: https://github.com/mruby/mruby/issues/3653
# Reported via hackerone

def a
  yield
ensure
lambda {a a { return proc{}} }.call
end

lambda { a { return } }.call