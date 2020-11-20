//
//  DetailViewModel.swift
//  MarketApp.1
//
//  Created by Manafov Hamid on 11/11/20.
//  Copyright © 2020 Manafov Hamid. All rights reserved.
//

import Foundation

protocol DetailViewModelProtocol {
	var mainTableViewCellId: String { get set }
	var testArray: FeedResponse? { get set }
	init(router: RouterProtocol, testArray: FeedResponse?)
}

final class DetailViewModel: DetailViewModelProtocol {
	var mainTableViewCellId: String = "MainTableViewCellId"
	private let router: RouterProtocol?
	var testArray: FeedResponse?
	init(router: RouterProtocol, testArray: FeedResponse?) {
		self.router = router
		self.testArray = testArray
	}
}
