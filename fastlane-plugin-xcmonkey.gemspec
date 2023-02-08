lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/xcmonkey/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-xcmonkey'
  spec.version       = Fastlane::Xcmonkey::VERSION
  spec.author        = 'Alexey Alter-Pesotskiy'
  spec.email         = 'a.alterpesotskiy@mail.ru'

  spec.summary       = 'xcmonkey is a tool for doing randomised UI testing of iOS apps'
  spec.homepage      = 'https://github.com/alteral/fastlane-plugin-xcmonkey'
  spec.license       = 'MIT'

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = Dir['lib/**/*'] + %w(README.md LICENSE)
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.4'

  spec.add_dependency('xcmonkey', '1.3.1')

  spec.metadata['rubygems_mfa_required'] = 'true'
end
