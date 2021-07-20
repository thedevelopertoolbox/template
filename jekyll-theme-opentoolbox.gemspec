# frozen_string_literal: true

Gem::Specification.new do |spec|
	spec.name          = "jekyll-theme-opentoolbox"
	spec.version       = "1.0.1"
	spec.authors       = ["Mattia Sinisi", "Gloria Desideri"]

	spec.summary       = "A flexible, compact and automatic theme."
	spec.description   = "This is a Jekyll theme used for GitHub pages, it has various parts that are generated at runtime."
	spec.homepage      = "http://the.opentoolbox.online"
	spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

	spec.metadata["homepage_uri"] = spec.homepage
	spec.metadata["source_code_uri"] = "https://github.com/opentoolbox/template"

	# Specify which files should be added to the gem when it is released.
	# The `git ls-files -z` loads the files in the RubyGem that have been added into git.
	spec.files = Dir.chdir(File.expand_path(__dir__)) do
	`git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
	end
	spec.bindir        = "exe"
	spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
	spec.require_paths = ["lib"]

	# Uncomment to register a new dependency of your gem
	spec.add_dependency "github-pages"
	spec.add_dependency "jekyll-environment-variables"
	spec.add_dependency "jekyll-mentions"
	spec.add_dependency "jekyll-target-blank"

	spec.add_dependency "bulma-clean-theme"

	spec.add_dependency "webrick", "~> 1.7"
	spec.add_dependency "rouge"

	spec.add_development_dependency "bundler"
	spec.add_development_dependency "rspec"

	# For more information and examples about making a new gem, checkout our
	# guide at: https://bundler.io/guides/creating_gem.html
end