//
//  DetailViewController.swift
//  MarketApp.1
//
//  Created by Manafov Hamid on 11/11/20.
//  Copyright © 2020 Manafov Hamid. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
	
	var detailViewModel: DetailViewModelProtocol?
	let detailTableiew = UITableView(frame: .zero, style: .plain)
	//var testArray = [FeedResponse]()

    override func viewDidLoad() {
        super.viewDidLoad()
		view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
		setupNavigationBar()
		setupView()
		navigationItem.title = "DetailViewController"
		
//		let aa = FeedResponse(name: "Ios devoloper Ios devoloper Ios devoloperIos devoloperIos devoloperIos devoloperIos devoloperIos devoloperIos devoloperIos devoloper", price: "300 AZN", location: "Baku", image: "nil", infoText: "aksmdaidmaiomdaiomdaiomsdioasmdioamdioamdioamdiamsdioamsdiomaiodmasid", city: "Baku", clientName: "Hamid Manafov", odeme: .online)
//		testArray.append(aa)
//		let aaa = FeedResponse(name: "Ios devoloper", price: "300 AZN", location: "Baku", image: "nil", infoText: "aksmdaidmaiomdaiomdaiomsdioasmdioamdioamdioamdiamsdioamsdiomaiodmasid", city: "Baku", clientName: "Kapital Bank", odeme: .online)
//		testArray.append(aaa)
//		let aaaa = FeedResponse(name: "Ios devoloper", price: "300 AZN", location: "Baku", image: "nil", infoText: "aksmdaidmaiomdaiomdaiomsdioasmdioamdioamdioamdiamsdioamsdiomaiodmasid", city: "Baku", clientName: "MSQ", odeme: .online)
//		testArray.append(aaaa)
    }
    


}
