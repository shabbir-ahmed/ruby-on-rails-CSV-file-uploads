class History < ApplicationRecord
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            History.create! row.to_hash
        end
    end
end
