import UIKit
import SnapKit

final class OnboardingView: UIView {

    // MARK: - UI

    private lazy var imageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    private lazy var pageControl: UIPageControl = {
       let view = UIPageControl()
        view.pageIndicatorTintColor = .systemGray
        view.currentPageIndicatorTintColor = .systemPink
        return view
    }()

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.textAlignment = .center
        label.font = UIFont(name: "GTWalsheimPro-Bold", size: 24)
        return label
    }()

    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont(name: "GTWalsheimPro-Thin", size: 14)
        label.textColor = .secondaryLabel
        return label
    }()

    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("I'm interested", for: .normal)
        button.titleLabel?.font = UIFont(name: "GTWalsheimPro-Medium", size: 15)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = .systemPink
        return button
    }()
}
