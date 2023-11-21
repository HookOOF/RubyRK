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
      


      @result = task_26(arr_v).join(' ')
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


def task_26(arr)
  max_elem = arr.max
  min_index = arr.find_index(arr.min)
  if arr.select { |x| x < 0 }.count!=0
    arr[arr.find_index { |x| x<0 }] = max_elem
  else
    arr[min_index] = max_elem
  end
  return arr
end



def task_2(arr)
  max_sum = 0
  start_index = 0
  first_even1_index = arr.find_index { |x| x.even? }
  end_index = arr.length - 1

  while start_index < end_index
    current_sum = arr[start_index] + arr[end_index]
    if current_sum > max_sum
      max_sum = current_sum 
      @st_id = start_index 
      @ed_id = end_index
    end

    start_index += 1
    end_index -= 1
  end
  arr[first_even1_index] = max_sum
  return arr 
end

def task_30(arr)
end
end






