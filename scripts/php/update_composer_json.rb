#!/usr/bin/env ruby
filename = "composer.json"
content = File.read(filename)

development_dependency_marker = %q{"friendsofphp/php-cs-fixer": "~1.12"}
development_dependency_marker_plus_injection =
%q{"friendsofphp/php-cs-fixer": "~1.12",
        "php-vcr/php-vcr": "^1.4"}

updated_content = content.dup
updated_content.sub!(development_dependency_marker,
                     development_dependency_marker_plus_injection)

File.open(filename, "w") do |file|
  file.write(updated_content)
end
