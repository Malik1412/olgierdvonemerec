$(document).ready(function() {

//     $('button').on('click',function(){
//       $.ajax({
//         url: 'https://api.chucknorris.io/jokes/random',
//         method: 'get',

//         success: function(response) {
//           console.log(response)
//           console.log(response.value)
//           var url = response.value
//           $('#gif-container').html(url)},

//       beforeSend: function() {
//         $('#gif-container').html('Loading. . . . .')
//       }
//     })
//   })
// })

// Get the modal
var modal = document.getElementById('UploadID');

// Get the button that opens the modal
var btn = document.getElementById("UploadButton");

// Get the <span> element that closes the modal
var span = document.getElementById("UploadClose");

// When the user clicks on the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    } 

		}

})