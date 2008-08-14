begin
  require ENV['TM_SUPPORT_PATH'] + '/lib/textmate'
  require ENV['TM_SUPPORT_PATH'] + '/lib/ui'
rescue
end
require 'rubygems'
require 'rush'
require 'rush/shell'
require 'rushmate/textmate_helper'
require 'rushmate/command'
require 'rushmate/exit'
require 'rushmate/user_input'