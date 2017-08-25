source 'https://rubygems.org'

gemspec

unless defined?(COMPONENTS)
  COMPONENTS = %w(core mapper repository changeset)
end

COMPONENTS.each do |component|
  gem "rom-#{component}", path: Pathname(__dir__).join(component).realpath
end

gem 'dry-types', git: 'https://github.com/dry-rb/dry-types', branch: 'master'
gem 'dry-struct', git: 'https://github.com/dry-rb/dry-struct', branch: 'skip-overridding-attr-readers'

group :sql do
  gem 'sequel', '~> 4.45'
  gem 'sqlite3', platforms: [:mri, :rbx]
  gem 'jdbc-sqlite3', platforms: :jruby
  gem 'pg', platforms: [:mri, :rbx]
  gem 'jdbc-postgres', platforms: :jruby
  gem 'rom-sql', git: 'https://github.com/rom-rb/rom-sql.git', branch: 'master'
end

group :test do
  gem 'rspec', '~> 3.6'
  gem 'inflecto'
  gem 'simplecov', platforms: :mri
end

group :tools do
  gem 'mutant'
  gem 'mutant-rspec'
  gem 'byebug', platforms: :mri
  gem 'pry-byebug'
end

group :benchmarks do
  gem 'hotch', platforms: :mri
  gem 'benchmark-ips'
  gem 'activerecord', '~> 5.0'
end
