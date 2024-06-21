module ApplicationHelper
    include Pagy::Frontend

    def is_new_action?
        action_name == 'new'
    end
end