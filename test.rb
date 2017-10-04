require 'xcodeproj'

project = Xcodeproj::Project.open('Sample/Sample.xcodeproj')
target = project.native_targets.first
build_configuration = target.build_configurations[0]
puts "RESOLVED: #{build_configuration.resolve_build_setting('RESOLVED', target)}"

