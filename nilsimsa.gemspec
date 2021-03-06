SPEC = Gem::Specification.new do |spec|
  # Descriptive and source information for this gem.
  spec.name = "nilsimsa"
  spec.version = "1.1.1"
  spec.summary = "Computes Nilsimsa values.  Nilsimsa is a distance based hash"
  spec.author = "Jonathan Wilkins"
  spec.email = "jwilkins[at]nospam[dot]bitland[dot]net"
  spec.extra_rdoc_files = ["README.md"]

  spec.files = %w(Gemfile Rakefile README.md nilsimsa.gemspec
                  lib/nilsimsa.rb
                  bin/nilsimsa
                  examples/simple.rb
                  ext/extconf.rb ext/nilsimsa.c)
  spec.executables = ['nilsimsa']

  if RUBY_PLATFORM == 'java'
    spec.platform = 'java'
  else
    spec.extensions = ['ext/extconf.rb']
  end
end
