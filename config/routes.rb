Rails.application.routes.draw do
  root to: 'welcome#index'
  match 'shuffle', to: 'welcome#shuffle', via: :get
end
