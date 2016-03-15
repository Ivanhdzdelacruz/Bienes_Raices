class PublicPropertiesController < ApplicationController
  layout 'public'

  def index
    @properties = Property.all
  end

  def category

    @category = PropertyCategory.find_by name: params[:name]
    @properties = @category.properties

    end

  def show

    @property = Property.find(params[:id])


  end

  def search

    @properties = Property.where(nil)
    @properties = @properties.with_category(params[:property_category_id]) if params[:property_category_id].present?
    @properties = @properties.with_type(params[:property_type_id]) if params[:property_type_id].present?
    @properties = @properties.with_price(params[:price]) if params[:price].present?
    @properties = @properties.with_city(params[:city_id]) if params[:city_id].present?

  end
end
