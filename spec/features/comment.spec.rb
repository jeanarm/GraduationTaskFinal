require 'rails_helper'

# On the right side of this RSpec.feature, write the test item name like "task management feature" (grouped by do ~ end)
RSpec.feature "Question management function", type: :feature do
  # In scenario (alias of it), write the processing of the test for each item you want to check
  background  do
   @user= User.create!(name: "Armel", email: 'armel@gmail.com',password: '1234567',user_type:"Lecturer",admin:"true")

end

scenario "Comment Creation" do
    # @question=Question.create!(title:"firstquestion", content:"Code Error",user_id:@user.id)
    # @comment=Comment.create!(title:"First comment ", user_id:@user.id, question_id:@question.id)
    # assert @comment
end

  it "Validation does not pass if the title is empty" do
    # comment = Comment.new(title: '')
    # expect(comment).not_to be_valid
  end


  end