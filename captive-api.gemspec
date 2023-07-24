require_relative "lib/captive/api/version"

Gem::Specification.new do |spec|
  spec.name        = "captive-api"
  spec.version     = Captive::Api::VERSION
  spec.authors     = ['Captive', "Clément Prod'homme"]
  spec.email       = ["clement.prod-homme@captive.fr"]
  spec.homepage    = "https://www.captive.fr/"
  spec.summary     = "Code commun des API de Captive"
  spec.description = "Code commun des API de Captive"
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Captive-Studio/captive-api"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files =
    Dir.chdir(File.expand_path(__dir__)) do
      Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
    end

  spec.add_dependency "rails", ">= 7.0.0"
  spec.add_dependency "cancancan", ">= 3.5.0"
  spec.add_dependency "oj", ">= 3.15.0"
end
