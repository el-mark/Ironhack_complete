require "pry"

class Task
    attr_reader :content, :id, :created_at, :update_at
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @complete = false
        @created_at = Time.new
        @update_at = nil
        
    end
    def complete?
    	@complete
    end
    def complete!
    	@complete = true
    end
    def make_incomplete!
    	@complete = false
    end
    def update_content!(content)
    	@content = content
    	@update_at = Time.new
    end
#binding.pry
end

	