# frozen_string_literal: true

ActiveAdmin.register User do
  permit_params :email, :password

  filter :id
  filter :email
  filter :current_sign_in_ip
  filter :last_sign_in_ip
  filter :failed_attempts
  filter :created_at
  filter :updated_at

  # Add or remove columns to toggle their visiblity in the index action
  index do
    selectable_column
    id_column
    column :email
    column :sign_in_count
    column :current_sign_in_at
    column :last_sign_in_at
    column :current_sign_in_ip
    column :last_sign_in_ip
    column :failed_attempts
    column :created_at
    column :updated_at
    actions
  end

  # Add or remove fields to toggle their visibility in the form
  form do |f|
    f.inputs do
      f.input :email
      f.input :password
    end
    f.actions
  end
end
