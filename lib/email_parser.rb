# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require "pry"

class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    if @emails.include?(",")
      csv = @emails.split(", ") #CSV email split

      csv.each do |email|
        if email.include?(" ")
          csv[csv.index(email)] = email.split(" ")
        end
      end
      csv.flatten.uniq
    else
      dlm = @emails.split(" ") #delimited emails
      dlm.uniq
    end
  end



end
