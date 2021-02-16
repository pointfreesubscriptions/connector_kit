$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require "connector_kit/version"

Gem::Specification.new do |spec|
  spec.name          = "appstore_kit_fork"
  spec.version       = ConnectorKit::VERSION
  spec.authors       = ["Vadim Lavrov"]
  spec.email         = ["vadimlavrov@hotmail.com"]

  spec.summary       = "A gem for communicating with the App Store Connect API. Forked from https://github.com/simba909/connector_kit fro tests"
  spec.description   = "A gem for communicating with the App Store Connect API. Forked from https://github.com/simba909/connector_kit fro tests"
  spec.homepage      = "https://github.com/Vadim-Lavrov/appStore_api_fork"
  spec.license       = "MIT"

  all_files  = `git ls-files`.split("\n")
  test_files = `git ls-files -- {test,spec,features}/*`.split("\n")

  spec.files         = all_files - test_files
  spec.test_files    = test_files
  spec.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

  spec.add_dependency "httparty"
  spec.add_dependency "jwt"
end
