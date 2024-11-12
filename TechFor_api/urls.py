from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import RegisterUserView, LoginUserView, ProjectViewSet, TaskViewSet, CommentViewSet
"""
router = DefaultRouter()
router.register(r'projects', ProjectViewSet)
router.register(r'tasks', TaskViewSet)
router.register(r'comments', CommentViewSet)

urlpatterns = [
    path('users/register/', RegisterUserView.as_view(), name='user-register'),
    path('users/login/', LoginUserView.as_view(), name='user-login'),
    path('', include(router.urls)),
]
"""

from django.urls import path
from rest_framework.routers import DefaultRouter
from .views import RegisterUserView, LoginUserView, ProjectViewSet, TaskViewSet, CommentViewSet

router = DefaultRouter()
router.register(r'projects', ProjectViewSet, basename='project')
router.register(r'tasks', TaskViewSet, basename='task')
router.register(r'comments', CommentViewSet, basename='comment')

urlpatterns = [
    path('users/register/', RegisterUserView.as_view(), name='user-register'),
    path('users/login/', LoginUserView.as_view(), name='user-login'),
]

urlpatterns += router.urls