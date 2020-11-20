//
//  DetailViewController + Extension.swift
//  MarketApp.1
//
//  Created by Manafov Hamid on 11/12/20.
//  Copyright © 2020 Manafov Hamid. All rights reserved.
//

import UIKit

extension DetailViewController {
	
	func setupNavigationBar() {
		if let topItem = navigationController?.navigationBar.topItem {
			topItem.backBarButtonItem = UIBarButtonItem(title: nil, style: .plain, target: nil, action: nil)
			topItem.backBarButtonItem?.tintColor = UIColor(named: "MainColor")
		}
	}

		func setupView() {
		//MARK - DETAILTABLEVIEW
			detailTableiew.delegate = self
			detailTableiew.dataSource = self
			detailTableiew.separatorStyle = .none
			detailTableiew.allowsSelection = false // tableViewnu basmaq olmur
			detailTableiew.register(DetailTableViewCell.self, forCellReuseIdentifier: "detailTableViewCellId")
			detailTableiew.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
	//		mainTableView.sectionFooterHeight = 10
			detailTableiew.sectionHeaderHeight = 10
			view.addSubview(detailTableiew)
			detailTableiew.translatesAutoresizingMaskIntoConstraints = false
			detailTableiew.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
			detailTableiew.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
			detailTableiew.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
			detailTableiew.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
		}
}

//MARK: - UITableViewDataSource
extension DetailViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		if let cell = tableView.dequeueReusableCell(withIdentifier: "detailTableViewCellId", for: indexPath) as? DetailTableViewCell {
			if let item = detailViewModel?.testArray {
				cell.refResh(item)
				return cell
			}
		}
		return UITableViewCell()
	}
}

//MARK: - UITableViewDelegate
extension DetailViewController: UITableViewDelegate {
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 400
	}
}


