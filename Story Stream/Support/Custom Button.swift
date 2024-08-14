//
//  Custom Button.swift
//  Story Stream
//
//  Created by TranCaoThang on 12/08/2024.
//

import Foundation
import UIKit

class CustomButton: UIButton {
   
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(frame: CGRect, title: String, imageName: String, cornerRadius: CGFloat) {
        super.init(frame: frame)
        self.setTitle(title, for: .normal)
        self.titleEdgeInsets = UIEdgeInsets(top: 0, left: -10, bottom: 0, right: 0)
        self.setImage(UIImage(named: imageName), for: .normal)
        self.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
        self.setTitleColor(UIColor.black, for: .normal)
        self.layer.cornerRadius = cornerRadius
    }
    
    init(frame: CGRect, title: String, systemImageName: String, cornerRadius: CGFloat) {
        super.init(frame: frame)
        self.setTitle(title, for: .normal)
        self.titleEdgeInsets = UIEdgeInsets(top: 0, left: -10, bottom: 0, right: 0)
        self.setImage(UIImage(systemName: systemImageName), for: .normal)
        self.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
        self.setTitleColor(UIColor.black, for: .normal)
        self.layer.cornerRadius = cornerRadius
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
