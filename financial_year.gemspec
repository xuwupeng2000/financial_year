# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "financial_year/version"

Gem::Specification.new do |spec|
  spec.name          = "financial_year"
  spec.version       = FinancialYear::VERSION
  spec.authors       = ["Jack Wu( [♠]]] )"]
  spec.email         = ["xuwupeng2000@gmail.com"]

  spec.summary       = %q{A gem tells you what financial year is it now, and also the date range of it}
  spec.description   = %q{A gem tells you what financial year is it now, and also the date range of it}
  spec.homepage      = "https://github.com/xuwupeng2000/financial_year"
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
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

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
