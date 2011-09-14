# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "dm-constraints"
  s.version = "1.2.0.rc2"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dirkjan Bussink"]
  s.date = "2011-09-14"
  s.description = "DataMapper plugin constraining relationships"
  s.email = "d.bussink [a] gmail [d] com"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    "Gemfile",
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "dm-constraints.gemspec",
    "lib/data_mapper/constraints/adapters/abstract_adapter.rb",
    "lib/data_mapper/constraints/adapters/do_adapter.rb",
    "lib/data_mapper/constraints/adapters/extension.rb",
    "lib/data_mapper/constraints/adapters/mysql_adapter.rb",
    "lib/data_mapper/constraints/adapters/oracle_adapter.rb",
    "lib/data_mapper/constraints/adapters/postgres_adapter.rb",
    "lib/data_mapper/constraints/adapters/sqlite_adapter.rb",
    "lib/data_mapper/constraints/adapters/sqlserver_adapter.rb",
    "lib/data_mapper/constraints/migrations/model.rb",
    "lib/data_mapper/constraints/migrations/relationship.rb",
    "lib/data_mapper/constraints/migrations/singleton_methods.rb",
    "lib/data_mapper/constraints/relationship/many_to_many.rb",
    "lib/data_mapper/constraints/relationship/one_to_many.rb",
    "lib/data_mapper/constraints/resource.rb",
    "lib/dm-constraints.rb",
    "spec/integration/constraints_spec.rb",
    "spec/isolated/require_after_setup_spec.rb",
    "spec/isolated/require_before_setup_spec.rb",
    "spec/isolated/require_spec.rb",
    "spec/rcov.opts",
    "spec/spec.opts",
    "spec/spec_helper.rb",
    "tasks/spec.rake",
    "tasks/yard.rake",
    "tasks/yardstick.rake"
  ]
  s.homepage = "http://github.com/datamapper/dm-constraints"
  s.require_paths = ["lib"]
  s.rubyforge_project = "datamapper"
  s.rubygems_version = "1.8.10"
  s.summary = "DataMapper plugin constraining relationships"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<dm-core>, ["~> 1.2.0.rc2"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rake>, ["~> 0.9.2"])
      s.add_development_dependency(%q<rspec>, ["~> 1.3.2"])
    else
      s.add_dependency(%q<dm-core>, ["~> 1.2.0.rc2"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rake>, ["~> 0.9.2"])
      s.add_dependency(%q<rspec>, ["~> 1.3.2"])
    end
  else
    s.add_dependency(%q<dm-core>, ["~> 1.2.0.rc2"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rake>, ["~> 0.9.2"])
    s.add_dependency(%q<rspec>, ["~> 1.3.2"])
  end
end

