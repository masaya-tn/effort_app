class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.float :count_times, null: false
      t.string :subject, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
