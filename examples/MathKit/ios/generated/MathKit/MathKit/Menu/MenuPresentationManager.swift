//
//  MenuPresentationManager.swift
//  MenuPresentationManager
//
//  Automatically generated by MobileCodeGenerator 4.
//  Copyright 2018 . All rights reserved.
//

import UIKit

final class MenuPresentationManager: NSObject {

}

// MARK: - UIViewControllerTransitioningDelegate
extension MenuPresentationManager: UIViewControllerTransitioningDelegate {

	func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
		let presentationController = MenuPresentationController(presentedViewController: presented, presenting: presenting)
		return presentationController
  }

	func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
		return MenuPresentationAnimator(isPresentation: true)
	}

	func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
		return MenuPresentationAnimator(isPresentation: false)
	}
}
