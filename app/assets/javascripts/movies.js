// $(document).ready(function () {
//   $("form").on("submit", function (event) { 
//     event.preventDefault();
//     var title = $("#search").val();
//     $.getJSON("/movies/index", {search:title}, function (data) {
//         $("#jsonMovieOutput").html("");
//       for (var i = 0; i < data.length; i++) {
//         $("#jsonMovieOutput").append("<ul>" + data[i].Year + " - " + data[i].Title + "</ul>");
//       }
//       $("input[name=search]").val("").focus();
//     });
//   });
// });