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
        view.pageIndicatorTintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.08)
        view.currentPageIndicatorTintColor = UIColor(red: 1, green: 0.2, blue: 0.47, alpha: 1)
        return view
    }()
    
    private lazy var customView: UIView = {
        let view = UIView()
        view.backgroundColor = .secondarySystemBackground
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.3
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 10
        view.layer.shouldRasterize = true
        view.layer.rasterizationScale = UIScreen.main.scale
        view.layer.cornerRadius = 20
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
        button.backgroundColor = UIColor(red: 1, green: 0.2, blue: 0.47, alpha: 1)
        button.layer.cornerRadius = 15
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
        addSubview(customView)
        customView.addSubview(titleLabel)
        customView.addSubview(descriptionLabel)
        customView.addSubview(button)
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
        
        customView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(pageControl.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(300)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(50)
        }
        
        descriptionLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        
        button.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(50)
            make.width.equalTo(250)
            make.top.equalTo(descriptionLabel.snp.bottom).offset(80)
        }
    }
}
