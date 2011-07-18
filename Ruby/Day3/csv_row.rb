# this doesn't work yet ... will study more ruby and come back
class ActsAsCsv
	def read
		puts self.class.to_s.downcase + '.txt'
		file = File.new(self.class.to_s.downcase + '.txt')
		@headers = file.gets.chomp.split(', ')
		
		file.each do |row|
			@result << row.chomp.split(', ')
		end
	end
	
	def headers
		@headers
	end
	
	def csv_contents
		@result
	end
	
	def initialize
		@result = []
		read
		@result
	end
	
end

class CsvRow < ActsAsCsv

	def self.method_missing name, *args
		fieldName = name
		theIndex @header.name
		yield @result[theIndex]
	end
	
end

csv = CsvRow.new
# csv.each {|row| puts row.Chips}
puts csv.Chips
