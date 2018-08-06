// implement new stuff with js
// funkyButton grabs the id demogorgon and makes the button print out the time and date but in eastern daylight time
function funkyButton(){
    document.getElementById("demogorgon").innerHTML = Date();

}

function big(x) {
    x.style.height = "64px";
    x.style.width = "64px";
}

function small(x) {
    x.style.height = "32px";
    x.style.width = "32px";
}

function myFunc() {
    alert("ayyye ty for using Pappy's Pizza app!");
}

function yourHistory() {
    var times = history.length;
document.write('You\'ve been to '+times+' site(s) in this browser session.');

} 
//setting the countdown date
var countDown = new Date("Aug 8, 2018 13:21:22").getTime();

// updates the count every second
var x = setInterval(function() {

//getting todays date
var now = new Date().getTime();

// figures the distance between now and countdown
var distance = countDown - now;

// math for the time of the second,min,hour,and day
var days = Math.floor(distance / (1000 * 60 * 60 * 24));
var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
var seconds = Math.floor((distance % (1000 * 60)) / 1000);

// put the info in id 

document.getElementById("clocky").innerHTML = days + "d " + hours + "h "
  + minutes + "m " + seconds + "s ";


  if (distance < 0) {
    clearInterval(x);
    document.getElementById("clocky").innerHTML = "EXPIRED";
  }
}, 1000);
