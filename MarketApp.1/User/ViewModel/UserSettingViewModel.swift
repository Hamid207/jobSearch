//
//  UserViewSettingViewModel.swift
//  MarketApp.1
//
//  Created by Manafov Hamid on 11/20/20.
//  Copyright © 2020 Manafov Hamid. All rights reserved.
//

import Foundation

protocol UserSettingViewModelProtocol {
	init(router: RouterProtocol)
}

final class UserSettingViewModel: UserSettingViewModelProtocol {
	private let router: RouterProtocol?
	init(router: RouterProtocol) {
		self.router = router
	}
}
