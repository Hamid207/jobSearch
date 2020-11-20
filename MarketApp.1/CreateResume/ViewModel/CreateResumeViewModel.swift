//
//  CreateResumeViewModel.swift
//  MarketApp.1
//
//  Created by Manafov Hamid on 11/12/20.
//  Copyright © 2020 Manafov Hamid. All rights reserved.
//

import Foundation
protocol CreateResumeViewModelProtocol: class {
	var kateqoryArray: [KateqoryModel]? { get set }
	func tapOnThePeciselyVc()
	init(router: RouterProtocol?)
}

final class CreateResumeViewModel: CreateResumeViewModelProtocol {
	private let router: RouterProtocol?
	var kateqoryArray: [KateqoryModel]?
	
	init(router: RouterProtocol?) {
		self.router = router
	}
	
	func tapOnThePeciselyVc() {
		router?.showPreciselyCreatResume()
	}
}
