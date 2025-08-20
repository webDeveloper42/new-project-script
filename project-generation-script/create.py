from pathlib import Path
import shutil

print("What is the name of your new project?")
project_name = input().strip()

print("Creating project template...")

# Correct destination: ~/Documents/projects/<project_name>
home_projects_dir = Path.home() / "Documents" / "projects" / project_name

# Template source
project_template = Path.home() / "Documents" / "projects" /  "scripts" / "new-project-script" / "project-template"

# Copy template to new project path
shutil.copytree(project_template, home_projects_dir, dirs_exist_ok=True)

print("Done!")
print(f"{project_name} is created at: {home_projects_dir}")
