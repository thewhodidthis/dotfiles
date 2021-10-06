#!/usr/bin/ruby

require 'irb/completion'
require 'rubygems'

IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:AUTO_INDENT] = true

def r
  reload!
end
