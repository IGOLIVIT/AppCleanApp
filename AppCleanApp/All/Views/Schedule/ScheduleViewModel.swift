//
//  ScheduleViewModel.swift
//  AppCleanApp
//
//  Created by IGOR on 09/01/2025.
//

import SwiftUI
import CoreData

final class ScheduleViewModel: ObservableObject {

    @Published var tags: [String] = ["Carpet Cleaning", "Sofa Cleaning", "Kitchen Cleaning", "Bathroom Cleaning", "Plumbing Repair", "Window Cleaning", "Pet Hair Removal", "Stain Remover"]
    @Published var currTag = ""
    @Published var currCheck = ""

    @Published var isAdd: Bool = false
    @Published var isDetail: Bool = false
    @Published var isDelete: Bool = false

    @Published var clName: String = ""
    @Published var clAddress: String = ""
    @Published var clMail: String = ""
    @Published var clDate: String = ""
    @Published var clTag: String = ""
    @Published var clPhone: String = ""
    @Published var clCheck: String = ""
    @Published var clPrice: String = ""

    @Published var clients: [ClientModel] = []
    @Published var selectedClient: ClientModel?

    func addClient() {

        let context = CoreDataStack.shared.persistentContainer.viewContext
        let loan = NSEntityDescription.insertNewObject(forEntityName: "ClientModel", into: context) as! ClientModel

        loan.clName = clName
        loan.clAddress = clAddress
        loan.clMail = clMail
        loan.clDate = clDate
        loan.clTag = clTag
        loan.clPhone = clPhone
        loan.clCheck = clCheck
        loan.clPrice = clPrice

        CoreDataStack.shared.saveContext()
    }

    func fetchClients() {

        let context = CoreDataStack.shared.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<ClientModel>(entityName: "ClientModel")

        do {

            let result = try context.fetch(fetchRequest)

            self.clients = result

        } catch let error as NSError {

            print("catch")

            print("Error fetching persons: \(error), \(error.userInfo)")

            self.clients = []
        }
    }
 
}
