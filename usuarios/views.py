from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required

from django.contrib.auth.models import User
from usuarios.models import Profile
from django.db.utils import IntegrityError
# Create your views here.

def login_view(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request,user)
            return redirect('index')
        else:
            return render(request,'users/login.html', {'error':'invalid username or password'})
    return render(request, 'users/login.html')

def signup_view(request):
	if request.method == 'POST':
		username = request.POST['username']
		passwd = request.POST['passwd']
		passwd_confirmation = request.POST['passwd_confirmation']
		
		if passwd != passwd_confirmation:
			return render(request,'users/signup.html',{'error':'Password confirmation does not match'})
		try:
			user = User.objects.create_user(username = username, password = passwd)
		except:
			return render(request,'users/signup.html',{'error':'Este nombre de usuario ya existe'} )
		user.first_name = request.POST['fistName']
		#user.last_name = request.POST['lasName']
		user.email = request.POST['email']
		user.save()
		profile = Profile(user = user)
		profile.save()

		return redirect('login')
	return render(request, 'users/signup.html')


@login_required
def logout_view(request):
	logout(request)
	return redirect('login')