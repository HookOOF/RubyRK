class HomeController < ApplicationController
  def index

  end
  def view
    if params[:data].present?
      arr_v = params[:data].split(' ').map { |x| convert_to_i(x) }
      arr_v.each do |x|
        if x.nil?
          flash[:alert] = "Found nil in the array. Redirecting to root page."
          redirect_to root_path
          return
        end
      end
      sum_negative_elements = arr_v.select { |x| x < 0 }.sum

      first_even_index = arr_v.find_index { |x| x.even? }
      max_index = arr_v.index(arr_v.max)

      if first_even_index
        arr_v[first_even_index] = sum_negative_elements
      else
        arr_v[max_index] = sum_negative_elements
      end


      @result = arr_v.join(' ')
    else
      @result = []
    end
  end
  def convert_to_i(el)
    if el.to_i.zero? && el != 0
      nil
    elsif el.to_i.to_s.length != el.length
      nil
    else
      el.to_i
    end
  end
end

