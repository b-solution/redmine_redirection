# require_dependency 'projects_controller'

module  Patch
  module ProjectsControllerPatch
    def self.included(base)
      base.extend(ClassMethods)

      base.send(:include, InstanceMethods)
      base.class_eval do

        before_action :redirect_home_project, only: :index
      end
    end
  end
  module ClassMethods
  end

  module InstanceMethods

    def redirect_home_project
      if User.current.logged?
        redirect_to projects_path
        return false
      end

    end

  end
end


