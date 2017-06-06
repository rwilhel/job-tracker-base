require 'rails_helper'

RSpec.describe "User can view all tags on a specific job" do
  scenario "can see the name of the tags associated with the job" do
    company = Company.create!(name: "ESPN")
    job = company.jobs.create!(title: "Developer", level_of_interest: 70, city: "Denver")
    tag = Tag.create!(name: "Software")

    visit company_job_path(company, job)

    expect(page).to have_content("ESPN")
    expect(page).to have_content("Developer")
    expect(page).to have_content("Software")
  end
end
