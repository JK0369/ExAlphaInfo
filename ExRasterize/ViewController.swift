//
//  ViewController.swift
//  ExRasterize
//
//  Created by 김종권 on 2024/02/15.
//

import UIKit

class CustomView: UIView {
    override func draw(_ rect: CGRect) {
         let trianglePath = UIBezierPath()
         trianglePath.move(to: CGPoint(x: rect.midX, y: rect.minY))
         trianglePath.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
         trianglePath.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
         trianglePath.close()

         let fillColor = UIColor.red
         fillColor.setFill()

         trianglePath.fill()
    }
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let customView = CustomView(frame: CGRect(x: 50, y: 50, width: 200, height: 200))
        customView.backgroundColor = UIColor.clear
        view.addSubview(customView)

        customView.layer.shouldRasterize = true
        customView.layer.rasterizationScale = UIScreen.main.scale
    }
}
