//
//  CreatResumeTargetViewModel.swift
//  MarketApp.1
//
//  Created by Manafov Hamid on 11/16/20.
//  Copyright © 2020 Manafov Hamid. All rights reserved.
//

import Foundation

protocol CreatResumeTargetViewModelProtocl {
	init(router: RouterProtocol)
}

final class CreatResumeTargetViewModel: CreatResumeTargetViewModelProtocl {
	private let router: RouterProtocol?
	init(router: RouterProtocol) {
		self.router = router
	}
}
