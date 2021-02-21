# == Schema Information
#
# Table name: results
#
#  id          :bigint           not null, primary key
#  count_times :float(24)        not null
#  start_time  :datetime
#  subject     :string(255)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint
#
# Indexes
#
#  index_results_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Result < ApplicationRecord
  belongs_to :user
end
