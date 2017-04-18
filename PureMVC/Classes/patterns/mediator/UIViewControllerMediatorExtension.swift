//
//  UIViewControllerMediatorExtension.swift
//  PureMVCSwift
//
//  Created by Thomas Reppa on 05.01.15.
//  Copyright (c) 2015 reppa.net GmbH. All rights reserved.
//

import Foundation
import UIKit

public protocol NotificationMediator: IMediator, INotifier {
    
}

public extension NotificationMediator {
    public static func NAME () -> String
    {
        let desc = String(describing: type(of: self))
        return desc
    }
    
    public func register() {
        self.facade().registerMediator(self)
    }
    
    
    public func unregister (){
        _ = self.facade().removeMediator(self.name!)
    }
    
    
    public func facade() -> IFacade{
        return Facade.getInstance()
    }
    
    // MARK: - protocol methods
    public var name : String? {
        get {
            let n = String(describing: type(of: self))
            return n;
        }
    }
    
    public func context () -> AnyObject{
        return self
    }
    
    public func onRegister() {
        
    }
    
    public func onRemove() {
        
    }

    /**
     * Create and send an <code>INotification</code>.
     *
     * <P>
     * Keeps us from having to construct new INotification
     * instances in our implementation code.
     * @param notificationName the name of the notiification to send
     * @param body the body of the notification
     * @param type the type of the notification
     */
    public func sendNotification ( _ notificationName: String , body: Any , type: String )
    {
        self.facade().sendNotification( notificationName , body: body, type: type )
    }
    
    public func sendNotification( _ notificationName: String )
    {
        self.facade().sendNotification( notificationName );
    }
    
    public func sendNotification ( _ notificationName: String , body: Any )
    {
        self.facade().sendNotification( notificationName , body: body )
    }
    
    public func sendNotification ( _ notificationName: String , type: String )
    {
        self.facade().sendNotification( notificationName , type: type )
    }
}


// FALLBACK for name setter
/*
import ObjectiveC

private var xoAssociationKey: UInt8 = 0

extension UIView {
    var xo: PFObject! {
        get {
            return objc_getAssociatedObject(self, &xoAssociationKey) as? PFObject
        }
        set(newValue) {
            objc_setAssociatedObject(self, &xoAssociationKey, newValue, UInt(OBJC_ASSOCIATION_RETAIN))
        }
    }
}
*/
