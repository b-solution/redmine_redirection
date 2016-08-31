Redmine::Plugin.register :redmine_redirection do
  name 'Redmine Redirection plugin'
  author 'Bilel kedidi'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
end

Rails.application.config.to_prepare do
  WelcomeController.send(:include,  Patch::ProjectsControllerPatch)
end

