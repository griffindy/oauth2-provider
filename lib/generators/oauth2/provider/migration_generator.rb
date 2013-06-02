require 'rails/generators/active_record'

module Oauth2
  module Provider
    class MigrationGenerator < ::Rails::Generators::Base
      include Rails::Generators::Migration
      source_root File.expand_path('../templates', __FILE__)
      desc "Installs OAuth2::Provider migration file."

      def install
        # invoke(OAuth2::Provider::MigrationGenerator)
        migration_template 'create_oauth2_provider_tables.rb', 'db/migrate/create_oauth2_provider_tables.rb'
      end

      def self.next_migration_number(dirname)
        ActiveRecord::Generators::Base.next_migration_number(dirname)
      end
    end
  end
end
