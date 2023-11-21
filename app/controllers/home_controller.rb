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
      


      @result = task_37(arr_v).join(' ')
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


  def task_37(arr)
    fin_index = 0
    indexx =0
    max_elem = arr.max
    neg_last_array = arr.select {|x| x<0}
    arr.each do |element|
      if element %7 !=0 && element>=0
        last_el = element
        fin_index = indexx
        break
      end
    indexx+=1
    end
    if arr.select { |x| x%7!=0 }.count==0
      flash[:alert] = "no values % 7=0."
      redirect_to root_path
    else
      arr[fin_index] = max_elem
    end
    return arr
  end
end







