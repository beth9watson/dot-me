initResponseScribblePreviews = function (sourceScribbleUrl) {
  var sourceScribbleUrl = sourceScribbleUrl;

  var setFeaturedImg = function (url) {
    $('#featured-scribble-img').attr('src', url || sourceScribbleUrl);
  };

  var toggleFeaturedImg = function(e) {
    var targetImg = $(e.currentTarget);

    if (targetImg.hasClass('selected')) {
      targetImg.removeClass('selected');
      setFeaturedImg(null);
    } else {
      $('.response-scribble-img').removeClass('selected');
      targetImg.addClass('selected');
      setFeaturedImg(targetImg.data('feature-url'));
    };
  };

  $('.response-scribble-img').on('click', toggleFeaturedImg);
};