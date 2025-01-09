//
//  ClientsViewModel.swift
//  AppCleanApp
//
//  Created by IGOR on 09/01/2025.
//

import SwiftUI
import CoreData

final class ClientsViewModel: ObservableObject {
    
    @Published var addingProgress: Int = 0

    @Published var tags: [String] = ["Carpet Cleaning", "Sofa Cleaning", "Kitchen Cleaning", "Bathroom Cleaning", "Plumbing Repair", "Window Cleaning", "Pet Hair Removal", "Stain Remover"]
    @Published var currTag = ""
    @Published var currCheck = ""

    @Published var isAdd: Bool = false
    @Published var isDetail: Bool = false
    @Published var isDelete: Bool = false

    @Published var plName: String = ""
    @Published var plAddress: String = ""
    @Published var plMail: String = ""
    @Published var plDate: String = ""
    @Published var plTag: String = ""
    @Published var plPhone: String = ""
    @Published var plCheck: String = ""
    @Published var plPrice: String = ""
    @Published var plProgress: String = ""

    @Published var peoples: [PeoplesModel] = []
    @Published var selectedPeople: PeoplesModel?

    func addPeople() {

        let context = CoreDataStack.shared.persistentContainer.viewContext
        let loan = NSEntityDescription.insertNewObject(forEntityName: "PeoplesModel", into: context) as! PeoplesModel

        loan.plName = plName
        loan.plAddress = plAddress
        loan.plMail = plMail
        loan.plDate = plDate
        loan.plTag = plTag
        loan.plPhone = plPhone
        loan.plCheck = plCheck
        loan.plPrice = plPrice
        loan.plProgress = plProgress

        CoreDataStack.shared.saveContext()
    }

    func fetchPeoples() {

        let context = CoreDataStack.shared.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<PeoplesModel>(entityName: "PeoplesModel")

        do {

            let result = try context.fetch(fetchRequest)

            self.peoples = result

        } catch let error as NSError {

            print("catch")

            print("Error fetching persons: \(error), \(error.userInfo)")

            self.peoples = []
        }
    }
 
}
