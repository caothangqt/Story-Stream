//
//  CustomTextField.swift
//  Story Stream
//
//  Created by TranCaoThang on 13/08/2024.
//

import UIKit

class CustomTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(frame: CGRect, textColor: UIColor, textSize: CGFloat ) {
        super.init(frame: frame)
        self.backgroundColor = .none
        self.font = .systemFont(ofSize: textSize)
        self.layer.cornerRadius = 15
        self.textAlignment = .center
       
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
