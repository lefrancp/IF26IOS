//
//  ViewController.swift
//  ballin_tp10_modules
//
//  Created by Marie Ballin on 04/12/2018.
//  Copyright © 2018 if26. All rights reserved.
//

import UIKit
import SQLite

class ViewController: UIViewController {

    @IBOutlet weak var bt_create: UIButton!
    @IBOutlet weak var bt_insert: UIButton!
    
    
    /*
    var database: Connection!
    let modules_table = Table("modules")
    let modules_id = Expression<Int>("id")
    let modules_sigle = Expression<String>("sigle")
    let modules_parcours = Expression<String>("parcours")
    let modules_categorie = Expression<String>("categorie")
    let modules_credit = Expression<Int>("credit")
    
    var pk = 1000;    // valeur de départ pour la primary key
    var tableExist = false   // false la table n'est encore pas créée
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print ("--> viewDidLoad debut")

            print ("--> viewDidLoad fin")
        }
    }

    @IBAction func createTable() {
        print ("--> createTableModules debut")
        if !self.tableExist {
            self.tableExist = true
            // Instruction pour faire un drop de la table USERS
            let dropTable = self.modules_table.drop(ifExists: true)
            // Instruction pour faire un create de la table USERS
            let createTable = self.modules_table.create { table in
                table.column(self.modules_id, primaryKey: true)
                table.column(self.modules_sigle)
                table.column(self.modules_parcours)
                table.column(self.modules_categorie)
                table.column(self.modules_credit)
            }
            do {// Exécution du drop et du create
                try self.database.run(dropTable)
                try self.database.run(createTable)
                print ("Table modules est créée")
            }catch {
                print (error)
            }
        }
        print ("--> createTableModules fin")
    }
    
    func getPK() -> Int {
        self.pk += 1
        return self.pk
    }
    
    @IBAction func insertModule() {
        print ("--> insertTableModules debut")
        // Insertion de 2 tuples exemples (sera réalisé à chaque click sur le bouton)
        let insert1 = self.modules_table.insert(self.modules_id <- getPK(), self.modules_sigle <- "IF26", self.modules_parcours <- "FIL", self.modules_categorie <- "TM", self.modules_credit <- 6)
        let insert2 = self.modules_table.insert(self.modules_id <- getPK(), self.modules_sigle <- "LO07", self.modules_parcours <- "TCB", self.modules_categorie <- "TM", self.modules_credit <- 6)
        let insert3 = self.modules_table.insert(self.modules_id <- getPK(), self.modules_sigle <- "RE04", self.modules_parcours <- "TCB", self.modules_categorie <- "CS", self.modules_credit <- 6)
        do {try self.database.run(insert1)
            print ("Insert1 ok")
            try self.database.run(insert2)
            print ("Insert2 ok")
            try self.database.run(insert3)
            print ("Insert2 ok")
        }catch {
            print (error)
            print ("--> insertTableUsers fin")
        }
    }
    
    @IBAction func countModule() {
    }
    
    @IBAction func selectAll() {
        print("---> SelectAll debut")
        do{
            let modules = try self.database.prepare(self.modules_table)
            for module in modules{
                print("id: ", module[self.modules_id], ", sigle: ", module[self.modules_sigle], ", parcours: ", module[self.modules_parcours], ", categorie: ", module[self.modules_categorie], ", credit: ", module[self.modules_credit])
            }
        }catch{
            print(error)
        }
        print("---> SelectAll fin")
    }
    
    @IBAction func updateModule() {
    }
    
    @IBAction func deleteModule() {
    }
    */
    
    let bdd = EtudiantBDD.shared;
    
    override func viewDidLoad() {
                bdd.createTable()
    }
    
}

