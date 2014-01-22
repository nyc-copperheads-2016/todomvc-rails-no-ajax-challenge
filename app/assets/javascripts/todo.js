var Todo = {
  els: {
    todoList: '.todos',
    todoEdit: '.todo a.edit',
    todoForm: '.todo-form form',
    editForm: '.edit_todo',
    errors: '.todo-form .errors'
  },

  bindEvents: function() {
    var self = this;
    $(this.els.todoForm).on('ajax:success', function(e, data) { self.appendTodo(data); });
    $(this.els.todoForm).on('ajax:error', function(e, data) { self.appendErrors(data); });
    $(this.els.todoList).on('ajax:success', this.els.todoEdit, this.showEditForm);
    $(this.els.todoList).on('ajax:success', this.els.editForm, this.updateTodo);
    $(this.els.todoList).on('ajax:error', function(e, data) { self.appendErrors(data); })
  },

  appendTodo: function(data) {
    this.clearErrors();
    $(this.els.todoList).prepend(data);
  },

  appendErrors: function(data) {
    this.clearErrors();
    $(this.els.errors).append(data.responseText);
  },

  clearErrors: function() {
    $(this.els.errors).html('');
  },

  showEditForm: function(e, data) {
    $(this).parents('.todo').html(data);
  },

  updateTodo: function(e, data) {
    $(this).parents('.todo').html(data)
  }
}

$(document).ready(function() {
  Todo.bindEvents();
});
