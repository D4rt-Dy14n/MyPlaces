//
//  RatingControl.swift
//  MyPlaces
//
//  Created by Юрий Федоров on 02.09.2020.
//

import UIKit

@IBDesignable class RatingControl: UIStackView {

//MARK: - Properties
    
    var rating = 0
    
    private var ratingButtons = [UIButton]()
    
    @IBInspectable var starSize: CGSize = CGSize(width: 44, height: 44) {
        didSet {
            setupButtons()
        }
    }
    
    @IBInspectable var starCount: Int = 5 {
        didSet {
            setupButtons()
        }
    }
    
    @IBInspectable var starColor: UIColor = .red {
        didSet {
            setupButtons()
        }
    }
    
//MARK: - Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: - Button Action
    
    @objc func ratingButtonTapped(button: UIButton) {
        print("Button pressed! ✌🏻")
    }
    
    //MARK: - Private Methods
    
    private func setupButtons() {
        
        for button in ratingButtons {
            removeArrangedSubview(button)
            button.removeFromSuperview()
        }
        ratingButtons.removeAll()
        
        //Load button image
        
        let filledStar = #imageLiteral(resourceName: "filledStar.png")
        let emptyStar = #imageLiteral(resourceName: "emptyStar")
        let highlightedStar = #imageLiteral(resourceName: "highlightedStar")
        
        for _ in 0..<starCount {
            //Create a button
            let button = UIButton()
            
            //Set the button image
            
            button.setImage(emptyStar, for: .normal)
            button.setImage(filledStar, for: .selected)
            button.setImage(highlightedStar, for: .highlighted)
            button.setImage(highlightedStar, for: [.highlighted, .selected])
            
            //Add constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
            
            //Setup the button action
            button.addTarget(self, action: #selector(ratingButtonTapped(button:)), for: .touchUpInside)
            
            //Add the button in stackView
            
            addArrangedSubview(button)

            //Add new button in the ratingButtons array
            ratingButtons.append(button)
        }
                
    }
    
}
