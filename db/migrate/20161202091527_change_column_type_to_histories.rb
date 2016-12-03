class ChangeColumnTypeToHistories < ActiveRecord::Migration[5.0]
    def change
        change_column :histories, :url,  :text
        change_column :histories, :title,  :text
    end
end
