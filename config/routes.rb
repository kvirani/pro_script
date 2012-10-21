MedicationReconciliation::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.

  resources :patients do
    resources :patient_drugs do
      member do
        put :discontinue
      end
    end
  end

  get 'start' => 'patient_search#new', :as => :start
  post 'start' => 'patient_search#create'

  root :to => 'home#index'



  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
