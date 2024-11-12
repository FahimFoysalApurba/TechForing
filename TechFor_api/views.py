from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from django.contrib.auth import authenticate
from rest_framework.permissions import IsAuthenticated
from .models import User
from .serializers import UserSerializer
from rest_framework.authtoken.models import Token
from rest_framework.status import HTTP_400_BAD_REQUEST, HTTP_200_OK

from rest_framework.authtoken.models import Token


from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.status import HTTP_201_CREATED, HTTP_400_BAD_REQUEST
from .serializers import RegisterUserSerializer

class RegisterUserView(APIView):
    def post(self, request):
        serializer = RegisterUserSerializer(data=request.data)

        # Debugging Step: Log serializer errors
        if not serializer.is_valid():
            print(serializer.errors)  # Log the errors to debug the issue
            return Response(serializer.errors, status=HTTP_400_BAD_REQUEST)

        user = serializer.save()
        return Response({
            "username": user.username,
            "email": user.email,
            "first_name": user.first_name,
            "last_name": user.last_name
        }, status=HTTP_201_CREATED)

"""
class LoginUserView(APIView):
    def post(self, request):
        username = request.data.get('username')
        password = request.data.get('password')

        user = authenticate(username=username, password=password)
        if user is not None:
            return Response({'message': 'Login successful'}, status=status.HTTP_200_OK)
        return Response({'error': 'Invalid credentials'}, status=status.HTTP_400_BAD_REQUEST)
        """
    

"""
class LoginUserView(APIView):
    def post(self, request):
        username = request.data.get("username")
        password = request.data.get("password")

        if not username or not password:
            return Response({"error": "Please provide both username and password."}, status=HTTP_400_BAD_REQUEST)

        user = authenticate(username=username, password=password)

        if user is not None:
            token, _ = Token.objects.get_or_create(user=user)
            return Response({"token": token.key}, status=HTTP_200_OK)
        else:
            return Response({"error": "Invalid credentials"}, status=HTTP_400_BAD_REQUEST)
        """
        


from rest_framework_simplejwt.tokens import RefreshToken
from rest_framework.permissions import AllowAny


class LoginUserView(APIView):
    permission_classes = [AllowAny]

    def post(self, request):
        username = request.data.get("username")
        password = request.data.get("password")

        # Check if both username and password are provided
        if not username or not password:
            return Response({"detail": "Username and password are required."}, status=400)

        # Authenticate user
        user = authenticate(username=username, password=password)

        if user is not None:
            # Generate JWT tokens
            refresh = RefreshToken.for_user(user)
            return Response({
                "refresh": str(refresh),
                "access": str(refresh.access_token),
            }, status=200)
        else:
            return Response({"detail": "Invalid credentials."}, status=400)

    

from rest_framework import viewsets
from .models import Project, Task, Comment
from .serializers import ProjectSerializer, TaskSerializer, CommentSerializer

class ProjectViewSet(viewsets.ModelViewSet):
    queryset = Project.objects.all()
    serializer_class = ProjectSerializer

class TaskViewSet(viewsets.ModelViewSet):
    queryset = Task.objects.all()
    serializer_class = TaskSerializer

class CommentViewSet(viewsets.ModelViewSet):
    queryset = Comment.objects.all()
    serializer_class = CommentSerializer


