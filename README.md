# TechForing Project Management API  

A RESTful API built with Django and Django REST Framework for managing users, projects, tasks, and comments.  

---

## Features  
- User registration and authentication using JWT.  
- CRUD operations for projects, tasks, and comments.  
- Role-based project management (Admin/Member roles for projects).  

---

## Prerequisites  
- Python 3.12  
- MySQL  
- Virtual Environment  

---

## Installation  

### Step 1: Clone the Repository  
bash  
git clone https://github.com/FahimFoysalApurba/TechForing 
cd TechForing_Project

###Step 2: Set Up a Virtual Environment
python -m venv venv  
On Windows: venv\Scripts\activate

###Step 3: Install Dependencies:
pip install -r requirements.txt  


###Step 4: Configure MySQL Database
Create a MySQL database (e.g., tech_foring_db).
Update the DATABASES section in TechForing/settings.py with your credentials:

DATABASES = {  
    'default': {  
        'ENGINE': 'django.db.backends.mysql',  
        'NAME': 'tech_foring_db',  
        'USER': 'your_mysql_username',  
        'PASSWORD': 'your_mysql_password',  
        'HOST': 'localhost',  
        'PORT': '3306',  
    }  
}


###Step 5: Apply Migrations
python manage.py makemigrations  
python manage.py migrate 


###Step 6: Create a Superuser
command: python manage.py createsuperuser


###Step 7: Start the Server
command: python manage.py runserver 



###Step 8: User Management
Register User

URL: http://127.0.0.1:8000/users/register/
Method: POST
Data:
(json-format)

{  
    "username": "example",  
    "email": "example@example.com",  
    "password": "password123",  
    "first_name": "First",  
    "last_name": "Last"  
}  


###Step 9: Login User
URL: http://127.0.0.1:8000/users/login/
or: http://127.0.0.1:8000/admin
Method: POST
Data:
{  
    "username": "example",  
    "password": "password123"  
}  


###Step 10:
Project Management

URL: http://127.0.0.1:8000/projects/
Method: POST
Data:
{  
    "name": "Project Name",  
    "description": "Project Description"  
}  


###Step 11: Task Management
URL: http://127.0.0.1:8000/projects/{id}/tasks/
Method: GET
Create Task

URL: http://127.0.0.1:8000/projects/{id}/tasks/
Method: POST
Data:
{  
    "title": "Task Title",  
    "description": "Task Description",  
    "status": "To Do",  
    "priority": "High",  
    "due_date": "2024-12-31T23:59:59Z"  
} 



##Step 12: Comment Management
URL: http://127.0.0.1:8000/tasks/{id}/comments/
Method: GET
add comment

URL: /tasks/{id}/comments/
Method: POST
Data:
{  
    "content": "This is a comment."  
}  




Note: API Documentation
The full API documentation is available via "Swagger":

URL: /swagger/

