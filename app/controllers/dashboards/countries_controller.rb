class Dashboards::CountriesController < ApplicationController
  def show
    @report_confirmed = CoronaDatum.where(reported_at: CoronaDatum.propheted_at).sum(:confirmed)
    @report_deaths    = CoronaDatum.where(reported_at: CoronaDatum.propheted_at).sum(:deaths)
    @confirmed        = CoronaDatum.datasource_country_for(:confirmed, 'Confirmados')
    @deaths           = CoronaDatum.datasource_country_for(:deaths, 'Mortes')
  end
end
