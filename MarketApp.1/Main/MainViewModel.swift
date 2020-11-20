//
//  MainViewModel.swift
//  MarketApp.1
//
//  Created by Manafov Hamid on 11/9/20.
//  Copyright © 2020 Manafov Hamid. All rights reserved.
//

import Foundation

protocol MainViewModelProtocol {
	var mainTableViewCellId: String { get set }
	var secondTableVIewCellId: String { get set }
	func tapOnTheComment(testArray: FeedResponse)
	func tapOnTheJobVacancy()
	func tapOnTheCreateResume()
	func tapOnTheIsAxtaranlar()
	init(router: RouterProtocol?)
}

final class MainViewModel: MainViewModelProtocol {
	var mainTableViewCellId: String = "MainTableViewCellId"
	var secondTableVIewCellId: String = "SecondTableVIewCellId"
	private let router: RouterProtocol?
	init(router: RouterProtocol?) {
		self.router = router
	}
	
	func tapOnTheComment(testArray: FeedResponse) {
		router?.showDetail(testArray: testArray)
	}
	
	func tapOnTheCreateResume() {
		router?.showCreatResume()
	}
	
	func tapOnTheJobVacancy() {
		router?.showJobVacancy()
	}
	
	func tapOnTheIsAxtaranlar() {
		router?.showIshAxtaranlar()
	}
	
}
