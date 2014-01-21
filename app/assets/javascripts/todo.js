var Todo = {
  elements: {
    todoList: '.todos',
    todoForm: '.todo-form',
    errors: '.todo-form .errors'
  },

  bindEvents: function() {
    var self = this;
    $(this.elements.todoForm).on('ajax:success', function(e, data) { self.appendTodo(data); });
    $(this.elements.todoForm).on('ajax:error', function(e, data) { self.appendErrors(data); });
  },
  appendTodo: function(data) {
    this.clearErrors();
    $(this.elements.todoList).prepend(data);
  },
  appendErrors: function(data) {
    $(this.elements.todoForm).children('.errors').prepend(data.responseText);
  },
  clearErrors: function() {
    $(this.elements.errors).html('');
  }
}

$(document).ready(function() {
  Todo.bindEvents();
});
