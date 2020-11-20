//
//  FeedResponse.swift
//  MarketApp.1
//
//  Created by Manafov Hamid on 11/9/20.
//  Copyright © 2020 Manafov Hamid. All rights reserved.
//

import Foundation

struct FeedResponse {
	let name: String
	let price: String?
	let location: String?
	let image: String?
	let infoText: String?
	let city: String
	let clientName: String
	let odeme: OdemeUsulu
}

enum OdemeUsulu: String {
	case online = "Online"
	case offline = "Offline"
}
