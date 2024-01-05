var initialize_calendar;
initialize_calendar = function(){
  $('.calendar').each(function(){
    var calendar = $(this);
    calendar.fullCalendar({});
  }); // Added the missing closing parenthesis here
}

$(document).on('turbolinks:load', initialize_calendar);
