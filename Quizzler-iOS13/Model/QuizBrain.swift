

import Foundation

struct QuizBrain {
    
    let quiz = [
        Question(q: "Iron Man was the first film in the MCU.", a: "True"),
        Question(q: "Ho Yinsen is secretly the leader of a Ten Rings cell.", a: "False"),
        Question(q: "Don Cheadle was replaced by Terrence Howard as Rhodey.", a: "False"),
        Question(q: "Howard Stark, Tony Stark's father, created Captain America's shield using vibranium.", a: "True"),
        Question(q: "The Hulk's first movie appearance was outside of the MCU.", a: "True"),
        Question(q: "Nick Fury makes a cameo in The Incredible Hulk to ask Bruce if he wants to join the Avengers.", a: "False"),
        Question(q: "Erik "+"Killmonger"+" Stevens' real name is N'Jadaka.", a: "True"),
        Question(q: "The Jabari tribe worships the panther god, Bast.", a: "False"),
        Question(q: "The actors who play the young and older version of King T'Chaka are related in real life.", a: "True"),
        Question(q: "There are six Infinity Stones and they are named: Mind, Space, Heart, Time, Power, and Reality.", a: "False"),
        Question(q: "Speaking of Infinity Stones, the Space stone was the first one to show up in the MCU.", a: "True"),
        Question(q: "Thor's hammer's name is Bifrost.", a: "False"),
        Question(q: "According to Thor, there are seven realms, with Earth being one of them.", a: "False"),
        Question(q: "Spider-Man: Far From Home was the last film in Phase 3 of the MCU.", a: "True"),
        Question(q: "Miles Morales got his powers from radiation exposure and not from a spider bite.", a: "False"),
        Question(q: "J.K. Simmons has played John Jonah Jameson in every single live-action Spider-Man film that the character appears in.", a: "True"),
        Question(q: "Natasha Romanoff and Bruce Banner have a secret child together.", a: "False"),
        Question(q: "Black Widow's name is actually Natalia, not Natasha.", a: "True"),
        Question(q: "Nick Fury lost his sight in his left eye due to a scratch from an alien while flying back to Earth.", a: "True"),
        Question(q: "Captain Marvel was born with her powers.", a: "False"),
        Question(q: "Maria Rambeau and Monica Rambeau are mother and daughter.", a: "True"),
        Question(q: "Charles Xavier became paralyzed after being shot by Wolverine.", a: "False"),
        Question(q: "We first see Magneto use his ability to control metal while working on a Volkswagen assembly line in the 1930s.", a: "False"),
        Question(q: "Mantis got her name because she was once a praying mantis before Ego gave her a human form.", a: "False"),
        Question(q: "Ego, Peter Quill's father, killed Meredith (Peter's mother) because she posed a distraction to his plans and so he could bring Peter to his planet.", a: "True"),
        Question(q: "Simu Liu sings on the Shang-Chi soundtrack.", a: "True"),
        Question(q: "Xialing makes a cameo in Black Panther when T'Challa, Nakia, and Okoye visit Busan, South Korea.", a: "False"),
        Question(q: "Josh Brolin is the only actor to play more than one Marvel character on film.", a: "False"),
        Question(q: "The entire MCU so far takes place over the course of 20 years.", a: "False")
        
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    
    func getProgress()  -> Float{
        let progress = Float(questionNumber + 1) / Float(quiz.count)
        return progress
    }
    
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    
    
    
    
}

