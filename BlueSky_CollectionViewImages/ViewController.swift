//
//  ViewController.swift
//  BlueSky_CollectionViewImages
//
//  Created by Steve Satterfield on 11/16/18.
//  Copyright © 2018 uwf. All rights reserved.
//

import UIKit

struct loItem {
    var selected = Bool()
    var title = String()
}

struct recommendationItem {
    var peerRating = integer_t()
    var link = String()
    var clicked = Bool()
}

class ModelData: NSObject {
    static let shared: ModelData = ModelData()
    var fos = [String()]
}

class loModelData: NSObject {
    static let shared: loModelData = loModelData()
    var fosLO = [[loItem()]]
}

class recommendation: NSObject {
    static let shared: recommendation = recommendation()
    var currentList = [[recommendationItem()]]
}


let humantiesFos = ["American History", "American Literature", "Archeology", "History of Western Civilization", "Linguistics", "German Language", "French Language", "Jurisprudence", "English Literature", "Philosophy"]
let socialScienceFos = ["Sociology", "Developmental Psychology", "Cognitive Psychology","Political Science", "Anthropology", "Geography (Human)", "Economics"]
let physicalScienceFos = ["Astronomy", "Chemistry", "Earth Sciences", "Physics"]
let mathFos = ["Algebra", "Arithmetic", "Calculus", "Geometry", "Trigonometry"]


//let humantiesFos = ["American History", "American Literature", "Archeology", "History of Western Civilization", "Linguistics", "German Language", "French Language", "Jurisprudence", "English Literature", "Philosophy"]
let ahObjectives = [loItem(selected: false, title: "American History LO 1 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "American History LO 2 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "American History LO 3 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "American History LO 4 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "American History LO 5 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "American History LO 6 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "American History LO 7 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "American History LO 8 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "American History LO 9 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "American History LO 10 from Ontology and Bloom's Taxonomy")]

let alObjectives = [loItem(selected: false, title: "American Literature LO 1 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "American Literature LO 2 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "American Literature LO 3 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "American Literature LO 4 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "American Literature LO 5 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "American Literature LO 6 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "American Literature LO 7 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "American Literature LO 8 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "American Literature LO 9 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "American Literature LO 10 from Ontology and Bloom's Taxonomy")]

let archeologyObjectives = [loItem(selected: false, title: "Archeology LO 1 from Ontology and Bloom's Taxonomy"),
                            loItem(selected: false, title: "Archeology LO 2 from Ontology and Bloom's Taxonomy"),
                            loItem(selected: false, title: "Archeology LO 3 from Ontology and Bloom's Taxonomy"),
                            loItem(selected: false, title: "Archeology LO 4 from Ontology and Bloom's Taxonomy")]

let wstCivObjectives = [loItem(selected: false, title: "Western Civ LO 1 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "Western Civ LO 2 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "Western Civ LO 3 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "Western Civ LO 4 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "Western Civ LO 5 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "Western Civ LO 6 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "Western Civ LO 7 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "Western Civ LO 8 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "Western Civ LO 9 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "Western Civ LO 10 from Ontology and Bloom's Taxonomy")]

let linguisticsObjectives = [loItem(selected: false, title: "Linguistics LO 1 from Ontology and Bloom's Taxonomy"),
                             loItem(selected: false, title: "Linguistics LO 2 from Ontology and Bloom's Taxonomy"),
                             loItem(selected: false, title: "Linguistics LO 3 from Ontology and Bloom's Taxonomy"),
                             loItem(selected: false, title: "Linguistics LO 4 from Ontology and Bloom's Taxonomy"),
                             loItem(selected: false, title: "Linguistics LO 5 from Ontology and Bloom's Taxonomy"),
                             loItem(selected: false, title: "Linguistics LO 6 from Ontology and Bloom's Taxonomy"),
                             loItem(selected: false, title: "Linguistics LO 7 from Ontology and Bloom's Taxonomy"),
                             loItem(selected: false, title: "Linguistics LO 8 from Ontology and Bloom's Taxonomy"),
                             loItem(selected: false, title: "Linguistics LO 9 from Ontology and Bloom's Taxonomy"),
                             loItem(selected: false, title: "Linguistics LO 10 from Ontology and Bloom's Taxonomy")]

let germanObjectives = [loItem(selected: false, title: "German Language LO 1 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "German Language LO 2 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "German Language LO 3 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "German Language LO 4 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "German Language LO 5 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "German Language LO 6 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "German Language LO 7 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "German Language LO 8 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "German Language LO 9 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "German Language LO 10 from Ontology and Bloom's Taxonomy")]

let frenchObjectives = [loItem(selected: false, title: "French Language LO 1 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "French Language LO 2 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "French Language LO 3 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "French Language LO 4 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "French Language LO 5 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "French Language LO 6 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "French Language LO 7 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "French Language LO 8 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "French Language LO 9 from Ontology and Bloom's Taxonomy"),
                        loItem(selected: false, title: "French Language LO 10 from Ontology and Bloom's Taxonomy")]

let jpObjectives = [loItem(selected: false, title: "Jurisprudence LO 1 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "Jurisprudence LO 2 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "Jurisprudence LO 3 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "Jurisprudence LO 4 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "Jurisprudence LO 5 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "Jurisprudence LO 6 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "Jurisprudence LO 7 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "Jurisprudence LO 8 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "Jurisprudence LO 9 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "Jurisprudence LO 10 from Ontology and Bloom's Taxonomy")]

let elObjectives = [loItem(selected: false, title: "English Literature LO 1 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "English Literature LO 2 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "English Literature LO 3 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "English Literature LO 4 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "English Literature LO 5 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "English Literature LO 6 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "English Literature LO 7 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "English Literature LO 8 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "English Literature LO 9 from Ontology and Bloom's Taxonomy"),
                    loItem(selected: false, title: "English Literature LO 10 from Ontology and Bloom's Taxonomy")]

let philosophObjectives = [loItem(selected: false, title: "Philosophy LO 1 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Philosophy LO 2 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Philosophy LO 3 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Philosophy LO 4 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Philosophy LO 5 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Philosophy LO 6 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Philosophy LO 7 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Philosophy LO 8 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Philosophy LO 9 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Philosophy LO 10 from Ontology and Bloom's Taxonomy")]


//let socialScienceFos = ["Sociology", "Developmental Psychology", "Cognitive Psychology","Political Science", "Anthropology", "Geography (Human)", "Economics"]
let sociologyObjectives = [loItem(selected: false, title: "Sociology LO 1 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Sociology LO 2 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Sociology LO 3 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Sociology LO 4 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Sociology LO 5 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Sociology LO 6 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Sociology LO 7 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Sociology LO 8 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Sociology LO 9 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Sociology LO 10 from Ontology and Bloom's Taxonomy")]

let devPsycObjectives = [loItem(selected: false, title: "Developmental Psychology LO 1 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Developmental Psychology LO 2 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Developmental Psychology LO 3 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Developmental Psychology LO 4 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Developmental Psychology LO 5 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Developmental Psychology LO 6 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Developmental Psychology LO 7 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Developmental Psychology LO 8 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Developmental Psychology LO 9 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Developmental Psychology LO 10 from Ontology and Bloom's Taxonomy")]

let cogPsycObjectives = [loItem(selected: false, title: "Cognitive Psychology LO 1 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Cognitive Psychology LO 2 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Cognitive Psychology LO 3 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Cognitive Psychology LO 4 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Cognitive Psychology LO 5 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Cognitive Psychology LO 6 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Cognitive Psychology LO 7 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Cognitive Psychology LO 8 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Cognitive Psychology LO 9 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Cognitive Psychology LO 10 from Ontology and Bloom's Taxonomy")]

let polisciPsycObjectives = [loItem(selected: false, title: "Political Science LO 1 from Ontology and Bloom's Taxonomy"),
                             loItem(selected: false, title: "Political Science LO 2 from Ontology and Bloom's Taxonomy"),
                             loItem(selected: false, title: "Political Science LO 3 from Ontology and Bloom's Taxonomy"),
                             loItem(selected: false, title: "Political Science LO 4 from Ontology and Bloom's Taxonomy"),
                             loItem(selected: false, title: "Political Science LO 5 from Ontology and Bloom's Taxonomy"),
                             loItem(selected: false, title: "Political Science LO 6 from Ontology and Bloom's Taxonomy"),
                             loItem(selected: false, title: "Political Science LO 7 from Ontology and Bloom's Taxonomy"),
                             loItem(selected: false, title: "Political Science LO 8 from Ontology and Bloom's Taxonomy"),
                             loItem(selected: false, title: "Political Science LO 9 from Ontology and Bloom's Taxonomy"),
                             loItem(selected: false, title: "Political Science LO 10 from Ontology and Bloom's Taxonomy")]

let geographyHumObjectives = [loItem(selected: false, title: "Geography (Human) LO 1 from Ontology and Bloom's Taxonomy"),
                              loItem(selected: false, title: "Geography (Human) LO 2 from Ontology and Bloom's Taxonomy"),
                              loItem(selected: false, title: "Geography (Human) LO 3 from Ontology and Bloom's Taxonomy"),
                              loItem(selected: false, title: "Geography (Human) LO 4 from Ontology and Bloom's Taxonomy"),
                              loItem(selected: false, title: "Geography (Human) LO 5 from Ontology and Bloom's Taxonomy"),
                              loItem(selected: false, title: "Geography (Human) LO 6 from Ontology and Bloom's Taxonomy"),
                              loItem(selected: false, title: "Geography (Human) LO 7 from Ontology and Bloom's Taxonomy"),
                              loItem(selected: false, title: "Geography (Human) LO 8 from Ontology and Bloom's Taxonomy"),
                              loItem(selected: false, title: "Geography (Human) LO 9 from Ontology and Bloom's Taxonomy"),
                              loItem(selected: false, title: "Geography (Human) LO 10 from Ontology and Bloom's Taxonomy")]

let economicsObjectives = [loItem(selected: false, title: "Economics LO 1 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Economics LO 2 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Economics LO 3 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Economics LO 4 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Economics LO 5 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Economics LO 6 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Economics LO 7 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Economics LO 8 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Economics LO 9 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Economics LO 10 from Ontology and Bloom's Taxonomy")]

//let physicalScienceFos = ["Astronomy", "Chemistry", "Earth Sciences", "Physics"]

let astronomyObjectives = [loItem(selected: false, title: "Astronomy LO 1 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Astronomy LO 2 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Astronomy LO 3 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Astronomy LO 4 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Astronomy LO 5 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Astronomy LO 6 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Astronomy LO 7 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Astronomy LO 8 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Astronomy LO 9 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Astronomy LO 10 from Ontology and Bloom's Taxonomy")]

let chemistryObjectives = [loItem(selected: false, title: "Chemistry LO 1 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Chemistry LO 2 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Chemistry LO 3 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Chemistry LO 4 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Chemistry LO 5 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Chemistry LO 6 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Chemistry LO 7 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Chemistry LO 8 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Chemistry LO 9 from Ontology and Bloom's Taxonomy"),
                           loItem(selected: false, title: "Chemistry LO 10 from Ontology and Bloom's Taxonomy")]

let earthSciObjectives = [loItem(selected: false, title: "Earth Sciences LO 1 from Ontology and Bloom's Taxonomy"),
                          loItem(selected: false, title: "Earth Sciences LO 2 from Ontology and Bloom's Taxonomy"),
                          loItem(selected: false, title: "Earth Sciences LO 3 from Ontology and Bloom's Taxonomy"),
                          loItem(selected: false, title: "Earth Sciences LO 4 from Ontology and Bloom's Taxonomy"),
                          loItem(selected: false, title: "Earth Sciences LO 5 from Ontology and Bloom's Taxonomy"),
                          loItem(selected: false, title: "Earth Sciences LO 6 from Ontology and Bloom's Taxonomy"),
                          loItem(selected: false, title: "Earth Sciences LO 7 from Ontology and Bloom's Taxonomy"),
                          loItem(selected: false, title: "Earth Sciences LO 8 from Ontology and Bloom's Taxonomy"),
                          loItem(selected: false, title: "Earth Sciences LO 9 from Ontology and Bloom's Taxonomy"),
                          loItem(selected: false, title: "Earth Sciences LO 10 from Ontology and Bloom's Taxonomy")]

let physicsObjectives = [loItem(selected: false, title: "Physics LO 1 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Physics LO 2 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Physics LO 3 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Physics LO 4 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Physics LO 5 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Physics LO 6 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Physics LO 7 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Physics LO 8 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Physics LO 9 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Physics LO 10 from Ontology and Bloom's Taxonomy")]

//let mathFos = ["Algebra", "Arithmetic", "Calculus", "Geometry", "Trigonometry"]

let algebraObjectives = [loItem(selected: false, title: "Algebra LO 1 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Algebra LO 2 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Algebra LO 3 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Algebra LO 4 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Algebra LO 5 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Algebra LO 6 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Algebra LO 7 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Algebra LO 8 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Algebra LO 9 from Ontology and Bloom's Taxonomy"),
                         loItem(selected: false, title: "Algebra LO 10 from Ontology and Bloom's Taxonomy")]

let arithmeticObjectives = [loItem(selected: false, title: "Arithmetic LO 1 from Ontology and Bloom's Taxonomy"),
                            loItem(selected: false, title: "Arithmetic LO 2 from Ontology and Bloom's Taxonomy"),
                            loItem(selected: false, title: "Arithmetic LO 3 from Ontology and Bloom's Taxonomy"),
                            loItem(selected: false, title: "Arithmetic LO 4 from Ontology and Bloom's Taxonomy"),
                            loItem(selected: false, title: "Arithmetic LO 5 from Ontology and Bloom's Taxonomy"),
                            loItem(selected: false, title: "Arithmetic LO 6 from Ontology and Bloom's Taxonomy"),
                            loItem(selected: false, title: "Arithmetic LO 7 from Ontology and Bloom's Taxonomy"),
                            loItem(selected: false, title: "Arithmetic LO 8 from Ontology and Bloom's Taxonomy"),
                            loItem(selected: false, title: "Arithmetic LO 9 from Ontology and Bloom's Taxonomy"),
                            loItem(selected: false, title: "Arithmetic LO 10 from Ontology and Bloom's Taxonomy")]

let calculusObjectives = [loItem(selected: false, title: "Calculus LO 1 from Ontology and Bloom's Taxonomy"),
                          loItem(selected: false, title: "Calculus LO 2 from Ontology and Bloom's Taxonomy"),
                          loItem(selected: false, title: "Calculus LO 3 from Ontology and Bloom's Taxonomy"),
                          loItem(selected: false, title: "Calculus LO 4 from Ontology and Bloom's Taxonomy"),
                          loItem(selected: false, title: "Calculus LO 5 from Ontology and Bloom's Taxonomy"),
                          loItem(selected: false, title: "Calculus LO 6 from Ontology and Bloom's Taxonomy"),
                          loItem(selected: false, title: "Calculus LO 7 from Ontology and Bloom's Taxonomy"),
                          loItem(selected: false, title: "Calculus LO 8 from Ontology and Bloom's Taxonomy"),
                          loItem(selected: false, title: "Calculus LO 9 from Ontology and Bloom's Taxonomy"),
                          loItem(selected: false, title: "Calculus LO 10 from Ontology and Bloom's Taxonomy")]

let trigonometryObjectives = [loItem(selected: false, title: "Trigonometry LO 1 from Ontology and Bloom's Taxonomy"),
                              loItem(selected: false, title: "Trigonometry LO 2 from Ontology and Bloom's Taxonomy"),
                              loItem(selected: false, title: "Trigonometry LO 3 from Ontology and Bloom's Taxonomy"),
                              loItem(selected: false, title: "Trigonometry LO 4 from Ontology and Bloom's Taxonomy"),
                              loItem(selected: false, title: "Trigonometry LO 5 from Ontology and Bloom's Taxonomy"),
                              loItem(selected: false, title: "Trigonometry LO 6 from Ontology and Bloom's Taxonomy"),
                              loItem(selected: false, title: "Trigonometry LO 7 from Ontology and Bloom's Taxonomy"),
                              loItem(selected: false, title: "Trigonometry LO 8 from Ontology and Bloom's Taxonomy"),
                              loItem(selected: false, title: "Trigonometry LO 9 from Ontology and Bloom's Taxonomy"),
                              loItem(selected: false, title: "Trigonometry LO 10 from Ontology and Bloom's Taxonomy")]

let recommendationItems = [recommendationItem(peerRating: 4, link: "https://towardsdatascience.com/top-algorithms-and-data-structures-you-really-need-to-know-ab9a2a91c7b5", clicked: false),
                           recommendationItem(peerRating: 3, link: "https://www.coursera.org/specializations/data-structures-algorithms", clicked: false)]

class FosData: NSArray {
    static let shared: FosData = FosData()
    var collegeFos = [humantiesFos,socialScienceFos,physicalScienceFos,mathFos]
}

class loData: NSArray {
    static let shared: loData = loData()
    var loItemArray:[loItem] = Array()
}

class loSelected: NSArray {
    static let shared: loSelected = loSelected()
    var loISelectedArray:[loItem] = Array()
}

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let colleges = ["Humanities","Social Sciences","Physical Sciences", "Mathematics"]
    
    let collegeImages: [UIImage] = [
        UIImage(named: "humanities.png")!,
        UIImage(named: "social_sciences_connection.jpeg")!,
        UIImage(named: "physical_science_2.jpeg")!,
        UIImage(named: "mathematics.jpeg")!
    ]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return colleges.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        cell.CollegeLabel.text = colleges[indexPath.item]
        cell.CollegeImageView.image = collegeImages[indexPath.item]
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.5
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        ModelData.shared.fos = FosData.shared.collegeFos[indexPath.item]
        
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.layer.borderColor = UIColor.gray.cgColor
        cell?.layer.borderWidth = 2
       
        if indexPath.row == 0 {
            loModelData.shared.fosLO = [ahObjectives,alObjectives,archeologyObjectives,wstCivObjectives,linguisticsObjectives,germanObjectives,frenchObjectives,jpObjectives,elObjectives,philosophObjectives]
        } else if indexPath.row == 1 {
            loModelData.shared.fosLO = [sociologyObjectives,devPsycObjectives,cogPsycObjectives,polisciPsycObjectives,geographyHumObjectives,economicsObjectives]
        } else if indexPath.row == 2 {
            loModelData.shared.fosLO = [astronomyObjectives,chemistryObjectives,earthSciObjectives,physicsObjectives]
        } else {
            loModelData.shared.fosLO = [algebraObjectives,arithmeticObjectives,calculusObjectives,trigonometryObjectives]
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.layer.borderColor = UIColor.lightGray.cgColor
        cell?.layer.borderWidth = 0.5
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
        
        let layout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        layout.minimumInteritemSpacing = 5
        layout.itemSize = CGSize(width: (self.collectionView.frame.size.width - 20)/2, height: (self.collectionView.frame.size.height)/2)
        
    }
    
}
