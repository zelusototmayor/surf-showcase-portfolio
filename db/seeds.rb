# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Clear existing projects to make this idempotent
Project.destroy_all

# Create portfolio projects
projects_data = [
  {
    title: "Website Redesign Briefcase",
    description: "Collection of website redesigns and UI improvements",
    url: "https://zalu.surfmyhours.com",
    image_path: "/placeholder.svg"
  },
  {
    title: "UX Audit App",
    description: "Tool for conducting comprehensive UX audits",
    url: "https://zalu.surfmyhours.com",
    image_path: "/placeholder.svg"
  },
  {
    title: "Task Management Dashboard",
    description: "Productivity app for managing daily tasks and workflows",
    url: "https://zalu.surfmyhours.com",
    image_path: "/placeholder.svg"
  },
  {
    title: "Weather Analytics Tool",
    description: "Real-time weather data visualization and forecasting",
    url: "https://zalu.surfmyhours.com",
    image_path: "/placeholder.svg"
  },
  {
    title: "Portfolio Generator",
    description: "Automated tool for creating developer portfolios",
    url: "https://zalu.surfmyhours.com",
    image_path: "/placeholder.svg"
  },
  {
    title: "Social Media Scheduler",
    description: "Content planning and scheduling automation",
    url: "https://zalu.surfmyhours.com",
    image_path: "/placeholder.svg"
  }
]

projects_data.each do |project_attrs|
  Project.create!(project_attrs)
end

puts "Created #{Project.count} projects"
