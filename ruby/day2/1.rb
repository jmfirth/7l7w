#!/usr/bin/env ruby

(1..16).to_a().each { |i| print i.to_s() + "\n" }

(1..16).to_a().each_slice(1) { |i| print i.to_s() + "\n" }
