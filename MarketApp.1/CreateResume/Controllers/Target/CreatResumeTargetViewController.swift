//
//  CreatResumeTargetViewController.swift
//  MarketApp.1
//
//  Created by Manafov Hamid on 11/12/20.
//  Copyright © 2020 Manafov Hamid. All rights reserved.
//

import UIKit

class CreatResumeTargetViewController: UIViewController {//CreatResumeControllerdaki -> PreciselyCreatResumeViewController -> CreatResumeTargetViewController
	
	var viewModel: CreatResumeTargetViewModelProtocl?
	let createResumeTargetTableView = UITableView(frame: .zero, style: .plain)

    override func viewDidLoad() {
        super.viewDidLoad()
		view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
		navigationItem.title = "CreatResumeTargetViewController"
		setupNavigationBar()
		setupIem()
		createResumeTargetTableView.tableFooterView = UIView()
		navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Legv et ", style: .done, target: self, action: #selector(sil))
    }
    
	func setupNavigationBar() {
		if let topItem = navigationController?.navigationBar.topItem {
			topItem.backBarButtonItem = UIBarButtonItem(title: nil, style: .plain, target: nil, action: nil)
			topItem.backBarButtonItem?.tintColor = UIColor(named: "MainColor")
		}
	}

	
	@objc func sil() {
		navigationController?.popToRootViewController(animated: true)		
	}

}
