require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  n_arr=[]
  # return the second element in the 4th of July array
  holiday_hash.each do |key, value|
    value.each do |attribute, data|
      if attribute == :fourth_of_july
        data.each do |feast|
            n_arr<< feast
       end
    end
   end
  end
  n_arr[-1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
   holiday_hash.each do |key, value|
    value.each do |attribute, data|
      if attribute == :christmas
        data<< supply
    end
    if attribute == :new_years
      data<< supply
    end
   end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
   holiday_hash.each do |key, value|
    value.each do |attribute, data|
      if attribute == :memorial_day
        data<< supply
    end
   end
  end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  
  holiday_hash[season]= {holiday_name => supply_array}
   #binding.pry

 
  #return holiday_hash
  
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  ret_arr= []
  holiday_hash.each do |key, value|
    value.each do |attribute, data|
      if attribute == :christmas || attribute == :new_years
        ret_arr<< data
      end
      #binding.pry
    end
  end
ret_arr.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |key, value|
    puts "#{key.to_s.capitalize!}:"
    value.each do |attribute, data|
      #binding.pry
      if attribute.to_s.include? "_"
        str= attribute.to_s.capitalize!
        if str.include? "_"
          n_str_arr= str.split("_")
          if n_str_arr.length > 2
          n_str_arr[-1].capitalize!
          n_str_arr[-2].capitalize!
        else
          n_str_arr[-1].capitalize!
        end
          ret_str= n_str_arr.join(' ')
          ret_data= data.join(', ')
    puts "  #{ret_str}: #{ret_data}"
        end
    else
      puts "  #{attribute.to_s.capitalize!}: #{data.join(", ")}"
    end
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  ret_arr= []
  holiday_hash.each do |key, value|
    value.each do |attribute, data|
      if data.include?("BBQ")
        ret_arr<< attribute
      end
  end
end
ret_arr
end







