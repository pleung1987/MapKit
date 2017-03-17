//
//  AddLocationTableViewControllerDelegate.swift
//  MapKitTutorial
//
//  Created by Patrick Leung on 17/3/2017.
//  Copyright © 2017 Thorn Technologies. All rights reserved.
//

import UIKit

protocol AddLocationTableViewControllerDelegate: class {
    func SavedButton(by controller: ViewController, with lat: Double, with long: Double)
    func backButtonPressed(by controller: ViewController)
} 
