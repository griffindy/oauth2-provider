require 'rails/generators/active_record'

class OAuth2::Provider::MigrationGenerator < ::Rails::Generators::Base
  include Rails::Generators::Migration
  source_root File.expand_path('../templates', __FILE__)
  desc "Installs OAuth2::Provider migration file."

  def install
    migration_template 'create_oauth2_provider_tables.rb', 'db/migrate/create_oauth2_provider_tables.rb'
  end

  def self.next_migration_number(dirname)
    ActiveRecord::Generators::Base.next_migration_number(dirname)
  end
end
