phina.define("SpriteIllustration", {
  superClass: "SpriteBase",

  // コンストラクタ
  init: function() {
    //console.log("SpriteIllustrationクラスinit");
    // スプライト描画
    this.superInit("illust", "000", SCREEN_WIDTH/2, -SCREEN_HEIGHT, ILLUST_SIZE, ILLUST_SIZE);
  },
  // 更新
  update: function(app) {
  }
});