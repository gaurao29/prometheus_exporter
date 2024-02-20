# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "prometheus_exporter/version"

Gem::Specification.new do |spec|
  spec.name                 = "prometheus_exporter"
  spec.version              = PrometheusExporter::VERSION
  spec.authors              = ["Sam Saffron"]
  spec.email                = ["sam.saffron@gmail.com"]

  spec.summary              = %q{Prometheus Exporter}
  spec.description          = %q{Prometheus metric collector and exporter for Ruby}
  spec.homepage             = "https://github.com/discourse/prometheus_exporter"
  spec.license              = "MIT"

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features|bin)/})
  end
  spec.bindir               = "bin"
  spec.executables          = ["prometheus_exporter"]
  spec.require_paths        = ["lib"]

  spec.add_dependency "webrick"
end
