require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
   #{
   # :winter => {
   # :christmas =>ond argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
 #holiday_hash[:summer][:fourth_of_july ][1]
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with ["Lights", "Wreath"],
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
  # return the second element in the 4th of July array
   holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the secsupplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
 holiday_hash[:winter].each  {|holiday, supply_list| holiday_hash[:winter][holiday] = [supply_list] <<  supply

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
#holiday_hash.each do |seasons, holidays|
   # if seasons == season
    #  holiday_hash[seasons][holiday_name] = supply_array
      holiday_hash[:winter].values.flatten
    end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
holiday_hash.each do |season, data|
    puts "#{season.to_s.capitalize!}:"
    data.each do |holiday, supply|
      array = holiday.to_s.split("_")
      final_holiday = []
        array.each do |x|
          final_holiday << x.capitalize!
        end
      holiday = final_holiday.join(" ")

       supply = supply.join(", ")
      puts "  #{holiday}: #{supply}"

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
bbq_holidays = []
  hash.each do |seasons, holidays|
    hash[seasons].each do |holidays, supplies|
      hash[seasons][holidays].each do |supplies|
        if supplies == "BBQ"
          bbq_holidays << holidays
        end
      end
    end
  end
  bbq_holidays
end







