require 'pry-byebug'
require 'xcodeproj'

project = Xcodeproj::Project.open('Sample/Sample.xcodeproj')
target = project.native_targets.first
# binding.pry
puts "USER_DEFINED: #{target.resolved_build_setting('USER_DEFINED', true)}"
puts "OTHER_LDFLAGS: #{target.resolved_build_setting('OTHER_LDFLAGS', true)}"

