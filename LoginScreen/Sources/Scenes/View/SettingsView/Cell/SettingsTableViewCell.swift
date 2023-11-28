import UIKit
import SnapKit

class SettingsTableViewCell: UITableViewCell {
    
    static let identifier = "SettingsTableViewCell"

    // MARK: - UI
    
    private lazy var settingImageView: UIImageView = {
        let image = UIImageView()
        image.tintColor = UIColor.label
        return image
    }()
    
    private lazy var titleLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont(name: "GTWalsheimPro-Bold", size: 18)
        return label
    }()
    
    private lazy var subtitleLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont(name: "GTWalsheimPro-Thin", size: 15)
        return label
    }()
    
    private lazy var versionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "GTWalsheimPro-Thin", size: 12)
        label.textAlignment = .right
        return label
    }()
    
    // MARK: - Initializers
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .value1, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        addSubview(settingImageView)
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        addSubview(versionLabel)
    }
    
    private func setupLayout() {
        settingImageView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16)
            make.centerY.equalToSuperview()
            make.width.equalTo(50)
            make.height.equalTo(50)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.leading.equalTo(settingImageView.snp.trailing).offset(20)
            make.top.equalToSuperview().offset(8)
        }
        
        subtitleLabel.snp.makeConstraints { make in
            make.leading.equalTo(titleLabel)
            make.top.equalTo(titleLabel.snp.bottom).offset(4)
            make.bottom.equalToSuperview().inset(8)
        }
        
        versionLabel.snp.makeConstraints { make in
                make.trailing.equalToSuperview().offset(-30)
                make.centerY.equalToSuperview()
        }
    }
    
    // MARK: - Private methods
    
    // MARK: - Reuse
}
