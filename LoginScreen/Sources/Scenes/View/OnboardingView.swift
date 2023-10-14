import UIKit
import SnapKit

final class OnboardingView: UIView {
    
    // MARK: - Configuration
    
    func configureView(with model: Onboarding) {
        imageView.image = UIImage(named: model.imageName)
        titleLabel.text = model.title
        descriptionLabel.text = model.description
    }
    
    func configurePageControl() {
        pageControl.numberOfPages = 1
        pageControl.currentPage = 0
    }

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
    
    // MARK: - Initializers

    init() {
        super.init(frame: .zero)
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

    // MARK: - Setup

    private func setupView() {
        backgroundColor = .systemBackground
        setupHierarchy()
        setupLayout()
    }

    private func setupHierarchy() {
        addSubview(imageView)
        addSubview(pageControl)
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        addSubview(button)
    }

    private func setupLayout() {
        imageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(100)
            make.height.equalToSuperview().multipliedBy(0.4)
        }
        
        pageControl.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(imageView.snp.bottom).offset(10)
        }

        titleLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(pageControl.snp.bottom).offset(60)
        }

        descriptionLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(20)
        }

        button.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(40)
            make.width.equalTo(250)
            make.top.equalTo(descriptionLabel.snp.bottom).offset(70)
        }
    }
}
