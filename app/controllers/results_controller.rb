class ResultsController < ApplicationController
  def index
    if params[:query].present?
      @results = PgSearch.multisearch(params[:query])
    else
      @results = PgSearch::Document.all
    end
  end
end
