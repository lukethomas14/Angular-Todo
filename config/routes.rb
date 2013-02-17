AngularTest::Application.routes.draw do
  resources :todos


  root to: 'todo#index'
end
