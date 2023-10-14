import UIKit

final class OnboardingController: UIViewController {
    
    var model: OnboardingModel?
    
    private var onboardingView: OnboardingView? {
        guard isViewLoaded else { return nil }
        return view as? OnboardingView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = OnboardingView()
        model = OnboardingModel()
    }
}
