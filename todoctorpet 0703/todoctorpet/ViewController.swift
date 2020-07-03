
import UIKit
import SwiftUI

class ViewController: UIViewController {
   //UICollectionViewDelegate,UICollectionViewDataSource,UITableViewDelegate,UITableViewDataSource,
    
    override func viewDidLoad() {
               super.viewDidLoad()
        
    }
    @IBSegueAction func addSwiftUIView(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: ContentView())
    }
}
    
    /*
    // 이미지 뷰 사진 배열
    var imageArray = [UIImage(named: "테스트이미지1"),UIImage(named: "테스트이미지2"),UIImage(named: "테스트이미지3"),]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
        
        cell.imgImage.image = imageArray[indexPath.row]
        
        return cell
    }

    
    
    var scrollView: UIScrollView?
    var contentView: UIView?
    var page:UIPageControl?
 
    var sampleData = ["테스트이미지1","테스트이미지2","테스트이미지3"]
 
 
    @IBOutlet weak var tableVIew: UITableView!
    @IBAction func pageControll(_ sender: Any) {
    }
        override func viewDidLoad() {
            super.viewDidLoad()
            
           // tableViewsetUp()
         scrollView = UIScrollView(frame: CGRect(x:0, y:200, width:600, height: 200))
         contentView = UIView(frame: CGRect(x: 0, y: 0, width: 59400, height: 200))
         var total: Int = 0
         for i in 0...99
         {
             let imageView = UIImageView(frame: CGRect(x: total, y: 0, width: 600, height: 200))
             total = total + 600
             let image:UIImage! = UIImage(named: "image\(i%3+1).png")
             imageView.image = image
             contentView!.addSubview(imageView)
         }
         scrollView!.addSubview(contentView!)
         scrollView!.contentSize = contentView!.frame.size
         self.view.addSubview(scrollView!)
         scrollView!.isPagingEnabled = true
        
         page = UIPageControl(frame: CGRect(x:0, y:1050, width: 600, height: 400))
         page?.numberOfPages = 3
         self.view.addSubview(page!)

    }

}
    
    
    //셀 갯수 지정
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sampleData.count
    }
    
    //재사용셀 클래스 초기화 및 제어
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell") as? TableCell else { return UITableViewCell() }
        cell.textLabel?.text = "\(sampleData[indexPath.row]) + \(indexPath.row + 1)"
         return cell
    }
    
    //테이블셀 높이
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    func tableViewsetUp() {
        let tableView = UITableView()
        let bounds = UIScreen.main.bounds
        
        view.addSubview(tableView)
        tableView.register(TableCell.self, forCellReuseIdentifier: "TableCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = CGRect(x: 0, y: 400, width: bounds.width, height: bounds.height/2)
    }

*/



        

        
        
        
        
 
    
 
        



 

