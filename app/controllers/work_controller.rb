class WorkController < ApplicationController
  include WorkImage
  include WorkHelper

  def index
    @images_count = Image.all.count
    @selected_theme = 'Select theme to leave your answer'
    # @selected_theme = t(".def_select_theme")
    @selected_image_name = 'j1'
    @values_qty = Value.all.count
    session[:selected_theme_id] = @selected_theme # to display nothing
  end

  def choose_theme
    @themes = Theme.all.pluck(:name)
    logger.info "In WorkController#choose_theme @themes = #{@themes}"
  end

  # @note: first display_theme and show first image from image array
  def display_theme
    @image_data = {}
    I18n.locale = session[:current_locale]
    # current_user_id = current_user.id
    current_user_id = 1
    if params[:theme] == "-----" #.blank?
      theme = 'Select theme to leave your answer'
      theme_id = 1
      values_qty = Value.all.count.round
      data = { index: 0, name: 'j1', values_qty: values_qty,
               file: 'j1.png', image_id: 1, current_user_id: current_user_id, user_valued: false,
               common_avg_value: 0, value: 0 }
    else
      theme = params[:theme]
      theme_id = Theme.find_theme_id(theme)
      data = show_image(theme_id, 0)
    end
    session[:selected_theme_id] = theme_id
    image_data(theme, data)
  end

  def results_list
    # @selected_theme_id = session[:selected_theme_id]
    @selected_theme_id = 1
    res_composite_diag = Image.where(theme_id: @selected_theme_id).order('avg_value DESC')
    composite_results_size = res_composite_diag.size
    @composite_results = res_composite_diag.take(composite_results_size)
    logger.info "In WorkController#results_list @composite_results = #{@composite_results}"
    @composite_results_paged = pages_of(@composite_results, 6)
  end

end
