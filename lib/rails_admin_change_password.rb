require "rails_admin_change_password/engine"

module RailsAdminChangePassword
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class ChangePassword < Edit
        RailsAdmin::Config::Actions.register(self)
        
        register_instance_option(:member?) { true }
        register_instance_option(:bulkable?) { false }
        register_instance_option(:link_icon) { 'icon-cog' }
      end
    end
  end
end

require 'rails_admin/config/sections'

module RailsAdmin
  module Config
    module Sections              
      class ChangePassword < Edit
      end
    end
  end
end