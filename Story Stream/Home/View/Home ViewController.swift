//
//  ViewController.swift
//  Story Stream
//
//  Created by TranCaoThang on 11/08/2024.
//

import UIKit

class ViewController: UIViewController {
    let myLabel = UILabel()
    let bottomSheetView = BottomSheetViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //to display all button and label
        displayButtonandLabel()

        self.view.backgroundColor = .white
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        displayBottomView()
    }
    
    //to display bottom view
    private func displayBottomView() {
        
        if let bottomSheetConfig = bottomSheetView.sheetPresentationController {
            bottomSheetConfig.detents = [.medium()]
            bottomSheetConfig.prefersScrollingExpandsWhenScrolledToEdge = true
//            bottomSheetView.sheetPresentationController?.prefersGrabberVisible = true
            
        }
        present(bottomSheetView, animated: true)

    }
    
   
    //to display button and label on home screen
    func displayButtonandLabel() -> Void {
        //welcome label
        let welcomeLabel = UILabel()
        welcomeLabel.frame = CGRect(x: self.view.center.x, y: 100, width: 375, height: 41)
        welcomeLabel.text = "Welcome to Story Stream"
        welcomeLabel.textAlignment = .center
        welcomeLabel.textColor = .black
        welcomeLabel.font = .systemFont(ofSize: 25)
        welcomeLabel.center.x = self.view.center.x
        self.view.addSubview(welcomeLabel)
        
        //signin to start label
        let signinLabel = UILabel()
        signinLabel.frame = CGRect(x: self.view.center.x, y: 146, width: 218, height: 18)
        signinLabel.text = "Signin to Start"
        signinLabel.textAlignment = .center
        signinLabel.textColor = .gray
        signinLabel.font = .systemFont(ofSize: 16)
        signinLabel.center.x = self.view.center.x
        self.view.addSubview(signinLabel)
        
        //signup label
        let signupLabel = UILabel()
        signupLabel.frame = CGRect(x: self.view.center.x, y: 453, width: 280, height: 18)
        signupLabel.text = "Haven`t account? Sign up!"
        signupLabel.font = .systemFont(ofSize: 16)
        signupLabel.textAlignment = .center
        signupLabel.textColor = .black
        signupLabel.center.x = self.view.center.x
        self.view.addSubview(signupLabel)
        
        //button continue with Google
        let googleButton = CustomButton(frame: CGRect(x: self.view.center.x, y: 224, width: 280, height: 43), title: "Continue with Google", imageName: "google_icon.png", cornerRadius: 21)
        googleButton.addTarget(self, action: #selector(googleButtonTapped), for: .touchUpInside)
        googleButton.center.x = self.view.center.x
        googleButton.backgroundColor = .white
        googleButton.layer.shadowColor = UIColor.black.cgColor
        googleButton.layer.shadowOpacity = 0.2
        googleButton.layer.shadowOffset = CGSize(width: 0, height: 3)
        googleButton.layer.shadowRadius = 10
        view.addSubview(googleButton)
        
        //button continue with Meta
        let metaButton = CustomButton(frame: CGRect(x: self.view.center.x, y: 307, width: 280, height: 43), title: "Continue with Meta", imageName: "meta_icon.png", cornerRadius: 21)
        metaButton.addTarget(self, action: #selector(metaButtonTapped), for: .touchUpInside)
        metaButton.center.x = self.view.center.x
        metaButton.backgroundColor = UIColor(cgColor: CGColor(red: 32/255, green: 121/255, blue: 1, alpha: 1))
        metaButton.setTitleColor(UIColor.white, for: .normal)
        view.addSubview(metaButton)
        
        //button continue with your account
        let normalLoginButton = CustomButton(frame: CGRect(x: self.view.center.x, y: 390, width: 280, height: 43), title: "Continue with Account", systemImageName: "person", cornerRadius: 21)
        normalLoginButton.addTarget(self, action: #selector(normalButtonTapped), for: .touchUpInside)
        normalLoginButton.center.x = self.view.center.x
        normalLoginButton.backgroundColor = .gray
        normalLoginButton.setTitleColor(UIColor.black, for: .normal)
        self.view.addSubview(normalLoginButton)
    }
    
    //Button Event
    //for Signin with Google butotn
    @objc func googleButtonTapped() {
        print("Clicked on Continue with Google")
    }
    //for Signin with Meta button
    @objc func metaButtonTapped() {
        print("Clicked on Continue with Meta")
    }
    
    @objc func normalButtonTapped() {
        displayBottomView()
    }
    


}

