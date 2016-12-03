# require 'csv'
class Cookie < ApplicationRecord

    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            Cookie.create! row.to_hash
        end
    end
end
