class Project < ApplicationRecord
    before_create :set_default_role
    
    def set_default_role
        self.users_id ||= 1
    end
end
