
function CreateAnimation(ctx){
  var _frameIdx = 0;
  var _frameImg = new Image();
  var _callback = null;
  var _ctx = ctx;
  var _imgLoaded = false;
  var _imgRow = 0;
  var _imgCol = 0;
  var _frameWidth = 0;
  var _frameHeight = 0;
  var _x = 0;
  var _y = 0;

  var that = {
    play: function () {
      if(that.drawFrame(_frameIdx)){
        _frameIdx = 0;
        if(_callback) _callback();
      }
      else{
        _frameIdx++;
      }
    },

    stop: function (){
      _frameImg = 0;
    },

    pause: function (){
      that.drawFrame(_frameIdx);
    },

    loadSrcPng: function(imgPath, frameWidth, frameHeight) {
      if (frameWidth <= 0 || frameHeight <= 0){
        throw "Error frame width or height: must be positive integer.";
      }

      _imgLoaded = false;
      _frameImg.src = imgPath;
      _frameImg.onload = function(){
        if (_frameImg.width % frameWidth != 0 || _frameImg.height % frameHeight != 0){
          throw "Error frame image.";
        } else{
          _imgCol = _frameImg.width / frameWidth;
          _imgRow = _frameImg.height / frameHeight;
          _frameWidth = frameWidth;
          _frameHeight = frameHeight;
          _imgLoaded = true;
        }
      };
    },

    isFinished: function (){
      return _frameIdx == 0;
    },

    onFinished: function (callback) {
      _callback = callback;
    },

    setPosition: function(x, y) {
      _x = x;
      _y = y;
    },

    drawFrame : function(frameIdx){
      if(!_imgLoaded) return true;

      var rowIdx = Math.floor(frameIdx / _imgCol);
      var colIdx = frameIdx % _imgCol;

      if(rowIdx >= _imgRow) return true;

      _ctx.drawImage(_frameImg, 
          colIdx * _frameWidth,
          rowIdx * _frameHeight,
          _frameWidth, _frameHeight,
          _x, _y, _frameWidth, _frameHeight);

      return false;
    }
  };

  return that;
}
