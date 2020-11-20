//
//  UserSettingViewController + Extension.swift
//  MarketApp.1
//
//  Created by Manafov Hamid on 11/20/20.
//  Copyright © 2020 Manafov Hamid. All rights reserved.
//

import UIKit

extension UserSettingViewController {
	func itemSetup() {
		//MARK - USERTABLEVIEW
		userTabeleView.delegate = self
		userTabeleView.dataSource = self
		userTabeleView.separatorStyle = .none
		userTabeleView.allowsSelection = false // tableViewnu basmaq olmur
		userTabeleView.register(UserTableViewCell.self, forCellReuseIdentifier: "userTableViewCellId")
		userTabeleView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
		//		userTabeleView.sectionFooterHeight = 10
		userTabeleView.sectionHeaderHeight = 10
		view.addSubview(userTabeleView)
		userTabeleView.translatesAutoresizingMaskIntoConstraints = false
		userTabeleView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
		userTabeleView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
		userTabeleView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
		userTabeleView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
	}
	
	@objc func saveBarbutton() {
		print("Save")
	}
}

//MARK: - UITableViewDataSource
extension UserSettingViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		if let cell = tableView.dequeueReusableCell(withIdentifier: "userTableViewCellId", for: indexPath) as? UserTableViewCell {
			return cell
		}
		return UITableViewCell()
	}
	
	
}

//MARK: - UITableViewDelegate
extension UserSettingViewController: UITableViewDelegate {
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 700
	}
}
