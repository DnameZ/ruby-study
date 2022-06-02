require 'rails_helper'

RSpec.describe Contact, type: :model do
	
	subject {Contact.new}
	
	it "is valid with valid atributes" do
		subject.name = "Mark"
		subject.email = "email@email.com"
		subject.message = "my message"
		expect(subject).to be_valid
	end	
end
