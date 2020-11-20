//
//  UserSettingViewController.swift
//  MarketApp.1
//
//  Created by Manafov Hamid on 11/20/20.
//  Copyright © 2020 Manafov Hamid. All rights reserved.
//

import UIKit

class UserSettingViewController: UIViewController {
	
	var userTabeleView = UITableView(frame: .zero, style: .plain)
	
	var viewModel: UserSettingViewModelProtocol?

   override func viewDidLoad() {
		  super.viewDidLoad()
		  view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
		  navigationItem.title = "UserViewController"
		  navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveBarbutton))
		  itemSetup()
	  }

}
