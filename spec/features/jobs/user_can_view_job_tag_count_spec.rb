require 'rails_helper'

RSpec.describe "User can view how many jobs have listed tags" do
  scenario "can see the number of tags that are associated with jobs" do
    company = Company.create!(name: "ESPN")
    job = company.jobs.create!(title: "Developer", level_of_interest: 70, city: "Denver")
    tag_1 = job.tags.create!(name: "Software")
    tag_2 = job.tags.create!(name: "Good-Location")

    visit company_job_path(company, job)
    save_and_open_page
    expect(page).to have_content(company.name)
    expect(page).to have_content(job.title)
    expect(page).to have_content(tag_1.name)
    expect(page).to have_content(tag_2.name)
    expect(page).to have_content(tag_1.total)
    expect(page).to have_content(tag_2.total)
  end
end
