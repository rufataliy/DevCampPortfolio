module SetSource
    extend ActiveSupport::Concern

    included do
        before_action :source_session
    end

    def source_session
        session[:source]=params[:q] if params[:q]
    end
end