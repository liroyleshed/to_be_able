# frozen_string_literal: true

require_relative "lib/to_be_able/version"

Gem::Specification.new do |spec|
  spec.name = "to_be_able"
  spec.version = ToBeAble::VERSION
  spec.authors = ["Liroy Leshed"]
  spec.email = ["liroy@tycooncrm.com"]

  spec.summary = "Simple authorization solution for Rails."
  spec.description = "Simple authorization solution for Rails which is decoupled from user roles. All permissions are stored in a single location."
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # spec.files = Dir.chdir(File.expand_path(__dir__)) do
 #    `git ls-files -z`.split("\x0").reject do |f|
 #      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
 #    end
 #  end
 #  spec.bindir = "exe"
 #  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
 #  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
