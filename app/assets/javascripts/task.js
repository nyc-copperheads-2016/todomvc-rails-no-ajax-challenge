var Task = {
  bindEvents: function() {
    $('.task-form form').on('ajax:success', this.appendTask);
    $('.task-form form').on('ajax:error', this.appendErrors);
  },

  appendTask: function(e, data) {
    $('.errors').html('');
    $('.tasks').prepend(data);
  },
  appendErrors: function(e, data) {
    $('.errors').html(data.responseText);
  }
}

$(document).ready(function() {
  Task.bindEvents();
})
