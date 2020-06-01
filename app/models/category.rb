class Category < ApplicationRecord
    has_many :posts, dependent: :nullify

    def self.find_by_handle(handle)
      find_by(handle: handle)
    end

    def self.find_by_handle!(handle)
      find_by_handle(handle) ||
        raise(ActiveRecord::RecordNotFound)
    end
end
