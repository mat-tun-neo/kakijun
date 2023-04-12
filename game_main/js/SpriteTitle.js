phina.define("SpriteTitle", {
  superClass: "SpriteBase",

  // コンストラクタ
  init: function() {
    //console.log("SpriteTitleクラスinit");
    // スプライト描画
    this.superInit("title", "000", TITLE.x, TITLE.y, TITLE.char_size, TITLE.char_size);
    // 文字
    this.nameLabel = Label().addChildTo(this);
    this.addMoji(TITLE_LABEL1 + "\n"+ TITLE_LABEL2);
  },
  // 文字追加
  addMoji: function(str="") {
    this.nameLabel.text = str;
    this.nameLabel.x = this.sprite.x + TITLE.label_offset_x;
    this.nameLabel.y = this.sprite.y + TITLE.label_offset_y;
    this.nameLabel.fontSize = TITLE_FONTSIZE;
    this.nameLabel.fill = TITLE_FILL;
    this.nameLabel.stroke = TITLE_STROKE;
    this.nameLabel.strokeWidth = TITLE_STROKE_WIDTH;
  },
  // 更新
  update: function(app) {
  }
});