require 'rails_helper'

# On the right side of this RSpec.feature, write the test item name like "task management feature" (grouped by do ~ end)
RSpec.feature "Question management function", type: :feature do
  # In scenario (alias of it), write the processing of the test for each item you want to check
  background  do
   @user= User.create!(name: "Armel", email: 'armel@gmail.com',password: '1234567',user_type:"Lecturer",admin:"true")

end

scenario "Course Creation" do
  #  @course=Course.create!(code:"INSY416", name:"Network Admin", credit:3, user_id:@user.id)
  #  @mark=Mark.create!(title:"Admin mark", content:"First notes", course_id:@course.id)
  #  assert @mark
end
  it "Validation does not pass if the content is empty" do
    # @course=Course.create!(code:"INSY416", name:"Network Admin", credit:3, user_id:@user.id)
    # mark=Mark.create!(title:"Admin mark", content:" can pass", course_id:@course.id )
    # expect(mark).to be_valid
  end
  
  end