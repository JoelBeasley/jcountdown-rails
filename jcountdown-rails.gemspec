Gem::Specification.new do |s|
  s.name = 'jcountdown-rails'
  s.authors = 'Sergey Rezvanov'
  s.email = 'rezwyi@gmail.com'
  s.homepage = 'http://github.com/rezwyi/jcountdown-rails'

  s.version = '0.2.0'
  s.summary = 'A simple jQuery countdown for Rails 3 asset pipeline'
  s.files = `git ls-files`.split("\n")

  s.add_dependency 'jquery-rails'
end
