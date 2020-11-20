//
//  JobVacancyViewModel.swift
//  MarketApp.1
//
//  Created by Manafov Hamid on 11/12/20.
//  Copyright © 2020 Manafov Hamid. All rights reserved.
//

import Foundation

protocol JobVacancyViewModelProtocol {
	func test(test: FeedResponse)
	init(router: RouterProtocol?)
}

final class JobVacancyViewModel: JobVacancyViewModelProtocol {
	private let router: RouterProtocol?
	init(router: RouterProtocol?) {
		self.router = router
	}
	
	func test(test: FeedResponse) {
		router?.showDetail(testArray: test)
	}
}
