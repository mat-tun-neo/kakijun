phina.define("SpriteCharacter", {
  superClass: "SpriteBase",

  // コンストラクタ
  init: function(key, moji) {
    //console.log("SpriteCharacterクラスinit");
    // キー情報
    this.key = key;
    this.moji = moji;
    // スプライト描画
    this.superInit(moji, "000", CHARACTER[this.key].x, CHARACTER[this.key].y, CHARACTER[this.key].char_size, CHARACTER[this.key].char_size);
    // 初期位置
    this.sprite.x = CHARACTER[this.key].x;
    this.sprite.y = CHARACTER[this.key].y;
    // サイズ
    this.width = CHARACTER[this.key].char_size;
    this.height = CHARACTER[this.key].char_size;
    // 文字
    this.nameLabel = Label().addChildTo(this);
    this.nameLabel.text = "";
    this.addMoji();
    // 出現フレーム
    this.frame = 0;
    // フェードアウトのフラグ
    this.fadeout_status = false;
  },
  // 文字追加
  addMoji: function(str="") {
    this.nameLabel.text = str;
    this.nameLabel.x = this.sprite.x;
    this.nameLabel.y = this.sprite.y - LABEL_OFFSET;
    this.nameLabel.fontSize = LABEL_FONTSIZE;
    this.nameLabel.fill = LABEL_FILL;
    this.nameLabel.stroke = LABEL_STROKE;
    this.nameLabel.strokeWidth = LABEL_STROKE_WIDTH;
  },
  // 文字変更
  changeMoji: function(str="") {
    this.nameLabel.text = str;
  },
  // フェードイン
  fadein: function() {
    this.sprite.tweener.fromJSON(CHAR_FADEIN(CHARACTER[this.key].char_size));
    this.nameLabel.tweener.fromJSON(CHAR_FADEIN(CHARACTER[this.key].char_size));
  },
  // フェードアウト
  fadeout: function() {
    this.fadeout_status = true;
    this.sprite.tweener.fromJSON(CHAR_FADEOUT);
    this.nameLabel.tweener.fromJSON(CHAR_FADEOUT);
  },
  // ラベル更新
  updatelabel: function(app) {
    let label = ASSETS.spritesheet[this.moji].animations["000"].label;
    if (app.frame < this.frame + LABEL_TIME) {
      label = CHARACTER[this.key].label_in;
    }
    if (this.fadeout_status) {
      label = CHARACTER[this.key].label_out;
    }
    this.changeMoji(label);
  },
  // アニメーション終了
  stopAnimation: function() {
    this.sprite.tweener.clear();
    this.nameLabel.tweener.clear();
  },
  // 更新
  update: function(app) {
    if ( this.frame == 0) {
      this.frame = app.frame;
    }
    this.updatelabel(app);
  }
});