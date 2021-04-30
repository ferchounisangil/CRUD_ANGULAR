var app = angular.module('myApp', [])



app.controller('usersController', function($scope, $http){
	
	

	$scope.fetchAllUsers = function(){
		$http.get('http://localhost:8000/api/users').then(function(response){
			$scope.users = response.data;
		});
	};
	

	$scope.fetchAllUsers();

	$scope.storeUser = function(){

		var dataObj = {
			nombre: $scope.nombre,
			telefono: $scope.telefono,
			ciudad: $scope.ciudad,
		}

		$http.post('http://localhost:8000/api/users', dataObj).then(function(response){
			if(response.data.message){
				$scope.storeUserResponse = response.data;
			} else {
				$scope.nombre = "";
				$scope.telefono = "";
				$scope.ciudad = "";
				$scope.storeUserResponse = "";
				$scope.fetchAllUsers();
				// $scope.showId = response.data.id;
				// console.log($scope.showId);
			}
			
		});
	};

	$scope.showUser = function(id){
		
		$http.get('http://localhost:8000/api/users' + id).then(function(response){
			$scope.showNombre = response.data.nombre;
			$scope.showTelefono = response.data.telefono;
			$scope.showCiudad = response.data.ciudad;
			

		});
	};

	$scope.updateUser = function(id){
		
	
		var dataObj = {
			nombre: $scope.showNombre,
			telefono: $scope.showTelefono,
			ciudad: $scope.showCiudad,	
			
		}
	
		$http.put('http://localhost:8000/api/users/' + id, dataObj).then(function(response){
			if(response.data.message){
				$scope.updateUserResponse = response.data;
			} else {
				$('#myModal').modal('hide');
				$scope.fetchAllUsers();
		
			}
		});
	};

	$scope.destroyUser = function(id){
		$http.delete('http://localhost:8000/api/users/' + id).then(function(response){
			$scope.destroyUserResponse = response.data;
			console.log(response.data);
			$scope.fetchAllUsers();
		});
	};




});
