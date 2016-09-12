
function CreateAnimation(ctx){
  var _frameIdx = 0;
  var _frameImg = new Image();
  var _callback = null;
  var _ctx = ctx;
  var _imgLoaded = false;
  var _frameWidth = 0;
  var _frameHeight = 0;
  var _framePositions = null;
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

    loadSrcPng: function(imgPath, frameWidth, frameHeight, framePositions) {
      if (frameWidth <= 0 || frameHeight <= 0){
        throw "Error frame width or height: must be positive integer.";
      }

      _imgLoaded = false;
      _frameImg.src = imgPath;
      _frameImg.onload = function(){
          _framePositions = framePositions;
          _frameWidth = frameWidth;
          _frameHeight = frameHeight;
          _imgLoaded = true;
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

      var playIdx = frameIdx % _framePositions.length;

      _ctx.drawImage(_frameImg, 
          _framePositions[playIdx][0],
          _framePositions[playIdx][1],
          _frameWidth, _frameHeight,
          _x, _y, _frameWidth, _frameHeight);

      return playIdx == (_framePositions.length - 1);
    }
  };

  return that;
}
