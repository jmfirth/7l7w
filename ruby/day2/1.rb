#!/usr/bin/env ruby

ar = (0..15).to_a
ar.each { |i| print ar[i,4].to_s + "\n" if (i%4 == 0) }

(0..15).to_a.each_slice(4) { |i| print i.to_s + "\n" }
