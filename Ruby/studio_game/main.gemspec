Gem::Specification.new do |s| 
  s.name         = "main game"
  s.version      = "1.0.0"
  s.author       = "aayush khandelwal"
  s.email        = "aayush.khandelwal11@vinsol.com"
  s.summary      = "play and enjy"
  s.description  = File.read(File.join(File.dirname(__FILE__), 'README'))

  s.files         = Dir["{bin,lib,spec}/**/*"] + %w(LICENSE README)
  s.test_files    = Dir["spec/**/*"]
  s.executables   = [ 'main' ]

  s.required_ruby_version = '>=1.9'
  s.add_development_dependency 'rspec'
end
