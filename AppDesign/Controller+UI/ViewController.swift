//
//  ViewController.swift
//  AppDesign
//
//  Created by Акнур on 1/13/21.
//  Copyright © 2021 Акнур. All rights reserved.
//
//
//
//
//  NewsViewController.swift
//
//
//  Created by Акнур on 1/18/21.


import UIKit
private let readButton = UIButton(type: .system)
private let readButton2 = UIButton(type: .system)
//var values : [Results] = []
struct customData {
    var img: UIImage
}


class ViewController: UIViewController, UITextFieldDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    var data = [
        customData(img: #imageLiteral(resourceName: "minas-cheese-dairy-products-queso-blanco-ingredient-png-favpng-z9bFt1QaS1X8EEvaLZm07VkCq_t") ),
        customData(img: #imageLiteral(resourceName: "cream-milk-cheese-dairy-products-food-png-favpng-g06bxRgbi2g0EQ1vb3gJQRQwp_t")),
        customData(img: #imageLiteral(resourceName: "Image-2")),
        customData(img: #imageLiteral(resourceName: "Image-1")),
        customData(img: #imageLiteral(resourceName: "cream-cheese-cheesecake-milk-png-favpng-c1qugNvu656pJyGYVSMRkCdcN_t")),
        customData(img: #imageLiteral(resourceName: "minas-cheese-dairy-products-queso-blanco-ingredient-png-favpng-z9bFt1QaS1X8EEvaLZm07VkCq_t")),
        customData(img: #imageLiteral(resourceName: "cream-cheese-cheesecake-milk-png-favpng-c1qugNvu656pJyGYVSMRkCdcN_t")),
        customData(img: #imageLiteral(resourceName: "cream-milk-cheese-dairy-products-food-png-favpng-g06bxRgbi2g0EQ1vb3gJQRQwp_t") ),
        customData(img: #imageLiteral(resourceName: "Image-2")),
        customData(img: #imageLiteral(resourceName: "Image-1")),
        customData(img: #imageLiteral(resourceName: "cream-cheese-cheesecake-milk-png-favpng-c1qugNvu656pJyGYVSMRkCdcN_t")),
        customData(img: #imageLiteral(resourceName: "cream-cheese-cheesecake-milk-png-favpng-c1qugNvu656pJyGYVSMRkCdcN_t")),
        customData(img: #imageLiteral(resourceName: "Image-1")),
        customData(img: #imageLiteral(resourceName: "minas-cheese-dairy-products-queso-blanco-ingredient-png-favpng-z9bFt1QaS1X8EEvaLZm07VkCq_t")),
    ]
    let tabBar = UITabBarController()
    fileprivate let collectionView: UICollectionView = {
        var layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(customCell.self, forCellWithReuseIdentifier: "cell")
        return cv
    }()
    let emailTextField : UITextField = {
        let  text1 = CustomTextField(padding: 36)
        text1.placeholder = "🔍 Search Topics"
        //    text1.layer.shadowOpacity = 1.0
        text1.backgroundColor = .grayColor()
        text1.textColor = .systemGrayColor()
        text1.layer.cornerRadius = 10
        text1.textAlignment = .left
        return text1
    }()
    let mainButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Browse", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.isEnabled = false
        button.layer.cornerRadius = 12
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30.0)
        button.backgroundColor = .white
        return button
    }()
    let imageView : UIImageView = {
        let img = UIImageView(image:#imageLiteral(resourceName: "Image").withRenderingMode(.alwaysOriginal))
        img.contentMode = .scaleAspectFit
        img.translatesAutoresizingMaskIntoConstraints = false
        img.layer.cornerRadius = img.frame.height/2
        return img
    }()
    let highlightsButton : UIButton = {
        let hButton = UIButton(type: .system)
        hButton.setTitle("Highlights", for: .normal)
        hButton.setTitleColor(UIColor.black, for: .normal)
        hButton.isEnabled = false
        hButton.layer.cornerRadius = 12
        hButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20.0)
        hButton.backgroundColor = .white
        return hButton
    }()
    let miniButton : UIButton = {
        let mButton = UIButton(type: .system)
        mButton.setTitle("Products of our company", for: .normal)
        let color = #colorLiteral(red: 0.6705281734, green: 0.6706266999, blue: 0.6705067158, alpha: 1)
        mButton.setTitleColor(color, for: .normal)
        mButton.isEnabled = false
        mButton.layer.cornerRadius = 12
        mButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20.0)
        mButton.backgroundColor = .white
        return mButton
    }()
    let basicButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Trending Topic", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.isEnabled = false
        button.layer.cornerRadius = 20
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20.0)
        button.backgroundColor = .white
        return button
    }()
    let seeButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("See All", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.isEnabled = false
        button.layer.cornerRadius = 20
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15.0)
        button.backgroundColor = .white
        button.isEnabled = true
        button.addTarget(self, action: #selector(toMainViewController) , for: .touchUpInside)
        return button
    }()
    let logoImageView : UIImageView = {
        let img = UIImageView(image:#imageLiteral(resourceName: "Image-4").withRenderingMode(.alwaysOriginal))
        img.contentMode = .scaleAspectFit
        img.translatesAutoresizingMaskIntoConstraints = false
        img.layer.cornerRadius = img.frame.height/2
        return img
    }()
    let logoImageView2 : UIImageView = {
        let img = UIImageView(image:#imageLiteral(resourceName: "Image").withRenderingMode(.alwaysOriginal))
        img.contentMode = .scaleAspectFit
        img.translatesAutoresizingMaskIntoConstraints = false
        img.layer.cornerRadius = img.frame.height/2
        return img
    }()
    let logoImageView3 : UIImageView = {
        let img = UIImageView(image:#imageLiteral(resourceName: "Image-7").withRenderingMode(.alwaysOriginal))
        img.contentMode = .scaleAspectFit
        img.translatesAutoresizingMaskIntoConstraints = false
        img.layer.cornerRadius = img.frame.height/2
        return img
    }()
    let descriptionButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Mascarpone", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.isEnabled = false
        button.layer.cornerRadius = 20
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15.0)
        button.backgroundColor = .white
        return button
    }()
    let descriptionButton3 : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Arla", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.isEnabled = false
        button.layer.cornerRadius = 20
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15.0)
        button.backgroundColor = .white
        return button
    }()
    let descriptionButton4 : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sona", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.isEnabled = false
        button.layer.cornerRadius = 20
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15.0)
        button.backgroundColor = .white
        return button
    }()
//    let readButton : UIButton = {
//        let button = UIButton(type: .system)
//        button.setTitle("Read", for: .normal)
//        button.setTitleColor(UIColor.gray, for: .normal)
//        button.isEnabled = false
//        button.layer.cornerRadius = 20
//        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13.0)
//        button.backgroundColor = .grayColor()
//        return button
//    }()
//    let readButton1 : UIButton = {
//        let button = UIButton(type: .system)
//        button.setTitle("Read", for: .normal)
//        button.setTitleColor(UIColor.gray, for: .normal)
//        button.isEnabled = false
//        button.layer.cornerRadius = 20
//        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13.0)
//        button.backgroundColor = .grayColor()
//        return button
//    }()
//    let readButton2 : UIButton = {
//        let button = UIButton(type: .system)
//        button.setTitle("Read", for: .normal)
//        button.setTitleColor(UIColor.gray, for: .normal)
//        button.isEnabled = false
//        button.layer.cornerRadius = 20
//        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13.0)
//        button.backgroundColor = .grayColor()
//        return button
//    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(collectionView)
        setupViews()
        configurationSubview()
        collectionView.layer.cornerRadius = 20
        collectionView.delegate = self
        collectionView.dataSource = self
        view.backgroundColor = .white
        collectionView.backgroundColor = .white
        collectionView.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 230, left: 15, bottom: 0, right: 15), size: .init(width: 300, height: 200))
        setupLayouts()
        view.addSubview(basicButton)
        basicButton.anchor(top: collectionView.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 220, left: 15, bottom: 0, right: 0), size: .init(width: 150, height: 15))
        view.addSubview(seeButton)
        seeButton.anchor(top: collectionView.topAnchor, leading: basicButton.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 220, left: 280, bottom: 0, right: 15), size: .init(width: 25, height: 15))
        view.addSubview(logoImageView)
        logoImageView.anchor(top: basicButton.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 40, left: 15, bottom: 0, right: 0), size: .init(width: 40, height: 40))
        view.addSubview(logoImageView2)
        logoImageView2.anchor(top: logoImageView.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 50, left: 15, bottom: 0, right: 0), size: .init(width: 40, height: 40))
//        view.addSubview(logoImageView3)
//        logoImageView3.anchor(top: logoImageView2.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing:
//            nil, padding: .init(top: 50, left: 15, bottom: 0, right: 0), size: .init(width: 40, height: 40))

    }

    fileprivate func setupLayouts(){
        view.addSubview(emailTextField)
        emailTextField.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 90, left: 15, bottom: 0, right: 15), size: .init(width: 200, height: 40))
        view.addSubview(mainButton)
        mainButton.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 40, left: 15, bottom: 0, right: 100))
        view.addSubview(imageView)
        imageView.anchor(top: view.topAnchor, leading: nil, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 40, left: 0, bottom: 0, right: 15), size: .init(width: 40, height: 40))
        view.addSubview(highlightsButton)
        highlightsButton.anchor(top: emailTextField.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 50, left: 15, bottom: 0, right: 0))
        view.addSubview(miniButton)
        miniButton.anchor(top: highlightsButton.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 30, left: 15, bottom: 0, right: 0))
        view.addSubview(descriptionButton)
        descriptionButton.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 485, left: 60, bottom: 0, right: 0), size: .init(width: 120, height: 40))
        view.addSubview(descriptionButton3)
        descriptionButton3.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 535, left: 60, bottom: 0, right: 0), size: .init(width: 120, height: 40))
//        view.addSubview(descriptionButton4)
//        descriptionButton4.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 585, left: 60, bottom: 0, right: 0), size: .init(width: 120, height: 40))
//        view.addSubview(readButton)
//        readButton.anchor(top: view.topAnchor, leading: nil, bottom: nil, trailing: view.trailingAnchor,padding: .init(top: 485, left: 0, bottom: 0, right: 30), size: .init(width: 100, height: 40))
//        view.addSubview(readButton1)
//        readButton1.anchor(top: view.topAnchor, leading: nil, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 535, left: 0, bottom: 0, right: 30), size: .init(width: 100, height: 40))
//        view.addSubview(readButton2)
//        readButton2.anchor(top: view.topAnchor, leading: nil, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 585, left: 0, bottom: 0, right: 30), size: .init(width: 100, height: 40))
    }

    func configurationSubview(){
        readButton.customButton(setTitle: "Read", setTitleState: .normal, color: .gray, background: .grayColor(), radius: 20)
        readButton2.customButton(setTitle: "Read", setTitleState: .normal, color: .gray, background: .grayColor(), radius: 20)
        readButton.addTarget(self, action: #selector(toThenextvc), for: .touchUpInside)
        readButton2.addTarget(self, action: #selector(nextPage), for: .touchUpInside)
    }
    func setupViews(){
                view.addSubview(readButton)
                readButton.anchor(top: view.topAnchor, leading: nil, bottom: nil, trailing: view.trailingAnchor,padding: .init(top: 485, left: 0, bottom: 0, right: 30), size: .init(width: 100, height: 40))
                view.addSubview(readButton2)
                readButton2.anchor(top: view.topAnchor, leading: nil, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 535, left: 0, bottom: 0, right: 30), size: .init(width: 100, height: 40))
    }
    @objc fileprivate func toMainViewController() {//seeAll
        let vc = HomeViewController()
            self.navigationController?.pushViewController(vc, animated: true)
//        present(vc, animated: true, completion: nil)
////        self.dismiss(animated: true, completion: nil)
    
    }
   @objc fileprivate func toThenextvc () { //readButton
        let vc1 = HelpViewController()
       self.navigationController?.pushViewController(vc1, animated: true)
//          nameLabell.text = values.overview
      
   //осы жерде
    }
    @objc fileprivate func nextPage (){ //readButton2
        let vc2 = ProfileViewController()
        self.navigationController?.pushViewController(vc2, animated: true)
        
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2.5, height: collectionView.frame.width/2)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! customCell
        cell.data = data.self[indexPath.item]
        return cell
    }

}

class customCell: UICollectionViewCell{
    var data: customData? {
        didSet {
            guard let data = data else { return }
            bg.image = data.img

        }
    }
    fileprivate let bg: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        return iv
    }()

    override init(frame: CGRect) {
        super.init(frame: .zero)


        contentView.addSubview(bg)

        bg.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        bg.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        bg.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        bg.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true

    }


    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

class FirstViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
    }
}
class SecondViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "News"
    }
}
class ThirdViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Post"
    }
}
class FourthViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Help"
    }
}
class FifthViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Profile"
    }
}
