// Hiding the notifications after a while

document.addEventListener("turbolinks:load", function() {

  var noticeNotification = document.getElementsByClassName('notification is-success global-notification');

  if(noticeNotification) {
    window.setTimeout(function() {
      Array.prototype.forEach.call(noticeNotification, function(notification) {
        notification.style.display = "none";
      })
    }, 4000);
  }
});