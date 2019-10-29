//
//  SearchFlightViewController.swift
//  TabViewDemo
//
//  Created by Ashraf Ahmed on 24/10/19.
//  Copyright © 2019 Shakil Ahammed. All rights reserved.
//

import UIKit
import TTSegmentedControl


class SearchFlightViewController: UIViewController {

    var segmentedControl: TTSegmentedControl = TTSegmentedControl()
    
    
    var previousIndex: Int = 0
    var indexChanged: Bool = false
    
    private lazy var onewayViewController : OneWayViewController = {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "onewayTrip") as! OneWayViewController
        return viewController
    }()
    
    private lazy var roundtripViewController : RoundTripViewController = {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "roundTrip") as! RoundTripViewController
        return viewController
    }()
    
    private lazy var multiCityViewController : MultiCityViewController = {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "multiCity") as! MultiCityViewController
        return viewController
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupSegmentControl()
    }
    
    func setupSegmentControl() {
        segmentedControl.itemTitles = ["One way", "Roundtrip", "Multi-city"]
        segmentedControl.allowChangeThumbWidth = false
        segmentedControl.containerBackgroundColor = AppConfig.Colors.travelTypeMenuBackground
        
        if let font = UIFont(name: AppConfig.FontFamilyNames.mediumDisplayFamily, size: 20.0) {
            segmentedControl.selectedTextFont = font
        }
        if let font = UIFont(name: AppConfig.FontFamilyNames.mediumDisplayFamily, size: 20.0) {
            segmentedControl.defaultTextFont = font
        }

        segmentedControl.defaultTextColor = UIColor.white
        segmentedControl.selectedTextColor = AppConfig.Colors.travelTypeMenuSelectedText
        segmentedControl.thumbShadowColor = TTSegmentedControl.UIColorFromRGB(0x22C6E7)
        segmentedControl.thumbGradientColors = [(AppConfig.Colors.travelTypeMenuStart), (AppConfig.Colors.travelTypeMenuEnd)]
        segmentedControl.useGradient = true
        segmentedControl.useShadow = true
        segmentedControl.padding = CGSize(width: 3, height: 3)
        segmentedControl.cornerRadius = 8
        segmentedControl.hasBounceAnimation = true
        segmentedControl.didSelectItemWith = { (index, title) -> () in
            //print("Selected item => index: \(index); title: \(title ?? "")")
            self.indexChanged = true
            self.updateView()
        }
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(segmentedControl)
        NSLayoutConstraint.activate([
            segmentedControl.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 30),
            segmentedControl.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            segmentedControl.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            segmentedControl.heightAnchor.constraint(equalToConstant: 45)
        ])
        
        self.updateView()
    }
    
    
    private func add(asChildViewController viewController: UIViewController) {
           
           // Add Child View Controller
           self.addChild(viewController)
           
           // Add Child View as Subview
           self.view.addSubview(viewController.view)
           
           // Configure Child View
           viewController.view.backgroundColor = UIColor.clear
           viewController.view.translatesAutoresizingMaskIntoConstraints = false
           NSLayoutConstraint.activate([
               viewController.view.topAnchor.constraint(equalTo: self.segmentedControl.bottomAnchor),
               viewController.view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
               viewController.view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
               viewController.view.bottomAnchor.constraint(equalTo:
                   self.view.bottomAnchor)
           ])
           
           // Notify Child View Controller
           viewController.didMove(toParent: self)
       }
       
       private func remove(asChildViewController viewController: UIViewController) {
           
           // Notify Child View Controller
           viewController.willMove(toParent: nil)
           
           // Remove Child View From Superview
           viewController.view.removeFromSuperview()
           
           // Notify Child View Controller
           viewController.removeFromParent()
       }
    
    private func updateView() {
        print("Current Index: \(self.segmentedControl.currentIndex)")
        switch self.segmentedControl.currentIndex {
            
        case 0:
//            if self.indexChanged {
//
//                if self.previousIndex == 1 {
//                    if let fromData = self.searchFlightRoundTripViewController.data {
//                        let toData = self.getUpdateSearchParameters(fromData: fromData)
//                        toData.tripType = .OneWayTrip
//                        self.searchFlightOneWayViewController.data = toData
//                    }
//                }
//
//                if self.previousIndex == 2 {
//                    if let fromData = self.searchFlightMultiCityViewController.data {
//                        let toData = self.getUpdateSearchParameters(fromData: fromData)
//                        toData.tripType = .OneWayTrip
//                        self.searchFlightOneWayViewController.data = toData
//                    }
//                }
//            }
            
            self.remove(asChildViewController: self.roundtripViewController)
            self.remove(asChildViewController: self.multiCityViewController)
            self.add(asChildViewController: self.onewayViewController)
            self.previousIndex = self.segmentedControl.currentIndex
            return
            
        case 1:
//            if self.indexChanged {
//
//                if self.previousIndex == 0 {
//                    if let fromData = self.searchFlightOneWayViewController.data {
//                        let toData = self.getUpdateSearchParameters(fromData: fromData)
//                        toData.tripType = .RoundTrip
//                        if toData.flights.count > 0 {
//                            if let flight = toData.flights.first, let date = flight.flyDate {
//                                flight.returnDate = DateHelper.addDay(day: 3, with: date)
//                            }
//                        }
//                        self.searchFlightRoundTripViewController.data = toData
//                    }
//                }
//
//                if self.previousIndex == 2 {
//                    if let fromData = self.searchFlightMultiCityViewController.data {
//                        let toData = self.getUpdateSearchParameters(fromData: fromData)
//                        toData.tripType = .RoundTrip
//                        if toData.flights.count > 0 {
//                            if let flight = toData.flights.first, let date = flight.flyDate {
//                                flight.returnDate = DateHelper.addDay(day: 3, with: date)
//                            }
//                        }
//                        self.searchFlightRoundTripViewController.data = toData
//                    }
//                }
//            }
            
            self.remove(asChildViewController: self.onewayViewController)
            self.remove(asChildViewController: self.multiCityViewController)
            self.add(asChildViewController: self.roundtripViewController)
            self.previousIndex = self.segmentedControl.currentIndex
            return
            
        case 2:
//            if self.indexChanged {
//
//                if self.previousIndex == 0 {
//                    if let fromData = self.searchFlightOneWayViewController.data {
//                        let toData = self.getUpdateSearchParameters(fromData: fromData)
//                        toData.tripType = .MultiCityTrip
//                        self.searchFlightMultiCityViewController.data = toData
//                    }
//                }
//
//                if self.previousIndex == 1 {
//                    if let fromData = self.searchFlightRoundTripViewController.data {
//                        let toData = self.getUpdateSearchParameters(fromData: fromData)
//                        toData.tripType = .MultiCityTrip
//                        self.searchFlightMultiCityViewController.data = toData
//                    }
//                }
//            }
//
            self.remove(asChildViewController: self.onewayViewController)
            self.remove(asChildViewController: self.roundtripViewController)
            self.add(asChildViewController: self.multiCityViewController)
            self.previousIndex = self.segmentedControl.currentIndex
            return
            
        default:
            return
        }
    }

}
