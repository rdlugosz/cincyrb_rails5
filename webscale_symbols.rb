# for demo, run via:
# /Users/ryan/.rbenv/versions/1.9.3-p551/bin/ruby webscale_symbols.rb && ruby webscale_symbols.rb

def memory_usage
  # http://stackoverflow.com/questions/7220896/get-current-ruby-process-memory-usage
  rss_k = `ps -o rss= -p #{Process.pid}`.to_i
  (rss_k / 1024.0).round(2)
end

n = 1_000_000

puts "\nUsing Ruby version: #{RUBY_VERSION}"
puts "Before mem: #{memory_usage}MB"

(1..n).each do |i|
  i.to_s.to_sym
end

GC.start
puts "After mem:  #{memory_usage}MB"
