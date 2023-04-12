phina.define("SpriteComplete", {
  superClass: "SpriteBase",

  // コンストラクタ
  init: function(touch_count) {
    //console.log("SpriteCompleteクラスinit");
    // スプライト描画
    this.superInit("complete", "000", COMPLETE.x, COMPLETE.y, COMPLETE.size_x, COMPLETE.size_y);
    // 文字
    this.nameLabel = Label().addChildTo(this);
    this.nameLabel.text = "";
    // タッチした回数
    this.touch_count = touch_count;
    // 出現フレーム
    this.frame = 0;
  },
  // 文字追加
  addMoji: function() {
    this.nameLabel.text = "タッチしたかいすう：" + this.touch_count;
    this.nameLabel.x = this.sprite.x;
    this.nameLabel.y = this.sprite.y + TITLE_FONTSIZE * 2;
    this.nameLabel.fontSize = TITLE_FONTSIZE;
    this.nameLabel.fill = TITLE_FILL;
    this.nameLabel.stroke = TITLE_STROKE;
    this.nameLabel.strokeWidth = TITLE_STROKE_WIDTH;
  },
  // 更新
  update: function(app) {
    if ( this.frame == 0) {
      this.frame = app.frame;
    }
    if (this.getCurrentAnimation() == "000") {
      if (app.frame > this.frame + LABEL_TIME) {
        this.addMoji();
        this.sprite.anim.gotoAndPlay("002");
      }
    }
  },
  // クリック時のピカピカ
  clickPikaPika() {
      this.sprite.anim.gotoAndPlay("001");
  },
  // 現在のアニメーションパターン
  getCurrentAnimation() {
    //console.log("this.sprite.anim.currentAnimation.next", this.sprite.anim.currentAnimation.next);
    return this.sprite.anim.currentAnimation.next;
  }
});