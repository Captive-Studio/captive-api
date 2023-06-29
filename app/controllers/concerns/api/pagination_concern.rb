# frozen_string_literal: true

module Api
  ##
  # Défini le nombre max d'items par page à 100
  # `MAX_ITEMS_PAR_PAGE = 100`
  #
  # Défini le nombre par défaut d'items par page à 10
  # DEFAULT_NB_ITEMS_PAR_PAGE = 10
  module PaginationConcern
    extend ActiveSupport::Concern

    included do
      MAX_ITEMS_PAR_PAGE = 100
      DEFAULT_NB_ITEMS_PAR_PAGE = 10

      def pagination
        par_page = (params[:per_page] || DEFAULT_NB_ITEMS_PAR_PAGE).to_i
        par_page = MAX_ITEMS_PAR_PAGE if par_page > MAX_ITEMS_PAR_PAGE
        page = (params[:page] || 1).to_i
        @pagination ||= { page: page, per_page: par_page }
      end
    end
  end
end
