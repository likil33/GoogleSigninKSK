//
//  ViewController.swift
//  GoogleSignSample
//
//  Created by Santhosh K on 08/03/23.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let button = GIDSignInButton(frame: CGRect(x: 50, y: 50, width: 200, height: 200))
        
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(signIn), for: .touchUpInside)
    }

    @IBAction func signIn(sender: Any) {
      GIDSignIn.sharedInstance.signIn(withPresenting: self) { signInResult, error in
        guard error == nil else { return }
          print(signInResult)
      }
    }
    
    
    
    
}

