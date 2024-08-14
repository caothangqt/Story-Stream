//
//  Bottom Sheet ViewController.swift
//  Story Stream
//
//  Created by TranCaoThang on 13/08/2024.
//

import UIKit

class BottomSheetViewController: UIViewController {
    let gradientColor = CustomGradientColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .gray
        let label = UILabel()
        label.frame = CGRect(x: self.view.center.x, y: self.view.center.y, width: 50, height: 50)
        self.view.addSubview(label)
        
        
        displayGradientColor()
        displayLabel()
        displayTextField()
        displayContinueButton()
        // Do any additional setup after loading the view.
        
    }
    func displayGradientColor() -> Void {
        // Khởi tạo đối tượng CustomGradientColor
        let customGradient = CustomGradientColor()
               
        // Tạo gradient layer với màu đỏ và màu xanh
        let gradientLayer = customGradient.createGradientLayer(color1: .blue, color2: .yellow, frame: self.view.bounds)
               
        // Áp dụng gradient layer vào view
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    //display "continue with account"'s textfield in bottom sheet
    func displayTextField() -> Void {
        let passwordTextField = CustomTextField(frame: CGRect(x: self.view.center.x, y: (self.view.center.y - 250), width: 250, height: 50), textColor: .black, textSize: 15)
        passwordTextField.center.x = self.view.center.x
        passwordTextField.isSecureTextEntry = true
        passwordTextField.placeholder = "Password"
        //setup password Placeholder color
        passwordTextField.attributedPlaceholder = NSAttributedString(string: passwordTextField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        self.view.addSubview(passwordTextField)
        //add bottom line in password textfield
        passwordTextField.layer.addSublayer(displayBottomLine(frame: CGRect(x: 0, y: passwordTextField.frame.height, width: 250, height: 1)))
        
        let accountTextField = CustomTextField(frame: CGRect(x: self.view.center.x, y: (self.view.center.y - 350), width: 250, height: 50), textColor: .black, textSize: 15)
        accountTextField.center.x = self.view.center.x
        accountTextField.placeholder = "Login"
        //setup account Placeholder color
        accountTextField.attributedPlaceholder = NSAttributedString(string: accountTextField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        self.view.addSubview(accountTextField)
        //add bottom line in account textfield
        accountTextField.layer.addSublayer(displayBottomLine(frame: CGRect(x: 0, y: accountTextField.frame.height, width: 250, height: 1)))
    }
    
    func displayBottomLine(frame: CGRect) -> CALayer {
        //create bottom line
        let bottomLine = CALayer()
        bottomLine.frame = frame
        bottomLine.backgroundColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
        return bottomLine
    }
    
    func displayLabel() -> Void {
        let forgotPassLabel = UILabel()
        forgotPassLabel.frame = CGRect(x: 221, y: (self.view.center.y - 180), width: 145, height: 19)
        forgotPassLabel.text = "Forgot Password?"
        forgotPassLabel.textColor = .white
        self.view.addSubview(forgotPassLabel)
    }
    
    func displayContinueButton() -> Void {
        let continueButton = CustomButton(frame: CGRect(x: self.view.center.x, y: 320, width: 280, height: 43), title: "Continue", imageName: "", cornerRadius: 25)
        continueButton.backgroundColor = .black
        continueButton.setTitleColor(.white, for: .normal)
        continueButton.addTarget(self, action: #selector(continueButtonTapped), for: .touchUpInside)
        continueButton.center.x = self.view.center.x
        self.view.addSubview(continueButton)
    }
    
    @objc func continueButtonTapped() {
        print("Clicked on Continue Button")
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
