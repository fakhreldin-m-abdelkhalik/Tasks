class Numeric
  @@currencies = { dollar: 7.15, euro: 9.26, yen: 0.068 ,egp: 1 }
 
  	def convert_currency (options= {})
      (self*@@currencies[options[:from]])/(@@currencies[options[:to]])
    end
	

	def self.add_currency (new_currency , rate)

	@@currencies.store(new_currency, rate) 
	
	end

end
