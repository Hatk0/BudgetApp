import UIKit
import SnapKit

class SettingsTableViewCell: UITableViewCell {

    // MARK: - UI
    
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
        
    }
    
    private func setupLayout() {
        
    }
    
    // MARK: - Private methods
    
    // MARK: - Reuse
}
