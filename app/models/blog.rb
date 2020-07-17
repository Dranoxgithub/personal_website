class Blog < ApplicationRecord
    has_rich_text :body
    
    def next_post
        self.class.where("created_at < ?", created_at).order(created_at: :desc).first
    end
      
    def previous_post
        self.class.where("created_at > ?", created_at).order(created_at: :asc).first
    end
end
