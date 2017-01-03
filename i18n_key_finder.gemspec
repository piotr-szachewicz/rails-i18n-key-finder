# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'i18n_key_finder/version'

Gem::Specification.new do |spec|
  spec.name          = "i18n_key_finder"
  spec.version       = I18nKeyFinder::VERSION
  spec.authors       = ["Piotr Szachewicz"]
  spec.email         = ["piotr.szachewicz@gmail.com"]

  spec.summary       = %q{Shows i18n keys instead of translation values.}
  spec.description   = %q{That way it's easier to find where does your app take i18n keys from.}
  spec.homepage      = "https://github.com/piotr-szachewicz/rails-i18n-keys"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
