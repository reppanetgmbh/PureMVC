//
//  Notifier.swift
//  PureMVC Swift
//
//  Created by Stephan Schulz on 01.07.14.
//  Copyright (c) 2014 Stephan Schulz. All rights reserved.
//

import Foundation

open class Notifier: NSObject, INotifier
{
    
    /**
    * A Base <code>INotifier</code> implementation.
    *
    * <P>
    * <code>MacroCommand, Command, Mediator</code> and <code>Proxy</code>
    * all have a need to send <code>Notifications</code>. <P>
    * <P>
    * The <code>INotifier</code> interface provides a common method called
    * <code>sendNotification</code> that relieves implementation code of
    * the necessity to actually construct <code>Notifications</code>.</P>
    *
    * <P>
    * The <code>Notifier</code> class, which all of the above mentioned classes
    * extend, provides an initialized reference to the <code>Facade</code>
    * Singleton, which is required for the convienience method
    * for sending <code>Notifications</code>, but also eases implementation as these
    * classes have frequent <code>Facade</code> interactions and usually require
    * access to the facade anyway.</P>
    *
    * @see Facade, Mediator, Proxy, SimpleCommand, MacroCommand
    */
    
    public var facade : IFacade
    
    override required public init ()
    {
        self.facade = Facade.getInstance()
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
        self.facade.sendNotification( notificationName , body: body, type: type )
    }
    
    public func sendNotification( _ notificationName: String )
    {
        self.facade.sendNotification( notificationName );
    }
    
    public func sendNotification ( _ notificationName: String , body: Any )
    {
        self.facade.sendNotification( notificationName , body: body )
    }
    
    public func sendNotification ( _ notificationName: String , type: String )
    {
        self.facade.sendNotification( notificationName , type: type )
    }
    
}
