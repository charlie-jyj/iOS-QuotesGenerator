//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by UAPMobile on 2022/01/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    let quotes = [
        Quote(contents: "삶을 시작하라", name: "벤다이크"),
        Quote(contents: "나는 나를 모른다", name: "비용"),
        Quote(contents: "편견은 실효성 없는 의견", name: "암브로스 빌"),
        Quote(contents: "분노는 바보나 갖는 것", name: "아인슈타인"),
        Quote(contents: "다시 시작하고 싶다 인생", name: "니체")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapQuoteGeneratorButton(_ sender: UIButton) {
        let random = Int(arc4random_uniform(5)) // 0~4 사이의 난수 생성
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
    
}

