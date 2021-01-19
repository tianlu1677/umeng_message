module UmengMessage
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "This generator creates a umeng_message configuratio file at config/initializers"
      source_root File.expand_path("../templates", __FILE__)
      def copy_initializer
        template '../templates/umeng_message.rb', 'config/initializers/umeng_message.rb'
      end
    end
  end
end
