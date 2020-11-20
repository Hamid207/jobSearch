//
//  CreateResumeViewController.swift
//  MarketApp.1
//
//  Created by Manafov Hamid on 11/12/20.
//  Copyright © 2020 Manafov Hamid. All rights reserved.
//

import UIKit

class CreateResumeViewController: UIViewController { //Elan yerleesdirmek yeni istifadeci oz elanin yaradir ---- CreatResumeControllerdaki -> PreciselyCreatResumeViewController -> CreatResumeTargetViewController
	
	var creatResumeViewModel: CreateResumeViewModelProtocol?
	let createResumeTableView = UITableView(frame: .zero, style: .plain)
	var testArry = [KateqoryModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
		view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
		setupIem()
		navigationItem.title = "Kateqoriya CreateResumeViewController"
		add(string: "Maliyye")
		add(string: "Marketinq")
		add(string: "İnzibati")
		add(string: "Satış")
		add(string: "Programlasdirma")
		setupNavigationBar()
    }
	
	func add(string: String) {
		let aa = KateqoryModel(kateqory: string)
		testArry.append(aa)
	}
	
	func setupNavigationBar() {
		if let topItem = navigationController?.navigationBar.topItem {
			topItem.backBarButtonItem = UIBarButtonItem(title: nil, style: .plain, target: nil, action: nil)
			topItem.backBarButtonItem?.tintColor = UIColor(named: "MainColor")
		}
	}
    
}
