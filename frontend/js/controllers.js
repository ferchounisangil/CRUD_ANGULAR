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
		
		$http.get('http://localhost:8000/api/users/' + id).then(function(response){
			$scope.showNombre = response.data.nombre;
			$scope.showTelefono = response.data.telefono;
			$scope.showCiudad = response.data.ciudad;
			$scope.showId = response.data.id;

		});
	};



	$scope.updateUser = function(id){
	$scope.fetchAllUsers();
	
		var dataObj = {
			nombre: $scope.nombre,
			telefono: $scope.telefono,
			ciudad: $scope.ciudad,
			
		}
	
		$http.put('http://localhost:8000/api/users/' + 2, dataObj).then(function(response){
			if(response.data.message){
				$scope.updateUserResponse = response.data;
			} else {
			
				$('#myModal').modal('hide');
				console.log(response.data);
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
