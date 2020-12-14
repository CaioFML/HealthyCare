class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true

    layout :seleciona_layout

    protected
      def seleciona_layout
            if user_signed_in?
                "admin"
            else
                "application"
            end
      end
end
