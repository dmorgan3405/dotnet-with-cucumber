class Movie < ActiveRecord::Base
  FactoryGirl.define do
    transient do
      director "Default Director"
    end

    factory :movie do
      title "Test Data Movie III"
      director_id  {Director.find_by(name: director)}.director_id
      box_office "400 Million"
      year_released "2015"
    end
  end
end