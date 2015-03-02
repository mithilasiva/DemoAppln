
class UserCtrl

    constructor: (@$log, @UserService) ->
        @$log.debug "constructing UserController"
        @users = []
        @getAllUsers()

    getAllUsers: () ->
        @$log.debug "getAllUsers()"

        @UserService.listUsers()
        .then(
            (data) =>
                @$log.debug "Promise returned #{data.length} Users"
                @users = data
            ,
            (error) =>
                @$log.error "Unable to get Users: #{error}"
            )
            
            
     deleteUser: () ->
      @$log.debug "deleteUser()"
      @user.active = true
      @UserService.deleteUser(@$routeParams.firstName, @$routeParams.lastName, @user)
      @$location.path("/")
        
            
   
        

controllersModule.controller('UserCtrl', UserCtrl)