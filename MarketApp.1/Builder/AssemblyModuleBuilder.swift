//
//  AssemblyModuleBuilder.swift
//  MarketApp.1
//
//  Created by Manafov Hamid on 11/10/20.
//  Copyright © 2020 Manafov Hamid. All rights reserved.
//

import UIKit

protocol AsseblyBuilderProtocol {
	func creatMainModule(router: RouterProtocol) -> UIViewController
	func creatDetailModule(router: RouterProtocol, testArray: FeedResponse?) -> UIViewController
	func creatJobVacanxyModule(router: RouterProtocol) -> UIViewController
	func creatCreateResumeViewControllerModlue(router: RouterProtocol) -> UIViewController
	func creatPreciselyCreatResumeViewControllerModule(router: RouterProtocol) -> UIViewController
	func creatCreatResumeTargetViewControllerModule(router: RouterProtocol) -> UIViewController
	func creatIshAxtaranlarModule(router: RouterProtocol) -> UIViewController
	func creatUserViewControllerModeule(router: RouterProtocol) -> UIViewController
	func creatFavoritesViewControllerModeule(router: RouterProtocol) -> UIViewController
	func creatFavaritesDetailModeule(router: RouterProtocol, testArray: FeedResponse?) -> UIViewController
}

class AsseblyModelBuilder: AsseblyBuilderProtocol {
	//creatMainModule
	func creatMainModule(router: RouterProtocol) -> UIViewController {
		let view = MainViewController()
		let mainViewModel = MainViewModel(router: router)
		view.mainViewModel = mainViewModel
		return view
	}
	
	//creatDetailModule
	func creatDetailModule(router: RouterProtocol, testArray: FeedResponse?) -> UIViewController {
		let view = DetailViewController()
		let detailViewModel = DetailViewModel(router: router, testArray: testArray)
		view.detailViewModel = detailViewModel
		return view
	}
	
	//creatJobVacanxyModule
	func creatJobVacanxyModule(router: RouterProtocol) -> UIViewController {
		let view = JobVacancyViewController()
		let viewModel = JobVacancyViewModel(router: router)
		view.jobVacancyViewModel = viewModel
		return view
	}
	
	//creatCreateResumeViewControllerModlue
	func creatCreateResumeViewControllerModlue(router: RouterProtocol) -> UIViewController {
		let view = CreateResumeViewController()
		let viewModel = CreateResumeViewModel(router: router)
		view.creatResumeViewModel = viewModel
		return view
	}
	
	//creatPreciselyCreatResumeViewControllerModule
	func creatPreciselyCreatResumeViewControllerModule(router: RouterProtocol) -> UIViewController {
		let view = PreciselyCreatResumeViewController()
		let viewModel = PreciselyCreatResumeViewModel(router: router)
		view.viewModel = viewModel
		return view
	}
	
	//creatCreatResumeTargetViewControllerModule
	func creatCreatResumeTargetViewControllerModule(router: RouterProtocol) -> UIViewController {
		let view = CreatResumeTargetViewController()
		let viewModel = CreatResumeTargetViewModel(router: router)
		view.viewModel = viewModel
		return view
	}
	
	//creatIshAxtaranlarModule
	func creatIshAxtaranlarModule(router: RouterProtocol) -> UIViewController {
		let view = IshAxtaranlarViewController()
		let viewModel = IshAxtaranlarViewModel(router: router)
		view.viewModel = viewModel
		return view
	}
	
	//creatUserViewControllerModeule
	func creatUserViewControllerModeule(router: RouterProtocol) -> UIViewController {
		let view = UserSettingViewController()
		let viewModel = UserSettingViewModel(router: router)
		view.viewModel = viewModel
		return view
	}
	
	//creatFavoritesViewControllerModeule
	func creatFavoritesViewControllerModeule(router: RouterProtocol) -> UIViewController {
		let view = FavoritesViewController()
		let viewModel = FavoritesViewModel(router: router)
		view.viewModel = viewModel
		return view
	}
	
	//creatFavaritesDetailModeule
	func creatFavaritesDetailModeule(router: RouterProtocol, testArray: FeedResponse?) -> UIViewController {
		let view = FavoritesDetailViewController()
		let viewModel = FavoritesDetailViewModel(router: router, testArray: testArray)
		view.viewModel = viewModel
		return view
	}
}
