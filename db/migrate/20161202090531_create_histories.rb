class CreateHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :histories do |t|
      t.string :url
      t.string :title
      t.string :last_visit_time

      t.timestamps
    end
  end
end
