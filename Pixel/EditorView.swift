//
//  EditorView.swift
//  Pixel
//
//  Created by Mizugaki on 2018/04/27.
//  Copyright © 2018年 edu.com. All rights reserved.
//

import UIKit

class EditorView: UIView {

    /***
     方眼紙は
     - 正方形
     - 縦（y） : 下から0
     - 横（x） : 左から0
     - 方眼の左下から0
    ***/
    // 方眼紙
    static let dotsPerRow: CGFloat = 32.0

    //hougannsi : 32 * 32
    var dotLength: CGFloat {
        return bounds.width / EditorView.dotsPerRow
    }

    // マス目の色を入れる配列 : インデックスは、y:0 x:0->0, y: 1 x:0->1*32+0, y:3 x:2->3*32+2
    var dots = Array(repeating: UIColor.clear, count: Int(EditorView.dotsPerRow * EditorView.dotsPerRow))

    // グリッド設定
    var isGrid = false {
        didSet {
            setNeedsDisplay()
        }
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        addDot(touches)
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        addDot(touches)
    }

    func addDot(_ touches: Set<UITouch>) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)

        let x = Int(floor(location.x / dotLength))
        let y = Int(floor(location.y / dotLength))
        dots[y * Int(EditorView.dotsPerRow) + x] = UIColor.black

        setNeedsDisplay()
    }





    override func draw(_ rect: CGRect) {
        // Drawing code
        // マス目
        for (i, dotColor) in dots.enumerated() {
            guard dotColor != .clear else { continue }

            // 各ドットを表すPathを作成
            let dotRect = CGRect.init(
                x: CGFloat(i % Int(EditorView.dotsPerRow)) * dotLength,
                y: CGFloat(i / Int(EditorView.dotsPerRow)) * dotLength,
                width: dotLength,
                height: dotLength
            )
            let path = UIBezierPath(rect: dotRect)

            // 設定された色で塗りつぶす
            dotColor.setFill()
            path.fill()
        }

        // グリッド
        if isGrid {
            for i in 1..<Int(EditorView.dotsPerRow) {
                let step = dotLength * CGFloat(i)
                let path = UIBezierPath()

                path.move(to: CGPoint(x: step, y: 0.0))
                path.addLine(to: CGPoint(x: step, y: rect.maxY))

                path.move(to: CGPoint(x: 0.0, y: step))
                path.addLine(to: CGPoint(x: rect.maxX, y: step))

                UIColor.lightGray.setStroke()
                path.stroke()
            }
        }
    }

}
