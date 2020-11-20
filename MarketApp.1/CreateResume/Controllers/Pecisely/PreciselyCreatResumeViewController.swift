//
//  PreciselyCreatResumeViewController.swift
//  MarketApp.1
//
//  Created by Manafov Hamid on 11/13/20.
//  Copyright © 2020 Manafov Hamid. All rights reserved.
//

import UIKit

class PreciselyCreatResumeViewController: UIViewController {//CreatResumeControllerdaki tableviewda secilene uygun olan kateqoriyalari gostermelidi --- CreatResumeControllerdaki -> PreciselyCreatResumeViewController -> CreatResumeTargetViewController
	
	var viewModel: PreciselyCreatResumeViewModelPrtotocl?
	let tableView = UITableView(frame: .zero, style: .plain)

    override func viewDidLoad() {
        super.viewDidLoad()
		view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
		navigationItem.title = "PreciselyCreatResumeViewController"
		setupNavigationBar()
		setupIem()
    }
	
	func setupNavigationBar() {
		if let topItem = navigationController?.navigationBar.topItem {
			topItem.backBarButtonItem = UIBarButtonItem(title: nil, style: .plain, target: nil, action: nil)
			topItem.backBarButtonItem?.tintColor = UIColor(named: "MainColor")
		}
	}


}
