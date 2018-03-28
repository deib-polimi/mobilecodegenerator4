//
//  LinearViewController.swift
//  Linear
//
//  Automatically generated by MobileCodeGenerator 4.
//  Copyright 2018 . All rights reserved.
//
import UIKit

class LinearViewController: UIViewController
 {

	@IBOutlet weak var calcLEButton: UIButton!
	@IBOutlet weak var mEditText: UITextField!
	@IBOutlet weak var qEditText: UITextField!
	@IBOutlet weak var guideLEImageView: UIImageView!

	
	override func viewDidLoad() {
	    super.viewDidLoad()
		calcLEButton.layer.cornerRadius = 5


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



	@IBAction func calcLEButtonTouchDown(_ sender: UIButton) {
        (parent as! ChildViewControllerInteractionProtocol).childViewControllerInteraction(controlId: "calcLEButton", selectedItem: nil)
    }
    
	@IBAction func calcLEButtonTouchUpInside(_ sender: UIButton) {
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
