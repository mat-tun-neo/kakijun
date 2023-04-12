const DEBUG_MODE = 0;              // 0: OFF, 1: ON
const FADEIN_TIME = 200;          // キャラクターのフェードイン時間
const FADEOUT_TIME = 1000;         // キャラクターのフェードアウト時間
const LABEL_FONTSIZE = 30;         // ラベルのフォントサイズ
const LABEL_OFFSET = 130;          // ラベルのオフセット
const LABEL_FILL = "yellow";       // ラベルのFILL色
const LABEL_STROKE = "black";      // ラベルのSTROKE色
const LABEL_STROKE_WIDTH = 5;      // ラベルのSTROKE幅
const LABEL_TIME = 60;             // フェードイン中のラベル表示時間（単位：フレーム）
const TITLE_FONTSIZE = 30;         // タイトルのフォントサイズ
const TITLE_FILL = "white";        // タイトルのFILL色
const TITLE_STROKE = "black";      // タイトルのSTROKE色
const TITLE_STROKE_WIDTH = 10;     // タイトルのSTROKE幅
const COMPLETE_FONTSIZE = 50;      // そろった！のフォントサイズ
const COMPLETE_FILL = "yellow";    // そろった！のFILL色
const COMPLETE_STROKE = "yellow";  // そろった！のSTROKE色
const COMPLETE_STROKE_WIDTH = 3;   // そろった！のSTROKE幅
const COMPLETE_SPEED = 1200;       // そろった！のスピード
const SHAPE_FILL = "black";        // そろった背景！のFILL色
const SHAPE_STROKE = "black";      // そろった！のSTROKE色
const ILLUST_SIZE = 500;           // イラスト画像の横サイズ


// tweener定義
const CHAR_FADEIN = (char_size) => ({
    tweens: [
    ['to', {width:80, height:80, alpha: 0.0}, 1],
    ['to', {width:char_size, height:char_size, alpha: 1.0}, FADEIN_TIME, 'easeOutSine']
    ]
});
const CHAR_FADEOUT = {
    tweens: [
    ['to', {alpha: 1.0}, 1],
    ['to', {width:80, height:80, alpha: 0.0}, FADEOUT_TIME, 'easeOutQuad']
    ]
};
const LABEL_MOVE = (x1, y1, x2, y2, t1, t2) => ({
    tweens: [
    ['to', {x:x1, y:y1}, t1, 'easeOutElastic'],
    ['to', {x:x2, y:y2}, t2, 'easeOutElastic']
    ]
});

// asset定義（背景）
ASSETS.image["mainwindow"] = "./images/kakihun.jpg" + datestr;

// asset定義（タイトル）
ASSETS.image["title"] = "./images/info.png" + datestr;
ASSETS.spritesheet["title"] = 
{
  "frame": { "width": 1737, "height": 1737, "cols": 2, "rows": 1 },
  "animations" : {
    "000": {"frames": [0],  "next": "000", "frequency": 1 },
    "001": {"frames": [1],  "next": "001", "frequency": 1 }
  }
}

// asset定義（壁穴）
ASSETS.image["hole000"] = "./images/hole.png" + datestr;
ASSETS.image["hole001"] = "./images/hole.png" + datestr;
ASSETS.image["hole002"] = "./images/hole.png" + datestr;
ASSETS.image["hole003"] = "./images/hole.png" + datestr;
ASSETS.image["hole004"] = "./images/hole.png" + datestr;
ASSETS.spritesheet["hole000"] = 
{
  "frame": { "width": 200, "height": 200, "cols": 3, "rows": 5 },
  "animations" : {
    "000": {"frames": [3],  "next": "000", "frequency": 1 },
    "001": {"frames": [4],  "next": "006", "frequency": 10 },
    "002": {"frames": [4],  "next": "006", "frequency": 10 },
    "003": {"frames": [4],  "next": "006", "frequency": 10 },
    "004": {"frames": [4],  "next": "006", "frequency": 10 },
    "005": {"frames": [4],  "next": "006", "frequency": 10 },
    "006": {"frames": [5],  "next": "006", "frequency": 1 }
  }
}
ASSETS.spritesheet["hole001"] = 
{
  "frame": { "width": 200, "height": 200, "cols": 3, "rows": 5 },
  "animations" : {
    "000": {"frames": [6],  "next": "000", "frequency": 1 },
    "001": {"frames": [7],  "next": "006", "frequency": 10 },
    "002": {"frames": [7],  "next": "006", "frequency": 10 },
    "003": {"frames": [7],  "next": "006", "frequency": 10 },
    "004": {"frames": [7],  "next": "006", "frequency": 10 },
    "005": {"frames": [7],  "next": "006", "frequency": 10 },
    "006": {"frames": [8],  "next": "006", "frequency": 1 }
  }
}
ASSETS.spritesheet["hole002"] = 
{
  "frame": { "width": 200, "height": 200, "cols": 3, "rows": 5 },
  "animations" : {
    "000": {"frames": [0],  "next": "000", "frequency": 1 },
    "001": {"frames": [1],  "next": "006", "frequency": 10 },
    "002": {"frames": [1],  "next": "006", "frequency": 10 },
    "003": {"frames": [1],  "next": "006", "frequency": 10 },
    "004": {"frames": [1],  "next": "006", "frequency": 10 },
    "005": {"frames": [1],  "next": "006", "frequency": 10 },
    "006": {"frames": [2],  "next": "006", "frequency": 1 }
  }
}
ASSETS.spritesheet["hole003"] = 
{
  "frame": { "width": 200, "height": 200, "cols": 3, "rows": 5 },
  "animations" : {
    "000": {"frames": [9],   "next": "000", "frequency": 1 },
    "001": {"frames": [10],  "next": "006", "frequency": 10 },
    "002": {"frames": [10],  "next": "006", "frequency": 10 },
    "003": {"frames": [10],  "next": "006", "frequency": 10 },
    "004": {"frames": [10],  "next": "006", "frequency": 10 },
    "005": {"frames": [10],  "next": "006", "frequency": 10 },
    "006": {"frames": [11],  "next": "006", "frequency": 1 }
  }
}
ASSETS.spritesheet["hole004"] = 
{
  "frame": { "width": 200, "height": 200, "cols": 3, "rows": 5 },
  "animations" : {
    "000": {"frames": [12],  "next": "000", "frequency": 1 },
    "001": {"frames": [13],  "next": "006", "frequency": 10 },
    "002": {"frames": [13],  "next": "006", "frequency": 10 },
    "003": {"frames": [13],  "next": "006", "frequency": 10 },
    "004": {"frames": [13],  "next": "006", "frequency": 10 },
    "005": {"frames": [13],  "next": "006", "frequency": 10 },
    "006": {"frames": [14],  "next": "006", "frequency": 1 }
  }
}

// asset定義（キャラクタ）
const CHARACTER = {
  "000": { x: 195, y: 200, char_size: 200, hole_size: 200, label_in:"", label_out:"", current_moji:"" },
  "001": { x: 195, y: 400, char_size: 200, hole_size: 200, label_in:"", label_out:"", current_moji:"" },
  "002": { x: 195, y: 600, char_size: 200, hole_size: 200, label_in:"", label_out:"", current_moji:"" },
  "003": { x: 195, y: 800, char_size: 200, hole_size: 200, label_in:"", label_out:"", current_moji:"" },
};

ASSETS.image["あ"] = "./images/hiragana/h00.png" + datestr;
ASSETS.image["い"] = "./images/hiragana/h01.png" + datestr;
ASSETS.image["う"] = "./images/hiragana/h02.png" + datestr;
ASSETS.image["え"] = "./images/hiragana/h03.png" + datestr;
ASSETS.image["お"] = "./images/hiragana/h04.png" + datestr;
ASSETS.image["か"] = "./images/hiragana/h05.png" + datestr;
ASSETS.image["き"] = "./images/hiragana/h06.png" + datestr;
ASSETS.image["く"] = "./images/hiragana/h07.png" + datestr;
ASSETS.image["け"] = "./images/hiragana/h08.png" + datestr;
ASSETS.image["こ"] = "./images/hiragana/h09.png" + datestr;
ASSETS.image["さ"] = "./images/hiragana/h10.png" + datestr;
ASSETS.image["し"] = "./images/hiragana/h11.png" + datestr;
ASSETS.image["す"] = "./images/hiragana/h12.png" + datestr;
ASSETS.image["せ"] = "./images/hiragana/h13.png" + datestr;
ASSETS.image["そ"] = "./images/hiragana/h14.png" + datestr;
ASSETS.image["た"] = "./images/hiragana/h15.png" + datestr;
ASSETS.image["ち"] = "./images/hiragana/h16.png" + datestr;
ASSETS.image["つ"] = "./images/hiragana/h17.png" + datestr;
ASSETS.image["て"] = "./images/hiragana/h18.png" + datestr;
ASSETS.image["と"] = "./images/hiragana/h19.png" + datestr;
ASSETS.image["な"] = "./images/hiragana/h20.png" + datestr;
ASSETS.image["に"] = "./images/hiragana/h21.png" + datestr;
ASSETS.image["ぬ"] = "./images/hiragana/h22.png" + datestr;
ASSETS.image["ね"] = "./images/hiragana/h23.png" + datestr;
ASSETS.image["の"] = "./images/hiragana/h24.png" + datestr;
ASSETS.image["は"] = "./images/hiragana/h25.png" + datestr;
ASSETS.image["ひ"] = "./images/hiragana/h26.png" + datestr;
ASSETS.image["ふ"] = "./images/hiragana/h27.png" + datestr;
ASSETS.image["へ"] = "./images/hiragana/h28.png" + datestr;
ASSETS.image["ほ"] = "./images/hiragana/h29.png" + datestr;
ASSETS.image["ま"] = "./images/hiragana/h30.png" + datestr;
ASSETS.image["み"] = "./images/hiragana/h31.png" + datestr;
ASSETS.image["む"] = "./images/hiragana/h32.png" + datestr;
ASSETS.image["め"] = "./images/hiragana/h33.png" + datestr;
ASSETS.image["も"] = "./images/hiragana/h34.png" + datestr;
ASSETS.image["や"] = "./images/hiragana/h35.png" + datestr;
ASSETS.image["ゆ"] = "./images/hiragana/h36.png" + datestr;
ASSETS.image["よ"] = "./images/hiragana/h37.png" + datestr;
ASSETS.image["ら"] = "./images/hiragana/h38.png" + datestr;
ASSETS.image["り"] = "./images/hiragana/h39.png" + datestr;
ASSETS.image["る"] = "./images/hiragana/h40.png" + datestr;
ASSETS.image["れ"] = "./images/hiragana/h41.png" + datestr;
ASSETS.image["ろ"] = "./images/hiragana/h42.png" + datestr;
ASSETS.image["わ"] = "./images/hiragana/h43.png" + datestr;
ASSETS.image["を"] = "./images/hiragana/h44.png" + datestr;
ASSETS.image["ん"] = "./images/hiragana/h45.png" + datestr;
ASSETS.spritesheet["あ"] = { "frame": { "width": 200, "height": 200, "cols": 24, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [23], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["い"] = { "frame": { "width": 200, "height": 200, "cols": 12, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [11], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["う"] = { "frame": { "width": 200, "height": 200, "cols": 11, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [10], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["え"] = { "frame": { "width": 200, "height": 200, "cols": 22, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [21], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["お"] = { "frame": { "width": 200, "height": 200, "cols": 28, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [27], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["か"] = { "frame": { "width": 200, "height": 200, "cols": 20, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [19], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["き"] = { "frame": { "width": 200, "height": 200, "cols": 24, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [23], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["く"] = { "frame": { "width": 200, "height": 200, "cols": 10, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [9], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["け"] = { "frame": { "width": 200, "height": 200, "cols": 21, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [20], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["こ"] = { "frame": { "width": 200, "height": 200, "cols": 12, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [11], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["さ"] = { "frame": { "width": 200, "height": 200, "cols": 21, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [20], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["し"] = { "frame": { "width": 200, "height": 200, "cols": 10, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [9], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["す"] = { "frame": { "width": 200, "height": 200, "cols": 23, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [22], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["せ"] = { "frame": { "width": 200, "height": 200, "cols": 25, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [24], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["そ"] = { "frame": { "width": 200, "height": 200, "cols": 21, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [20], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["た"] = { "frame": { "width": 200, "height": 200, "cols": 23, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [22], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["ち"] = { "frame": { "width": 200, "height": 200, "cols": 22, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [21], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["つ"] = { "frame": { "width": 200, "height": 200, "cols": 13, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [12], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["て"] = { "frame": { "width": 200, "height": 200, "cols": 16, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [15], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["と"] = { "frame": { "width": 200, "height": 200, "cols": 20, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [19], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["な"] = { "frame": { "width": 200, "height": 200, "cols": 26, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [25], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["に"] = { "frame": { "width": 200, "height": 200, "cols": 19, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [18], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["ぬ"] = { "frame": { "width": 200, "height": 200, "cols": 34, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [33], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["ね"] = { "frame": { "width": 200, "height": 200, "cols": 30, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [29], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["の"] = { "frame": { "width": 200, "height": 200, "cols": 21, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [20], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["は"] = { "frame": { "width": 200, "height": 200, "cols": 28, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [27], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["ひ"] = { "frame": { "width": 200, "height": 200, "cols": 19, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [18], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["ふ"] = { "frame": { "width": 200, "height": 200, "cols": 19, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [18], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["へ"] = { "frame": { "width": 200, "height": 200, "cols": 12, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [11], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["ほ"] = { "frame": { "width": 200, "height": 200, "cols": 31, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [30], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["ま"] = { "frame": { "width": 200, "height": 200, "cols": 28, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [27], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["み"] = { "frame": { "width": 200, "height": 200, "cols": 24, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [23], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["む"] = { "frame": { "width": 200, "height": 200, "cols": 27, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [26], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["め"] = { "frame": { "width": 200, "height": 200, "cols": 27, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [26], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["も"] = { "frame": { "width": 200, "height": 200, "cols": 23, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [22], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["や"] = { "frame": { "width": 200, "height": 200, "cols": 29, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [28], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["ゆ"] = { "frame": { "width": 200, "height": 200, "cols": 32, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [31], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["よ"] = { "frame": { "width": 200, "height": 200, "cols": 27, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [26], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["ら"] = { "frame": { "width": 200, "height": 200, "cols": 20, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [19], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["り"] = { "frame": { "width": 200, "height": 200, "cols": 17, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [16], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["る"] = { "frame": { "width": 200, "height": 200, "cols": 29, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [28], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["れ"] = { "frame": { "width": 200, "height": 200, "cols": 29, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [28], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["ろ"] = { "frame": { "width": 200, "height": 200, "cols": 23, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [22], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["わ"] = { "frame": { "width": 200, "height": 200, "cols": 31, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [30], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["を"] = { "frame": { "width": 200, "height": 200, "cols": 30, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [29], "next": "101", "frequency": 1, "label": "" },}}
ASSETS.spritesheet["ん"] = { "frame": { "width": 200, "height": 200, "cols": 20, "rows": 1 }, "animations" : { "000": {"frames": [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19],  "next": "101", "frequency": 3, "label": "" }, "101": {"frames": [19], "next": "101", "frequency": 1, "label": "" },}}

// asset定義（そろったスプライト）
const COMPLETE = { x: 450, y: 180, size_x: 320, size_y: 192 };
ASSETS.image["complete"] = "./images/complete.png" + datestr;
ASSETS.spritesheet["complete"] = 
{
  "frame": { "width": 320, "height": 192, "cols": 7, "rows": 1 },
  "animations" : {
    "000": {"frames": [0],  "next": "000", "frequency": 1 },
    "001": {"frames": [1, 2, 3, 4, 5],  "next": "002", "frequency": 5 },
    "002": {"frames": [6],  "next": "002", "frequency": 5 }
  }
}

// そろったメッセージ定義（キャラクタごと）
const COMPLETE_MESSAGE = {
  message: { 0: "「{illust}」の", 1: "「{moji}」がそろった！", 2: "" },
  offset_y: { 0: 320, 1: 400, 2: 650 },
  speed: { 0: 500, 1: 2500, 2: 4500 },
  illust: { 0: "OFF", 1: "OFF", 2: "ON" }
};

// 難易度
const TARGET_WORD = document.getElementById("TARGET_WORD").innerText;
console.log("TARGET_WORD", TARGET_WORD);

// title定義
const TITLE = { x: 505, y:561, char_size: 300, label_offset_x: 10, label_offset_y: 260 };
const TITLE_LABEL1 = "おなじ\n\nひらがなを\n\nそろえよう";
const TITLE_LABEL2 = "";

// 難易度ごとのアニメーションパターン
const ANIMATION_PATTERN = [...TARGET_WORD];
console.log("ANIMATION_PATTERN", ANIMATION_PATTERN);
