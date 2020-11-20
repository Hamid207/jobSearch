//
//  JobSeekersViewModel.swift
//  MarketApp.1
//
//  Created by Manafov Hamid on 11/18/20.
//  Copyright © 2020 Manafov Hamid. All rights reserved.
//

import Foundation

protocol IshAxtaranlarViewModelProtocol {
	func tapOnTheDetailVc(testArray: FeedResponse)
	init(router: RouterProtocol)
}

final class IshAxtaranlarViewModel: IshAxtaranlarViewModelProtocol {
	private let router: RouterProtocol?
	init(router: RouterProtocol) {
		self.router = router
	}
	
	func tapOnTheDetailVc(testArray: FeedResponse) {
		router?.showDetail(testArray: testArray)
	}
}
