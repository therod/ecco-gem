# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ecco/version'

Gem::Specification.new do |spec|
  spec.name          = "ecco"
  spec.version       = Ecco::VERSION
  spec.authors       = ["Rodrigo Haenggi"]
  spec.email         = ["rodrigo@codegestalt.com"]

  spec.summary       = %q{Crawler for major news publications}
  spec.description   = %q{Ecco offers pre-programmed website crawlers in the form of Adapters.}
  spec.homepage      = "https://github.com/therod/ecco"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_dependency "curb", "~> 0.9"
  spec.add_dependency "nokogiri", "~> 1.7"
end
