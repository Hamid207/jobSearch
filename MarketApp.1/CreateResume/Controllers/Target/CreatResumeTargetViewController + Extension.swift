//
//  CreatResumeTargetViewController + Extension.swift
//  MarketApp.1
//
//  Created by Manafov Hamid on 11/12/20.
//  Copyright © 2020 Manafov Hamid. All rights reserved.
//

import UIKit

extension CreatResumeTargetViewController {
	func setupIem() {
		createResumeTargetTableView.delegate = self
		createResumeTargetTableView.dataSource = self
		createResumeTargetTableView.separatorStyle = .singleLine
		createResumeTargetTableView.allowsSelection = false // tableViewnu basmaq olmur
		createResumeTargetTableView.register(TargetCreatResumeTableViewCell.self, forCellReuseIdentifier: "TargetCreatResumeTableViewCell")
		createResumeTargetTableView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
		//createResumeTargetTableView.sectionFooterHeight = 10
		createResumeTargetTableView.sectionHeaderHeight = 10
		view.addSubview(createResumeTargetTableView)
		createResumeTargetTableView.translatesAutoresizingMaskIntoConstraints = false
		createResumeTargetTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
		createResumeTargetTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
		createResumeTargetTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
		createResumeTargetTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
	}
}

//MARK: - UITableViewDataSource
extension CreatResumeTargetViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		if let cell = tableView.dequeueReusableCell(withIdentifier: "TargetCreatResumeTableViewCell", for: indexPath) as? TargetCreatResumeTableViewCell {
			cell.nameLabel.text = "Proqramlasdirma"
			return cell
		}
		return UITableViewCell()
	}
	
	
}

//MARK: - UITableViewDelegate
extension CreatResumeTargetViewController: UITableViewDelegate {
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 400
	}
}

