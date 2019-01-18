//
//  UIKitNotifications.swift
//  NotificationsTests
//
//  Created by Leandro Perez on 12/26/18.
//  Copyright © 2018 Leandro perez. All rights reserved.
//

import XCTest
import RxSwiftNotifications
import RxSwift
import UIKit

class UIKitNotificationsTests: XCTestCase {


    func testUIKitNotification() {
        let disposeBag = DisposeBag()

        //This is just to show you how to listen to a regular UIKit notification
        NSNotification.Name.UIApplicationWillTerminate
            .notificationObservable()
            .subscribe(onNext: { (notification) in
            })
            .disposed(by: disposeBag)

        NSNotification.Name.UIApplicationDidBecomeActive
            .notificationObservable()
            .subscribe(onNext: { _ in
            })
            .disposed(by: disposeBag)
    }

}
