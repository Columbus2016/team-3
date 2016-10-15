app.controller('ChatCtrl',function($scope,$http){
    var socket = io();
    $scope.currRoom;


   $http.get('/getRoomNum')
       .success(function(data){
           $scope.currRoom = data;
       });

    $http.get('/getSessions')
        .success(function(data){
            $scope.sessions = data;
        });


   $scope.addRoom = function(){
       socket.emit('add room',{user1:1,user2:2});
   }



});