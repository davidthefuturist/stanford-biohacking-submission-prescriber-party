//
//  StudyTasks.swift
//
//  Created for the CardinalKit Framework.
//  Copyright © 2019 Stanford University. All rights reserved.
//

import ResearchKit

/**
 This file contains some sample `ResearchKit` tasks
 that you can modify and use throughout your project!
*/
struct StudyTasks {
    
    /**
     Active tasks created with short-hand constructors from `ORKOrderedTask`
    */
    static let tappingTask: ORKOrderedTask = {
        let intendedUseDescription = "Finger tapping is a universal way to communicate."
        
        return ORKOrderedTask.twoFingerTappingIntervalTask(withIdentifier: "TappingTask", intendedUseDescription: intendedUseDescription, duration: 10, handOptions: .both, options: ORKPredefinedTaskOption())
    }()
    
//    static let walkingTask: ORKOrderedTask = {
//        let intendedUseDescription = "Tests ability to walk"
//
//        return ORKOrderedTask.shortWalk(withIdentifier: "ShortWalkTask", intendedUseDescription: intendedUseDescription, numberOfStepsPerLeg: 20, restDuration: 30, options: ORKPredefinedTaskOption())
//    }()
//
   static let medicalProfileTask: ORKOrderedTask = {
       var steps = [ORKStep]()
       
       // Instruction step
       let instructionStep = ORKInstructionStep(identifier: "IntroStep")
       instructionStep.title = "medicalProfile"
       instructionStep.text = "Drug 1"
       
       steps += [instructionStep]

       return ORKOrderedTask(identifier: "walkingTask", steps: steps)
   }()
    static let qrCodeTask: ORKOrderedTask = {
       var steps = [ORKStep]()
       
       // Instruction step
       let instructionStep = ORKInstructionStep(identifier: "IntroStep")
       instructionStep.title = "qrCodeTask"
       instructionStep.text = "Drug 1"
       
       steps += [instructionStep]

       return ORKOrderedTask(identifier: "walkingTask", steps: steps)
   }()
    
    
    
    static let walkingTask: ORKOrderedTask = {
        var steps = [ORKStep]()
        
        // Instruction step
        let instructionStep = ORKInstructionStep(identifier: "IntroStep")
        instructionStep.title = "All the Drugs"
        instructionStep.text = "Drug 1"
        
        steps += [instructionStep]

        return ORKOrderedTask(identifier: "walkingTask", steps: steps)
    }()
    
    
    
    
    /**
     Sample task created step-by-step!
    */
    static let sf12Task: ORKOrderedTask = {
        var steps = [ORKStep]()
        
        // Instruction step
        let instructionStep = ORKInstructionStep(identifier: "IntroStep")
        instructionStep.title = "New Prescription"
        instructionStep.text = "This information will help your doctors keep track of how you feel and how well you are able to do your usual activities. If you are unsure about how to answer a question, please give the best answer you can and make a written comment beside your answer."
        
        steps += [instructionStep]
        
      //Enter the name of the drug
         let healthScaleAnswerFormat = ORKTextAnswerFormat(maximumLength: 20)
         healthScaleAnswerFormat.multipleLines = false
         let healthScaleQuestionStep = ORKQuestionStep(identifier: "nameOfDrug", title: "Question #1", question: "What drug are you adding?", answer:healthScaleAnswerFormat)
        
        
        steps += [healthScaleQuestionStep]
    
        //SUMARY
        let summaryStep = ORKCompletionStep(identifier: "SummaryStep")
        summaryStep.title = "Thank you."
        summaryStep.text = "Prescription has been added."
        
        steps += [summaryStep]
        
        return ORKOrderedTask(identifier: "SurveyTask-SF12", steps: steps)
    }()
}
