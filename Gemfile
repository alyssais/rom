source 'https://rubygems.org'

gemspec

group :test do
  gem 'mutant'
  gem 'mutant-rspec'
  gem 'sequel'
  gem 'sqlite3', platforms: [:mri, :rbx]
  gem 'moped'
  gem 'virtus'
  gem 'jdbc-sqlite3', platforms: :jruby
  gem 'rubysl-bigdecimal', platforms: :rbx
  gem 'guard'
  gem 'guard-rspec'
end

group :benchmarks do
  gem 'activerecord'
  gem 'benchmark-ips'
end
