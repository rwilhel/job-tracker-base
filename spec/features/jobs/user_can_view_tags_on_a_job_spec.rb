require 'rails_helper'

RSpec.describe "User can view all tags on a specific job" do
  scenario "can see the name of the tags associated with the job" do
    company = Company.create!(name: "ESPN")
    job = company.jobs.create!(title: "Developer", level_of_interest: 70, city: "Denver")
    tag_1 = job.tags.create!(name: "Software")

    visit company_job_path(company, job)

    expect(page).to have_content(company.name)
    expect(page).to have_content(job.title)
    expect(page).to have_content(tag_1.name)
  end
end
