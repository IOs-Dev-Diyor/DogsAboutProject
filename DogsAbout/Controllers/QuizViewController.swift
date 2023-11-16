//
//  PersonViewController.swift
//  Dogs
//
//  Created by Diyorbek Xikmatullayev on 14/10/23.
//

import UIKit
class QuizViewController: UIViewController {
    var countNum = 0
    
    var currentQuestion: Question?
    var currentQuestionPos = 0
    var noCorrect = 0
    var questions:  [Question] = [
        Question(question: "what kind of dog is this?", answer: ["Buldog", "Akita", "Hound", "affenpinscher"], image: "1", correctAnswer: 3),
        Question(question: "average weight of Akita breed dog?", answer: ["70-100", "50-70", "60-80", "75-95"], image: "4", correctAnswer: 0),
        Question(question: "How many years does an afghan hound breed dog live?", answer: ["10-12", "11-14", "12-15", "12-18"], image: "2", correctAnswer: 3),
        Question(question: "How many kilograms does an American Eskimo dog weigh?", answer: ["10-20","15-30","25-35","20-40"], image: "9", correctAnswer: 0),
        Question(question: "what breed of dog is this?", answer: ["Hairless Terrier","American Foxhound", "American Eskimo Dog","Airedale Terrier"], image: "3", correctAnswer: 3),
        Question(question: "How many years does an American Foxhound dog live?", answer: ["9-11", "11-13", "12-15","13-17"], image: "10", correctAnswer: 1),
        Question(question: "what breed of dog is this?", answer: ["American Hairless Terrier", "Airedale Terrier","Akita", "American Bulldog"], image: "11", correctAnswer: 0),
        Question(question: "What is the average weight of an American Leopard Hound?", answer: ["70-100", "50-70","45-75", "25-45"], image: "12", correctAnswer: 2),
        Question(question: "Find the average age of a Finnish Lapphund dog?", answer: ["8-10", "11-13", "15-17", "12-15"], image: "14", correctAnswer: 3),
        Question(question: "what breed of dog is this?", answer: ["Schapendoes","Sealyham Terrier","Shetland Sheepdog","French Bulldog"], image: "17", correctAnswer: 3),
        Question(question: "What is the average lifespan of a Saint Bernard dog?", answer: ["9-13", "8-10", "12-15", "11-13"], image: "21", correctAnswer: 1),
        Question(question: "What is the average weight of a Samoyed dog?", answer: ["50-70", "35-40", "65-80", "90-100"], image: "23", correctAnswer: 1),
        Question(question: "How tall is a Scottish Deerhound?", answer: ["30-32 inches","24-26 inches","16-18 inches","38-40 inches",], image: "26", correctAnswer: 0),
        Question(question: "what breed of dog is this?", answer: ["Shetland Sheepdog","Schipperke","Sealyham Terrier","American Foxhound"], image: "28", correctAnswer: 2),
        Question(question: "What is the average weight of a Shetland Sheepdog?", answer: ["20-30","35-45", "40-50", "15-20"], image: "30", correctAnswer: 3)
    ]
    
    private let restartButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .magenta.withAlphaComponent(0.3)
        button.setImage(UIImage(named: "restart"), for: .normal)
        button.layer.cornerRadius = 12
        return button
    }()
    
    private let answer0: UIButton = {
        let button = UIButton()
        button.backgroundColor = .purple.withAlphaComponent(0.7)
        button.layer.cornerRadius = 12
        return button
    }()
    
    private let answer1: UIButton = {
        let button = UIButton()
        button.backgroundColor = .purple.withAlphaComponent(0.7)
        button.layer.cornerRadius = 12
        return button
    }()
    
    private let answer2: UIButton = {
        let button = UIButton()
        button.backgroundColor = .purple.withAlphaComponent(0.7)
        button.layer.cornerRadius = 12
        return button
    }()
    
    private let answer3: UIButton = {
        let button = UIButton()
        button.backgroundColor = .purple.withAlphaComponent(0.7)
        button.layer.cornerRadius = 12
        return button
    }()
    
    
    private let backImage: UIImageView = {
        let image = UIImageView()
        image.layer.masksToBounds = true
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 8
        image.image = UIImage(named: "quizback")
        return image
    }()
    
    private let questionLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .purple.withAlphaComponent(0.2)
        label.numberOfLines = 10
        label.textAlignment = .center
        label.font = UIFont(name: "GillSans-Italic", size: 20)
        return label
    }()
    
    private let progressLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .purple.withAlphaComponent(0.2)
        label.numberOfLines = 10
        label.textAlignment = .center
        label.font = UIFont(name: "MarkerFelt-Wide", size: 21)
        return label
    }()
    
    private let image: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .quaternaryLabel
        image.layer.masksToBounds = true
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 8
        return image
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.addSubview(backImage)
        view.addSubview(questionLabel)
        view.addSubview(image)
        view.addSubview(answer0)
        view.addSubview(answer1)
        view.addSubview(answer2)
        view.addSubview(answer3)
        view.addSubview(progressLabel)
        view.addSubview(restartButton)
       
        
        answer0.addTarget(self, action: #selector(option0), for: .touchUpInside)
        answer1.addTarget(self, action: #selector(option1), for: .touchUpInside)
        answer2.addTarget(self, action: #selector(option2), for: .touchUpInside)
        answer3.addTarget(self, action: #selector(option3), for: .touchUpInside)
        restartButton.addTarget(self, action: #selector(didTapRestartButton), for: .touchUpInside)
        
      
        currentQuestion = questions[0]
        setQuestion()
       
       
        
        
        
        answer0.snp.makeConstraints { make in
            make.top.equalTo(questionLabel.snp.bottom).offset(15)
            make.left.equalTo(25)
            make.width.equalTo(155)
            make.height.equalTo(45)
        }
        
        answer1.snp.makeConstraints { make in
            make.top.equalTo(questionLabel.snp.bottom).offset(15)
            make.right.equalTo(-25)
            make.width.equalTo(155)
            make.height.equalTo(45)
        }
        
        answer2.snp.makeConstraints { make in
            make.top.equalTo(answer0.snp.bottom).offset(15)
            make.left.equalTo(25)
            make.width.equalTo(155)
            make.height.equalTo(45)
        }
        
        answer3.snp.makeConstraints { make in
            make.top.equalTo(answer1.snp.bottom).offset(15)
            make.right.equalTo(-25)
            make.width.equalTo(155)
            make.height.equalTo(45)
        }
        
        questionLabel.snp.makeConstraints { make in
            make.top.equalTo(image.snp.bottom).offset(15)
            make.right.equalTo(-10)
            make.left.equalTo(10)
            make.height.equalTo(100)
            make.bottom.equalTo(view.snp.bottom).offset(-330)
        }
        
        progressLabel.snp.makeConstraints { make in
            make.top.equalTo(100)
            make.left.equalTo(35)
            make.right.equalTo(restartButton.snp.left).offset(-15)
            make.bottom.equalTo(image.snp.top).offset(-25)
        }
        
        image.snp.makeConstraints { make in
            make.top.equalTo(180)
            make.left.equalTo(30)
            make.right.equalTo(-30)
            make.height.equalTo(image.snp.width)
            make.bottom.equalTo(questionLabel.snp.top).offset(-10)
        }
        
        backImage.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.left.right.equalTo(0)
        }
        
        restartButton.snp.makeConstraints { make in
            make.top.equalTo(100)
            make.right.equalTo(-40)
            make.width.equalTo(50)
            make.bottom.equalTo(image.snp.top).offset(-25)
        }
    }
    
    @objc func didTapRestartButton() {
        restart()
    }
    
    @objc func option0(_ sender: UIButton) {
        checkAnswer(idx: 0)
    }
    
    @objc func option1(_ sender: UIButton) {
        checkAnswer(idx: 1)
    }
    
    @objc func option2(_ sender: UIButton) {
        checkAnswer(idx: 2)
    }
    
    @objc func option3(_ sender: UIButton) {
        checkAnswer(idx: 3)
    }
    

    
    func checkAnswer(idx: Int) {
        if idx == currentQuestion!.correctAnswer {
            noCorrect += 1
        }
        loadNextQuestoin()
    }
    
    func loadNextQuestoin() {
        if currentQuestionPos + 1 < questions.count {
            currentQuestionPos += 1
            currentQuestion = questions[currentQuestionPos]
            setQuestion()
        } else {
            let alert = UIAlertController(title: "END OF QUIZ", message: "DO YOU WANT TO TRY AGAIN", preferredStyle: .alert)
           let action1 = UIAlertAction(title: "Yes", style: .default) { _ in
                self.restart()
            }
            
            let noAction = UIAlertAction(title: "NO", style: .cancel) { _ in
                self.navigationController?.popViewController(animated: true)
            }
            alert.addAction(action1)
            alert.addAction(noAction)
            present(alert, animated: true)
           
           
        }
        
    }
    
    func setQuestion() {
        questionLabel.text = currentQuestion?.question
        answer0.setTitle(currentQuestion!.answer[0], for: .normal)
        answer1.setTitle(currentQuestion!.answer[1], for: .normal)
        answer2.setTitle(currentQuestion!.answer[2], for: .normal)
        answer3.setTitle(currentQuestion!.answer[3], for: .normal)
        progressLabel.text = "Score:  \(noCorrect)"
        image.image = UIImage(named: "\(String(describing: currentQuestion!.image))")
        
    }
    
    func restart() {
        noCorrect = 0
         currentQuestionPos = -1
        loadNextQuestoin()
        if questions.isEmpty == false {
            questions.shuffle()
        }
        }
        
    

}
