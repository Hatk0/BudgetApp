import UIKit

final class OnboardingController: UIViewController {
    
    private var onboardingView: OnboardingView? {
        guard isViewLoaded else { return nil }
        return view as? OnboardingView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = OnboardingView()
    }
}
