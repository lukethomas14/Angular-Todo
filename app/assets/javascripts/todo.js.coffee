@TodoCtrl = ($scope) ->
	$scope.todos = [
		{name: "Take out the Trash"}
		{name: "Clean up the Basement"}
		{name: "Do the Dishes"}
	]

	$scope.addTodo = ->
		$scope.todos.push($scope.newTodo)
		$scope.newTodo = {}

	$scope.deleteTodo = ->
		$scope.todos.splice($scope.todos.indexOf($scope.todo), 1)	
