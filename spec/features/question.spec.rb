require 'rails_helper'

# On the right side of this RSpec.feature, write the test item name like "task management feature" (grouped by do ~ end)
RSpec.feature "Question management function", type: :feature do
  # In scenario (alias of it), write the processing of the test for each item you want to check
  background  do
   @user= User.create!(name: "Armel", email: 'armel@gmail.com',password: '1234567',user_type:"Lecturer",admin:"true")

end

scenario "Question Creation" do
    @question=Question.create!(title:"firstquestion", content:"Code Error",user_id:@user.id)
    assert @question
end

  it "Validation does not pass if the title is empty" do
    # question = Question.new(title: '', content: 'Failure test')
    # expect(question).not_to be_valid
  end

  it "Validation does not pass if content is empty" do
    # question = Question.new(title: 'web', content: '')
    # expect(question).not_to be_valid
  end 
  
  end