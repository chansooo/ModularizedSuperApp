//
//  AdaptivePresentationControllerDelegate.swift
//  MiniSuperApp
//
//  Created by kimchansoo on 2023/03/14.
//

import UIKit

public protocol AdaptivePresentationControllerDelegate: AnyObject {
    func presentationControllerDidDismiss()
}

public final class AdaptivePresentationControllerDelegateProxy: NSObject, UIAdaptivePresentationControllerDelegate {
    public weak var delegate: AdaptivePresentationControllerDelegate?
    
    public func presentationControllerDidDismiss(_ presentationController: UIPresentationController) {
        delegate?.presentationControllerDidDismiss()
    }
}
