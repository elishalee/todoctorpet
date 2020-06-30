import Foundation
import UIKit

class TableCell: UITableViewCell {
    
    var imageViews: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle,reuseIdentifier:String?) {
        super.init(style:style,reuseIdentifier:reuseIdentifier)
        imageViews.backgroundColor = .red
        
        self.addSubview(imageViews)
        imageViews.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imageViews.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        imageViews.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        imageViews.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
     public override func prepareForReuse() {
        super.prepareForReuse()
        imageViews.image = nil
    }

    
}
