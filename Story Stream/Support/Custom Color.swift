//
//  Custom Color.swift
//  Story Stream
//
//  Created by TranCaoThang on 13/08/2024.
//

import Foundation
import UIKit

class CustomGradientColor {
    
    init() {}
    
    func createGradientLayer(color1: UIColor, color2: UIColor, frame: CGRect) -> CAGradientLayer {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = frame
        
        // Thiết lập các màu cho gradient
        gradientLayer.colors = [color1.cgColor, color2.cgColor]
        
        // Thiết lập hướng của gradient (từ trên xuống dưới)
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        
        return gradientLayer
    }
}
