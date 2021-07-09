//
//  ViewControllerPt2.swift
//  XCriticalPt2
//
//  Created by Alexandra Brovko on 08.07.2021.
//

import UIKit

class ViewControllerPt2: UIViewController {

    let blueColor = UIColor(red: 0.41, green: 0.483, blue: 0.867, alpha: 1)
    let dark = UIColor(red: 0.016, green: 0.02, blue: 0.055, alpha: 1)
    var iconClick = true
    @IBOutlet weak var registrationButton: UIButton!
    @IBOutlet weak var enterButton: UIButton!
    @IBOutlet weak var imageViewer: UIImageView!
    @IBOutlet weak var labelMail: UILabel!
    @IBOutlet weak var labelPassword: UILabel!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var enterEmailPlace: UITextField!
    @IBOutlet weak var enterPasswordPlace: UITextField!
    @IBOutlet weak var changeBrockerButton: UIButton!
    @IBOutlet weak var mailLine: UIView!
    @IBOutlet weak var passwordLine: UIView!
    @IBOutlet weak var wrongMail: UILabel!
    @IBOutlet weak var wrongPassword: UILabel!
    @IBAction func forgetPasswordForm(_ sender: Any) {
        
        navigationController?.pushViewController(ForgetPasswordForm(), animated: true)    }
    
    @IBAction func moveToRegistrationForm(_ sender: Any) {
        
        navigationController?.pushViewController(ViewController2(), animated: true)
    }
    @IBAction func hideEyeButton(_ sender: UIButton) {
        if (iconClick == true){
            enterPasswordPlace.isSecureTextEntry = false
            sender.setImage(UIImage(named:"Subtract"), for: .normal)

        }
        else {
            enterPasswordPlace.isSecureTextEntry = true
            sender.setImage(UIImage(named:"Union"), for: .normal)        }
        
        iconClick = !iconClick
        
    }
    @IBAction func moveToEnterWindowPositive(_ sender: Any) {
        
        if (enterEmailPlace.text == nil || enterEmailPlace.text == "")
        {
            wrongMail.isHidden = false
            mailLine.backgroundColor = .red
            
        }
        else
        {
            wrongMail.isHidden = true
            mailLine.backgroundColor = .lightGray
            
        }
        if (enterPasswordPlace.text == nil || enterPasswordPlace.text == "")
        {
            wrongPassword.isHidden = false
            passwordLine.backgroundColor = .red
        }
        else
        {
            wrongPassword.isHidden = true
            passwordLine.backgroundColor = .lightGray
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        setBackgroundColors()
        setTitleAndText()
        setTitleAndTextColors()
        setLinesAndCorners()

    }
    
    func setBackgroundColors(){
    
        view.backgroundColor = dark
        enterButton.backgroundColor = UIColor(red: 0.41, green: 0.483, blue: 0.867, alpha: 1)
        registrationButton.backgroundColor = UIColor(red: 0.102, green: 0.098, blue: 0.2, alpha: 1)
    }
    
    func setTitleAndTextColors(){
        
        enterButton.setTitleColor(.white, for: .normal)
        registrationButton.setTitleColor(.white, for: .normal)
        forgotPasswordButton.setTitleColor(blueColor, for: .normal)
        changeBrockerButton.setTitleColor(blueColor, for: .normal)
        self.labelMail.textColor = .white
        self.labelPassword.textColor = .white
        
    }
    
    func setTitleAndText(){
    
        enterButton.setTitle("Войти", for: .normal)
        registrationButton.setTitle("Зарегистрироваться", for: .normal)
        self.labelMail.text = "E-mail"
        self.labelPassword.text = "Пароль"
        forgotPasswordButton.setTitle("Забыли пароль?", for: .normal)
        changeBrockerButton.setTitle("Сменить брокера", for: .normal)
        self.wrongMail.text = "Неверный пароль"
        self.wrongPassword.text = "Неверный пароль"
        
    }
    
    func setLinesAndCorners(){
        
        enterButton.layer.cornerRadius = 12
        registrationButton.layer.cornerRadius = 12
        let changeBrockerButtonAttributedString = NSMutableAttributedString()
        changeBrockerButtonAttributedString.append(NSAttributedString(string: "Сменить брокера", attributes: [.underlineStyle: NSUnderlineStyle.single.rawValue]))
        changeBrockerButton.setAttributedTitle(changeBrockerButtonAttributedString, for: .normal)
        
        let forgotPasswordButtonAttributedString = NSMutableAttributedString()
        forgotPasswordButtonAttributedString.append(NSAttributedString(string: "Забыли пароль?", attributes: [.underlineStyle: NSUnderlineStyle.single.rawValue]))
        forgotPasswordButton.setAttributedTitle(forgotPasswordButtonAttributedString, for: .normal)
    }

}
