# frozen_string_literal: true

# User is a model managing people that has access to platform
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :lockable,
         :recoverable, :rememberable, :validatable,
         :trackable
end
