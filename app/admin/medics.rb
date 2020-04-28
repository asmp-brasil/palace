# frozen_string_literal: true

# ActiveAdmin description for Medic entity
ActiveAdmin.register Medic do
  status_options = EnumHelper.translated_options(Medic.statuses, 'statuses')

  permit_params :name, :profession, :crm, :profession, :email, :phone, :status

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
    column :name
    column :profession
    column :crm
    column :phone
    column :email
    column :status do |medic|
      I18n.t("activerecord.attributes.shared.statuses.#{medic.status}")
    end
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :profession
      f.input :crm
      f.input :phone
      f.input :email
      f.input :status, as: :select, collection: status_options
    end
    f.actions
  end
end
