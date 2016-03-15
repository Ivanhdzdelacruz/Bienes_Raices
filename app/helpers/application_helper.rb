module ApplicationHelper

  def set_cities
    City.all
  end

  def set_types
    PropertyType.all

  end

  def set_categories
    PropertyCategory.all
  end

  def set_agents
    Agent.all
  end

  def price_options
    [
        ["$0-$1,000", '0/1000'],
        ["$1,000-$2,000", '1000/2000'],
        ["$2,000-$3,000", '2000/3000'],
        ["$3,000-$6,000", '3000/6000'],
        ["$6,000-$12,000", '6000/12000'],
    ]
  end
end
