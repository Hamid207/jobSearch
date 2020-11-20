//
//  FavoritesViewModel.swift
//  MarketApp.1
//
//  Created by Manafov Hamid on 11/18/20.
//  Copyright © 2020 Manafov Hamid. All rights reserved.
//

import Foundation

protocol FavoritesViewModelProtocol {
	func tapOnTheSgowDetail(testArray: FeedResponse)
	init(router: RouterProtocol)
}

final class FavoritesViewModel: FavoritesViewModelProtocol {
	private let router: RouterProtocol?
	init(router: RouterProtocol) {
		self.router = router
	}
	
	func tapOnTheSgowDetail(testArray: FeedResponse) {
		router?.showFavaritesDetail(testArray: testArray)
	}
}
