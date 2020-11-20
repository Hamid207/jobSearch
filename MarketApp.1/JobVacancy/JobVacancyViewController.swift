//
//  JobVacancyViewController.swift
//  MarketApp.1
//
//  Created by Manafov Hamid on 11/12/20.
//  Copyright © 2020 Manafov Hamid. All rights reserved.
//

import UIKit

class JobVacancyViewController: UIViewController { //Is axtarmaq yeni butun vakansiyalar
	
	var jobVacancyViewModel: JobVacancyViewModelProtocol?
	
	let jobVacancyTableView = UITableView(frame: .zero, style: .plain)
	let refresh = UIRefreshControl()
	var tesarray = [FeedResponse]()
	private let searchControl = UISearchController(searchResultsController: nil)
    override func viewDidLoad() {
        super.viewDidLoad()
		view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
		navigationItem.title = "JobVacancyViewController"
		setupITem()
		searchControl.obscuresBackgroundDuringPresentation = false
		searchControl.searchBar.placeholder = "Search"
		navigationItem.searchController = searchControl
		definesPresentationContext = true
		let aa = FeedResponse(name: "Ios devoloper Ios devolope", price: "300 AZN", location: "Baku", image: "nil", infoText: "aksmdaidmaiomdaiomdaiomsdioasmdioamdioamdioamdiamsdioamsdiomaiodmasid", city: "Baku", clientName: "Hamid Manafov", odeme: .offline)
		tesarray.append(aa)
		let aaa = FeedResponse(name: "Ios devoloper", price: "300 AZN", location: "Baku", image: "nil", infoText: "aksmdaidmaiomdaiomdaiomsdioasmdioamdioamdioamdiamsdioamsdiomaiodmasid", city: "Baku", clientName: "Kapital Bank", odeme: .online)
		tesarray.append(aaa)
		let aaaa = FeedResponse(name: "Ios devoloper", price: "300 AZN", location: "Baku", image: "nil", infoText: "aksmdaidmaiomdaiomdaiomsdioasmdioamdioamdioamdiamsdioamsdiomaiodmasid", city: "Baku", clientName: "MSQ", odeme: .online)
		tesarray.append(aaaa)
    }
    


}
