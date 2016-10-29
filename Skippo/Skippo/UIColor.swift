//
//  UIColor.swift
//  PDFramework
//
//  Copyright © 2016年 P&D All rights reserved.
//
// swiftlint:disable valid_docs
import UIKit

extension UIColor {
    /// RGBA を 0~255 で指定
    public convenience init(intRed red: Int, green: Int, blue: Int, alpha: CGFloat) {
        self.init(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue: CGFloat(blue)/255.0, alpha:alpha)
    }

    /// RGB を 0~255 で指定
    public convenience init(intRed red: Int, green: Int, blue: Int) {
        self.init(intRed: red, green: green, blue: blue, alpha: 1.0)
    }

    /// RGB を16進数で指定
    public convenience init(hex: UInt32) {
        let r = Int32((hex & 0xFF0000) >> 16)
        let g = Int32((hex & 0x00FF00) >> 8)
        let b = Int32(hex & 0x0000FF)

        self.init(intRed: Int(r), green: Int(g), blue: Int(b))
    }

    /// RGB を Alpha 付き16進数で指定
    public convenience init(aHex: UInt32) {
        let r = Int32((aHex >> 24) & 0xFF)
        let g = Int32((aHex >> 16) & 0xFF)
        let b = Int32((aHex >> 8) & 0xFF)
        let a = Int32(aHex & 0xFF)

        self.init(intRed: Int(r), green: Int(g), blue: Int(b), alpha: CGFloat(a))
    }

    /// RGB を16進数文字列で指定
    public convenience init(hexStr: String) {
        let str = hexStr.replacingOccurrences(of: "#", with: "")

        let colorScanner = Scanner(string: str)
        var color: UInt32 = 0
        colorScanner.scanHexInt32(&color)

        self.init(hex: color)
    }

    /// RGB を Alpha 付き16進数文字列で指定
    public convenience init(aHexStr: String) {
        let str = aHexStr.replacingOccurrences(of: "#", with: "")

        let colorScanner = Scanner(string: str)
        var color: UInt32 = 0
        colorScanner.scanHexInt32(&color)

        self.init(hex: color)
    }

    /// ランダムに色を取得
    public class func getRandomColor() -> UIColor {
        let red = Int(arc4random_uniform(256))
        let green = Int(arc4random_uniform(256))
        let blue = Int(arc4random_uniform(256))

        return UIColor(intRed: red, green: green, blue: blue)
    }

    /// Alpha 値を指定してランダムに色を取得
    public class func getRandomColor(_ alpha: CGFloat) -> UIColor {
        let red = Int(arc4random_uniform(256))
        let green = Int(arc4random_uniform(256))
        let blue = Int(arc4random_uniform(256))

        return UIColor(intRed: red, green: green, blue: blue, alpha: alpha)
    }
}
