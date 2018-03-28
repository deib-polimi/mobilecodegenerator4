//
//  SystemViewController.swift
//  System
//
//  Automatically generated by MobileCodeGenerator 4.
//  Copyright 2018 . All rights reserved.
//
import UIKit

class SystemViewController: UIViewController
 {

	@IBOutlet weak var calcSEButton: UIButton!
	@IBOutlet weak var a1EditText: UITextField!
	@IBOutlet weak var b1EditText: UITextField!
	@IBOutlet weak var c1EditText: UITextField!
	@IBOutlet weak var a2EditText: UITextField!
	@IBOutlet weak var b2EditText: UITextField!
	@IBOutlet weak var c2EditText: UITextField!
	@IBOutlet weak var guideSEImageView: UIImageView!

	
	override func viewDidLoad() {
	    super.viewDidLoad()
		calcSEButton.layer.cornerRadius = 5


	/*
		To load unsecure pages with http add this to Info.plist
		<key>NSAppTransportSecurity</key>
		<dict>
			<key>NSAllowsArbitraryLoads</key>
			<true/>
			<key>NSExceptionDomains</key>
			<dict>
				<key>YOURDOMAIN.com</key>
				<dict>
					<key>NSExceptionAllowsInsecureHTTPLoads</key>
					<true/>
					<key>NSIncludesSubdomains</key>
					<true/>
				</dict>
			</dict>
		</dict>
	*/
	}
	
	override func viewDidAppear(_ animated: Bool) {
	    super.viewDidAppear(animated)
	}
	
	override func viewDidDisappear(_ animated: Bool) {
		super.viewDidDisappear(animated)
	}



	@IBAction func calcSEButtonTouchDown(_ sender: UIButton) {
        (parent as! ChildViewControllerInteractionProtocol).childViewControllerInteraction(controlId: "calcSEButton", selectedItem: nil)
    }
    
	@IBAction func calcSEButtonTouchUpInside(_ sender: UIButton) {
        //TODO Implement the action
    }  
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
	}
	
	override func didReceiveMemoryWarning() {
	    super.didReceiveMemoryWarning()
	    // Dispose of any resources that can be recreated.
	}
}
