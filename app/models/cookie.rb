# require 'csv'
class Cookie < ApplicationRecord

    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            Cookie.create! row.to_hash
			#=> If you need to update session ID then create functionality here
        end
    end
end
