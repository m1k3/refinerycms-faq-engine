# Encoding: UTF-8

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-faqs'
  s.author            = 'Christian Rijke'
  s.version           = '1.0'
  s.description       = 'Ruby on Rails Faqs extension for Refinery CMS'
  s.date              = '2012-09-04'
  s.summary           = 'Faqs extension for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir["{app,config,db,lib}/**/*"] + ["readme.md"]

  # Runtime dependencies
  s.add_dependency             'refinerycms-core',    '~> 2.0.10'
  s.add_dependency             'acts_as_indexed',     '~> 0.7'

  # Development dependencies (usually used for testing)
  s.add_development_dependency 'refinerycms-testing', '~> 2.1.0.dev'
end
