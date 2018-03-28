//
//  AlgebraParentViewController.swift
//  Algebra
//
//  Automatically generated by MobileCodeGenerator 4.
//  Copyright 2018 . All rights reserved.
//

import UIKit

class AlgebraParentViewController: UIViewController {
    
    // MARK: Properties
	fileprivate let listVC: UIViewController
	fileprivate let fractionsVC: UIViewController
	fileprivate let probabilityVC: UIViewController
	fileprivate let commonsVC: UIViewController
    lazy var menuTransitioningDelegate = MenuPresentationManager()
    
    
    // MARK: Initialization
    init() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
		listVC = storyboard.instantiateViewController(withIdentifier: "ListViewControllerStoryboardID")
		fractionsVC = storyboard.instantiateViewController(withIdentifier: "FractionsViewControllerStoryboardID")
		probabilityVC = storyboard.instantiateViewController(withIdentifier: "ProbabilityViewControllerStoryboardID")
		commonsVC = storyboard.instantiateViewController(withIdentifier: "CommonsViewControllerStoryboardID")
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
		listVC = storyboard.instantiateViewController(withIdentifier: "ListViewControllerStoryboardID")
		fractionsVC = storyboard.instantiateViewController(withIdentifier: "FractionsViewControllerStoryboardID")
		probabilityVC = storyboard.instantiateViewController(withIdentifier: "ProbabilityViewControllerStoryboardID")
		commonsVC = storyboard.instantiateViewController(withIdentifier: "CommonsViewControllerStoryboardID")
        super.init(coder: aDecoder)
    }
    
    // MARK: UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup menu button into navigation bar
	    let menuIcon = UIImage(named: "menu_icon")
	    navigationItem.leftBarButtonItem = UIBarButtonItem(image: menuIcon, style: .plain, target: self, action: #selector(showMenu))
	    
        
        setupUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showMenu() {
    	let storyboard = UIStoryboard(name: "Main", bundle: nil)
		let menuViewController = storyboard.instantiateViewController(withIdentifier: "MenuViewControllerStoryboardID") as! MenuViewController
		menuViewController.delegate = self
		menuViewController.transitioningDelegate = menuTransitioningDelegate
		menuViewController.modalPresentationStyle = .custom
		present(menuViewController, animated: true, completion: nil)
	}
    
    
    // MARK: UI Setup
    private func setupUI() {
		view.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 1)
		addChildViewController(listVC)
		listVC.didMove(toParentViewController: self)
		listVC.view.translatesAutoresizingMaskIntoConstraints = false
		addChildViewController(fractionsVC)
		fractionsVC.didMove(toParentViewController: self)
		fractionsVC.view.translatesAutoresizingMaskIntoConstraints = false
		addChildViewController(probabilityVC)
		probabilityVC.didMove(toParentViewController: self)
		probabilityVC.view.translatesAutoresizingMaskIntoConstraints = false
		addChildViewController(commonsVC)
		commonsVC.didMove(toParentViewController: self)
		commonsVC.view.translatesAutoresizingMaskIntoConstraints = false
    	showListVC()
    }
    
    // MARK: functions that show each child view controller for singleVC/singleVCTab type scenes
	fileprivate func showListVC() {
		if view.subviews.count > 0 {
			view.subviews[0].removeFromSuperview()
		}
	
		let listView = listVC.view!
        view.addSubview(listView)
            
		NSLayoutConstraint.activate([
	            listView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
	            listView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
	            listView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
	            listView.topAnchor.constraint(equalTo: view.topAnchor)
            	])
	}
	fileprivate func showFractionsVC() {
		if view.subviews.count > 0 {
			view.subviews[0].removeFromSuperview()
		}
	
		let fractionsView = fractionsVC.view!
        view.addSubview(fractionsView)
            
		NSLayoutConstraint.activate([
	            fractionsView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
	            fractionsView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
	            fractionsView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
	            fractionsView.topAnchor.constraint(equalTo: view.topAnchor)
            	])
	}
	fileprivate func showProbabilityVC() {
		if view.subviews.count > 0 {
			view.subviews[0].removeFromSuperview()
		}
	
		let probabilityView = probabilityVC.view!
        view.addSubview(probabilityView)
            
		NSLayoutConstraint.activate([
	            probabilityView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
	            probabilityView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
	            probabilityView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
	            probabilityView.topAnchor.constraint(equalTo: view.topAnchor)
            	])
	}
	fileprivate func showCommonsVC() {
		if view.subviews.count > 0 {
			view.subviews[0].removeFromSuperview()
		}
	
		let commonsView = commonsVC.view!
        view.addSubview(commonsView)
            
		NSLayoutConstraint.activate([
	            commonsView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
	            commonsView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
	            commonsView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
	            commonsView.topAnchor.constraint(equalTo: view.topAnchor)
            	])
	}
    
}

// MARK: MenuViewControllerDelegate
extension AlgebraParentViewController: MenuViewControllerDelegate {
	func menuViewController(controller: MenuViewController, didSelectItem selectedItem: MenuItem) {
		var selectedViewController: UIViewController?
		switch selectedItem.destinationID {
    	case "Algebra":
    		selectedViewController = AlgebraParentViewController()
    	case "Equations":
    		selectedViewController = EquationsParentViewController()
    	case "Guide":
    		selectedViewController = GuideParentViewController()
    	case "About":
    		selectedViewController = AboutParentViewController()
    	default:
    		break
		}
		// Dismiss MenuViewController
		dismiss(animated: true)
		if selectedViewController != nil {
			navigationController!.viewControllers.append(selectedViewController!)
			navigationController!.viewControllers.removeFirst()
		}
	}
}


// MARK: ChildViewControllerInteractionProtocol
extension AlgebraParentViewController: ChildViewControllerInteractionProtocol {

	func childViewControllerInteraction(controlId: String, selectedItem: Any?) {
		switch controlId {
		
        
		case "toolsListView":
			// TODO implement the action
			break
		
		
        case "calcFractionsButton":
			// TODO implement the action
			break
        
		
		
        case "calcProbButton":
			// TODO implement the action
			break
        
		
		
        case "calcCommButton":
			// TODO implement the action
			break
        
		
    	default:
    		break
		}
	}
}