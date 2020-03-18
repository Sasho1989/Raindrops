require_relative 'lib/raindrops/version'

Gem::Specification.new do |spec|
  spec.name          = "raindrops"
  spec.version       = Raindrops::VERSION
  spec.authors       = ["Sasho1989"]
  spec.email         = ["caki.jova@gmail.com"]

  spec.summary       = %q{Gem for testing sounds of raindrops.}
  spec.description   = %q{Converting numbers to string which outputs sounds of raindrops.}
  spec.homepage      = "https://github.com/Sasho1989/Raindrops"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/Sasho1989/Raindrops"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Sasho1989/Raindrops"
  spec.metadata["changelog_uri"] = "https://github.com/Sasho1989/Raindrops"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
