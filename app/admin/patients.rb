# frozen_string_literal: true

# ActiveAdmin description for the Patient entity
ActiveAdmin.register Patient do
  sex_options = %w[Masculino Feminino]
  children_options = 0..10
  status_options = EnumHelper.translated_options(Patient.statuses, 'statuses')

  permit_params :name, :profession, :sex, :civil_state, :children, :drug_usage, :previous_treatment, :cirurgies,
                :comorbidities, :profession, :workplace, :crm, :profession, :email, :phone, :status

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
    column :status do |patient|
      I18n.t("activerecord.attributes.shared.statuses.#{patient.status}")
    end
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :sex, as: :select, collection: sex_options
      f.input :civil_state
      f.input :children, as: :select, collection: children_options
      f.input :drug_usage
      f.input :previous_treatment
      f.input :cirurgies
      f.input :comorbidities
      f.input :profession
      f.input :workplace
      f.input :crm
      f.input :phone
      f.input :email
      f.input :status, as: :select, collection: status_options
    end
    f.actions
  end
end
