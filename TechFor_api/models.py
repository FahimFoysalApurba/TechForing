from django.db import models
from django.contrib.auth.models import AbstractUser
from django.contrib.auth.models import AbstractUser, Group, Permission


class User(AbstractUser):
    email = models.EmailField(unique=True)
    date_joined = models.DateTimeField(auto_now_add=True)

    # Override the related_name for groups and user_permissions
    groups = models.ManyToManyField(
        Group,
        related_name="custom_user_groups",  # Custom related_name
        blank=True
    )
    user_permissions = models.ManyToManyField(
        Permission,
        related_name="custom_user_permissions",  # Custom related_name
        blank=True
    )

# Project Model
class Project(models.Model):
    name = models.CharField(max_length=255)
    description = models.TextField()
    owner = models.ForeignKey(User, on_delete=models.CASCADE, related_name='owned_projects')
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name

# Project Members Model
class ProjectMember(models.Model):
    ROLE_CHOICES = [
        ('Admin', 'Admin'),
        ('Member', 'Member'),
    ]

    project = models.ForeignKey(Project, on_delete=models.CASCADE, related_name='members')
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='project_memberships')
    role = models.CharField(max_length=20, choices=ROLE_CHOICES)

# Task Model
class Task(models.Model):
    STATUS_CHOICES = [
        ('To Do', 'To Do'),
        ('In Progress', 'In Progress'),
        ('Done', 'Done'),
    ]
    PRIORITY_CHOICES = [
        ('Low', 'Low'),
        ('Medium', 'Medium'),
        ('High', 'High'),
    ]

    title = models.CharField(max_length=255)
    description = models.TextField()
    status = models.CharField(max_length=20, choices=STATUS_CHOICES, default='To Do')
    priority = models.CharField(max_length=20, choices=PRIORITY_CHOICES, default='Medium')
    assigned_to = models.ForeignKey(User, on_delete=models.SET_NULL, null=True, related_name='tasks')
    project = models.ForeignKey(Project, on_delete=models.CASCADE, related_name='tasks')
    created_at = models.DateTimeField(auto_now_add=True)
    due_date = models.DateTimeField()

# Comment Model
class Comment(models.Model):
    content = models.TextField()
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='comments')
    task = models.ForeignKey(Task, on_delete=models.CASCADE, related_name='comments')
    created_at = models.DateTimeField(auto_now_add=True)

