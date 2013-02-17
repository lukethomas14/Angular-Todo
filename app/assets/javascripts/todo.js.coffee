app = angular.module("Todo", ["ngResource"])

app.factory "Todo", ($resource) ->
	$resource("/todos/:id", {id: "@id"})

@TodoCtrl = ($scope, Todo) ->
	$scope.todos = Todo.query()

	$scope.addTodo = ->
		todo = Todo.save($scope.newTodo)
		$scope.todos.push(todo)
		$scope.newTodo = {}

