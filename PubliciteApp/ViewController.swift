//
//  ViewController.swift
//  PubliciteApp
//
//  Created by Sunday Okpoluaefe on 9/20/19.
//  Copyright © 2019 cyberspace. All rights reserved.
//

import UIKit
import PubliciteSdk


class ViewController: UIViewController {
    

    let publiciteAdsView =  PubliciteAdsView();
    let publiciteSliderAdsView = PubliciteSliderView();
    
    func setupComponents() -> Void {
        
        self.view.addSubview(publiciteSliderAdsView);
        publiciteSliderAdsView.translatesAutoresizingMaskIntoConstraints = false;
        
        publiciteAdsView.backgroundColor = UIColor.red;
        
        //set constraints
        publiciteSliderAdsView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true;
        publiciteSliderAdsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true;
        publiciteSliderAdsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true;
        publiciteSliderAdsView.heightAnchor.constraint(equalToConstant: 200).isActive = true;
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupComponents();
        //adsView.backgroundColor = .blue
         
        //publiciteAdsView.load(token: "Gu2pqMMaHgo%2B%2By4lbmNtbZGoat4dtyVSG7GJVHsWblw%3D");
      
        publiciteSliderAdsView.refreshRateMs = 50000;
        publiciteSliderAdsView.load(adsToken: "APP-535F7894-35AB-49D9-986D-C7B2B8B9B50D_SP-3E71FDB4-3B6B-4A1B-AF8F-20C12356CDEE_52_3");
        
        // Do any additional setup after loading the view.
    }


}

