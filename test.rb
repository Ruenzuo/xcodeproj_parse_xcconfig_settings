require 'pry-byebug'
require 'xcodeproj'

project = Xcodeproj::Project.open('Sample/Sample.xcodeproj')
target = project.native_targets.first
# binding.pry
puts target.resolved_build_setting('USER_DEFINED', true)