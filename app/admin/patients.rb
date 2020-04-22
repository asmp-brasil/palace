ActiveAdmin.register Patient do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :sex, :civil_state, :children, :drug_usage, :previous_treatment, :cirurgies, :comorbidities, :profession, :workplace, :crm, :status, :phone, :email
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :sex, :civil_state, :children, :drug_usage, :previous_treatment, :cirurgies, :comorbidities, :profession, :workplace, :crm, :status, :phone, :email]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  # Limit actions available to your users by adding them to the 'except' array
  # actions :all, except: []

  # Add or remove filters (you can use any ActiveRecord scope) to toggle their
  # visibility in the sidebar
  # filter :id
  # filter :name
  # filter :sex
  # filter :civil_state
  # filter :children
  # filter :drug_usage
  # filter :previous_treatment
  # filter :cirurgies
  # filter :comorbidities
  # filter :profession
  # filter :workplace
  # filter :crm
  # filter :status
  # filter :phone
  # filter :email
  # filter :created_at
  # filter :updated_at

  # Add or remove columns to toggle their visiblity in the index action
  # index do
  #   selectable_column
  #   id_column
  #   column :id
  #   column :name
  #   column :sex
  #   column :civil_state
  #   column :children
  #   column :drug_usage
  #   column :previous_treatment
  #   column :cirurgies
  #   column :comorbidities
  #   column :profession
  #   column :workplace
  #   column :crm
  #   column :status
  #   column :phone
  #   column :email
  #   column :created_at
  #   column :updated_at
  #   actions
  # end

  # Add or remove rows to toggle their visiblity in the show action
  # show do |patient|
  #   row :id
  #   row :name
  #   row :sex
  #   row :civil_state
  #   row :children
  #   row :drug_usage
  #   row :previous_treatment
  #   row :cirurgies
  #   row :comorbidities
  #   row :profession
  #   row :workplace
  #   row :crm
  #   row :status
  #   row :phone
  #   row :email
  #   row :created_at
  #   row :updated_at
  # end

  # Add or remove fields to toggle their visibility in the form
  # form do |f|
  #   f.inputs do
  #     f.input :name
  #     f.input :sex
  #     f.input :civil_state
  #     f.input :children
  #     f.input :drug_usage
  #     f.input :previous_treatment
  #     f.input :cirurgies
  #     f.input :comorbidities
  #     f.input :profession
  #     f.input :workplace
  #     f.input :crm
  #     f.input :status
  #     f.input :phone
  #     f.input :email
  #   end
  #   f.actions
  # end
  
end
