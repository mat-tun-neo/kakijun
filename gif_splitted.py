# coding: utf-8

'''アニメーション GIF のフレーム画像（静止画）を抽出する
'''

from pathlib import Path
from PIL import Image, ImageSequence
import os

# 分割した画像の出力先ディレクトリ
DESTINATION = 'splitted'
# 現在の状況を標準出力に表示するかどうか
DEBUG_MODE = True

def main(cnt):
    image_path = 'target/h{:02}.gif'.format(cnt)
    frames = get_frames(image_path)
    write_frames(frames, image_path, DESTINATION)

def get_frames(path):
    '''パスで指定されたファイルのフレーム一覧を取得する
    '''
    im = Image.open(path)
    return (frame.copy() for frame in ImageSequence.Iterator(im))

def write_frames(frames, name_original, destination):
    '''フレームを別個の画像ファイルとして保存する
    '''
    path = Path(name_original)

    stem = path.stem
    extension = '.png'

    # 出力先のディレクトリが存在しなければ作成しておく
    dir_dest = Path(destination)
    if not dir_dest.is_dir():
        dir_dest.mkdir(0o700)
        if DEBUG_MODE:
            print('Destionation directory is created: "{}".'.format(destination))

    for i, f in enumerate(frames):
        name = '{}/{}-{:02}{}'.format(destination, stem, i, extension)
        f.save(name)
        if DEBUG_MODE:
            print('A frame is saved as "{}".'.format(name))
    
    name_bef = '{}/{}-{:02}{}'.format(destination, stem, 0, extension)
    name_aft = '{}/{}-{:02}{}'.format(destination, stem, i+1, extension)
    print(name_bef)
    print(name_aft)
    os.rename(name_bef, name_aft)

if __name__ == '__main__':
    for i in range(46):
        main(i+1)