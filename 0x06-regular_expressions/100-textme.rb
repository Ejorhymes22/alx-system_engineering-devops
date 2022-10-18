#!/usr/bin/env ruby
# This checks for the sendr and reciever and flag

log=ARGV[0]
lists = log.scan(/from:\S*/)
for list in lists do
  sender = list.scan(/[^from:]\S*[^\]]/)
end

log = ARGV[0]
lists = log.scan(/to:\S*/)
for list in lists do
  receiver = list.scan(/[^to:]\S*[^\]]/)
end

log = ARGV[0]
lists = log.scan(/flags:\S*/)
for list in lists do
  flag = list.scan(/[^flags:]\S*[^\]]/)
end

for send in sender do
  for receive in receiver do
    for f in flag do
      print send,',',receive,',',f
    end
  end
end
puts ''
