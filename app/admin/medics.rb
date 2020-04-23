# frozen_string_literal: true

# ActiveAdmin description for Medic entity
ActiveAdmin.register Medic do
  permit_params :name, :profession, :crm, :profession, :email, :phone

  filter :id
  filter :name
  filter :profession
  filter :crm
  filter :phone
  filter :email
  filter :status

  index do
    selectable_column
    id_column
    column :id
    column :name
    column :profession
    column :crm
    column :phone
    column :email
    column :status
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :profession
      f.input :crm
      f.input :phone
      f.input :email
      f.input :status, as: :select, collection: Medic.statuses
    end
    f.actions
  end
end
