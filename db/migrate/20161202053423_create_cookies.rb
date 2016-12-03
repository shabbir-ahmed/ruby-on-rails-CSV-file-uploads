class CreateCookies < ActiveRecord::Migration[5.0]
    def change
        create_table :cookies do |t|
            t.string :host_key
            t.string :name
            t.string :last_access_utc
            t.string :creation_utc

            t.timestamps
        end
    end
end
