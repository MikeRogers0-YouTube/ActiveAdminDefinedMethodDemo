# NOTE: Deleting these engines stops the error appearing
module MissionControl
  class Engine < ::Rails::Engine
    isolate_namespace MissionControl
  end
end

MissionControl::Engine.routes.draw do
end

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :projects
  root to: 'projects#index'
end
