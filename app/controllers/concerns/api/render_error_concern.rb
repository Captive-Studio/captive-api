# frozen_string_literal: true

module Api
  module RenderErrorConcern
    extend ActiveSupport::Concern

    included do
      rescue_from ActiveRecord::RecordNotFound, with: :not_found
      rescue_from CanCan::AccessDenied do |exception|
        render_error_from_exception(exception, status: :forbidden)
      end

      protected

      def render_error_from_object(
        object,
        status: :unprocessable_entity,
        message: 'Erreur de validation'
      )
        errors = object.errors.messages
        Rails.logger.error("Impossible de sauvagarder l'objet #{object.class} : #{errors}")
        render_error(
          message: message, errors: errors, status: :unprocessable_entity
        )
      end

      def render_error_from_exception(exception, status:, message: nil)
        render_error(
          message: exception.message, errors: exception.message, status: status
        )
      end

      def not_found
        render_error(message: 'Erreur not found', status: :not_found)
      end

      def render_error(message:, status:, errors: [], code: nil)
        code ||= status.to_s
        render json: {
                 message: message,
                 errors: errors,
                 code: code,
               },
               status: status
      end
    end
  end
end
