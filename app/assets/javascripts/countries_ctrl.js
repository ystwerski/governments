(function () {
  "use strict";

  angular.module("app").controller("countriesCtrl", function($scope, $http) {

  	$scope.fetchData= function(){
  		$http.get("/api/v1/countries.json").then(function(response){
  			$scope.countries = response.data["countries"];
  			for(var i = 0; i < $scope.countries.length; i++){
  				$scope.countries[i].visible = true;
  			}
  		});
  	};

  	$scope.addCountry = function(countryName, countryPopulation){
  		var country = {Name: countryName, Population: countryPopulation, visible: true};

  		$http.post('api/v1/countries.json', country).then(function(response){
  			$scope.countries.push(country);
  			$scope.countryName = undefined
  			$scope.countryPopulation = undefined
  			$scope.errors = null
  		}, function(error){
  			$scope.errors = error.data.errors;
  		});

  	}


  	$scope.toggleVisible = function(country){
  		country.visible = !country.visible;
  	}

  	$scope.descending = true;
  	$scope.orderByAttribute = "Name"

  	$scope.changeOrder = function(attribute){
  		$scope.orderByAttribute = attribute;
  		$scope.descending = !$scope.descending;
  	}

  	   window.scope = $scope;
  });
})();