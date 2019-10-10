require "pry"

class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end
end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]

### Your code below this

companies.map do |company|
    puts "#{company.name} - #{company.size}"
end

company_size = []
companies.map do |company|
    company_size << company.size 
end
company_size = company_size.reduce(:+)
puts company_size

big_companies = []
companies.map do |company|
    if company.size > 100
        big_companies << company.name
    end
    puts big_companies
end

beta_company = ""
companies.map do |company|
   if company.name == "Beta"
        beta_company = company.name
   end
end
    puts "I found #{beta_company}!"

largest_company = companies.max {|company| company.size}  
puts largest_company

sorted_companies = companies.reverse 
puts sorted_companies

