require 'fast-aes'

class PeopleController < ApplicationController
  def show
    person = Person.find_by_bsn(params[:id])
    if person
      render json: person
    else
      render json: Person.new(bsn: -1)
    end
  end

  def create
    person = Person.new(people_params)
    if person.save
      render json: {status: "OK"}
    else
      render json: {status: "NOT OK"}
    end
  end

  private

  def people_params
    params.require(:person).permit(:bsn, :initials, :first_name,
                                   :last_name, :house_number,
                                   :postal_code, :city, :sex)
  end

  #todo decrypt AES
end
