Rails.application.routes.draw do
  # Routes for the Ticket resource:
  # CREATE
  get "/tickets/new", :controller => "tickets", :action => "new"
  post "/create_ticket", :controller => "tickets", :action => "create"

  # READ
  get "/tickets", :controller => "tickets", :action => "index"
  get "/tickets/:id", :controller => "tickets", :action => "show"

  # UPDATE
  get "/tickets/:id/edit", :controller => "tickets", :action => "edit"
  post "/update_ticket/:id", :controller => "tickets", :action => "update"

  # DELETE
  get "/delete_ticket/:id", :controller => "tickets", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
