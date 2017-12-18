# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  netid              :string
#  admin              :boolean
#  first_name         :string
#  last_name          :string
#  email              :string
#  sign_in_count      :integer          default(0), not null
#  current_sign_in_at :datetime
#  last_sign_in_at    :datetime
#  current_sign_in_ip :string
#  last_sign_in_ip    :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  deleted_at         :datetime
#  deleted_by         :string
#
# Indexes
#
#  index_users_on_deleted_at  (deleted_at)
#  index_users_on_deleted_by  (deleted_by)
#  index_users_on_email       (email) UNIQUE
#

class User < ApplicationRecord
  devise :ldap_authenticatable, :trackable, :timeoutable

  validates :netid, presence: true
end
