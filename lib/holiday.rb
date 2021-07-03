require 'pry'
require 'active_support'
require 'active_support/core_ext'

holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

def second_supply_for_fourth_of_july(holiday_hash)
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holidays|
     holidays.each do |name, items|
      if name.to_s == "christmas" || name.to_s == "new_years"
          items.push(supply)
      end
     end
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
   holiday_hash.each do |season, holidays|
     holidays.each do |name, items|
      if name.to_s == "memorial_day"
          items.push(supply)
      end
     end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season.to_sym][holiday_name.to_sym] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_items = []
  holiday_hash.each do |season, holidays|
    if season.to_s == "winter"
      winter_items =  holidays.values
      return winter_items.flatten
    end
  end

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  # holidays_array = []
  # #extract keys first into an array
  # holiday_hash.each do |season, holidays|
  #    holidays_array.push(holidays.keys)
  # end

  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
      holidays.each do |name, items|
        #created a helper function
        holiday_name = break_and_capitalize(name)
        puts "  #{holiday_name}: #{items.join(", ")}"
      end
  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  symbol_array = []
  #extract keys first into an array
  holiday_hash.each do |season, holidays|
    holidays.each do |name, items|
      if items.include?("BBQ")
        symbol_array.push(holidays.keys)
      end
    end
  end
  return symbol_array.flatten
end

def break_and_capitalize(holiday)
  #convert to string first
  name = holiday.to_s
  #split string @ _
  split_holi_name = name.split("_")
  #turn split array backt into string
  name = split_holi_name.join(" ")
  name.titleize
end

# holidays_array = []
#   #extract keys first into an array
#   holiday_hash.each do |season, holidays|
#     holidays.each do |name, items|
#       if items.include?("BBQ")
#         holidays_array.push(holidays.keys)
#       end
#     end
#      #holidays_array.push(holidays.keys)
#   end

# holiday_hash = {
#   :winter => {
#      :christmas => ["Lights", "Wreath"],
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