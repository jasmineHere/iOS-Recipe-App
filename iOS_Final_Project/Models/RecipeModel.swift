//
//  RecipeModel.swift
//  iOS_Final_Project
//
//  Created by Jasmine Muman on 2022-08-10.
//

import Foundation
import SwiftUI

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue}
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case mains = "Main"
    case sides = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(name: "Cauliflower Pasta Salad Lettuce Wraps",
               image: "https://images.unsplash.com/photo-1473093226795-af9932fe5856?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1588&q=80",
               description: "This irresistible recipe takes all the classic flavors of a traditional pasta salad and puts a refreshing, surprising spin on the classic dish to delight your taste buds. Rotini pasta is cooked with bite-sized chunks of cauliflower florets to add extra veggie goodness. Sweet peas and crunchy celery add delicious texture to the noodles; it all gets drizzled in a finger-licking-good sauce that’s equal parts creamy, tangy, and cheesy.",
               ingredients: "1⅓ cup unsweetened plant milk, 1½ teaspoons ground flaxseeds, 1½ teaspoons apple cider vinegar, 2½ teaspoons pure vanilla extract, ¾ cup unbleached all-purpose flour or whole wheat pastry flour, ⅔ cup pure cane sugar, ⅔ cup + ¼ cup unsweetened cocoa powder, divided ¼ cup almond flour, ½ teaspoon regular or sodiumfree baking powder, ¼ teaspoon baking soda, ⅛ teaspoon sea salt, ½ cup Date Paste, 1 tablespoon almond butter, Fresh berries (optional)",
               directions: "1) Cook pasta according to package directions, adding cauliflower the last 3 minutes of cooking. Stir in peas; drain. Rinse with cold water; drain well. In a large bowl combine pasta and vegetables, celery, and red onion. 2) In a small food processor combine the next five ingredients (through cayenne pepper). Cover and process until smooth, gradually adding plant milk until dressing is the consistency of a runny mayonnaise. Add dressing and parsley to pasta mixture; stir to coat well. Season with salt and black pepper. 3) Serve salad in lettuce leaves and sprinkle with paprika.",
               category: "Appetizer",
               datePublished: "2022-08-10",
               url:"https://www.forksoverknives.com/recipes/vegan-pasta-noodles/cauliflower-pasta-salad-lettuce-wraps/"),
        
        Recipe(name: "Cauliflower Pasta Salad Lettuce Wraps",
               image: "https://images.unsplash.com/photo-1473093226795-af9932fe5856?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1588&q=80",
               description: "This irresistible recipe takes all the classic flavors of a traditional pasta salad and puts a refreshing, surprising spin on the classic dish to delight your taste buds. Rotini pasta is cooked with bite-sized chunks of cauliflower florets to add extra veggie goodness. Sweet peas and crunchy celery add delicious texture to the noodles; it all gets drizzled in a finger-licking-good sauce that’s equal parts creamy, tangy, and cheesy.",
               ingredients: "1⅓ cup unsweetened plant milk, 1½ teaspoons ground flaxseeds, 1½ teaspoons apple cider vinegar, 2½ teaspoons pure vanilla extract, ¾ cup unbleached all-purpose flour or whole wheat pastry flour, ⅔ cup pure cane sugar, ⅔ cup + ¼ cup unsweetened cocoa powder, divided ¼ cup almond flour, ½ teaspoon regular or sodiumfree baking powder, ¼ teaspoon baking soda, ⅛ teaspoon sea salt, ½ cup Date Paste, 1 tablespoon almond butter, Fresh berries (optional)",
               directions: "1) Cook pasta according to package directions, adding cauliflower the last 3 minutes of cooking. Stir in peas; drain. Rinse with cold water; drain well. In a large bowl combine pasta and vegetables, celery, and red onion. 2) In a small food processor combine the next five ingredients (through cayenne pepper). Cover and process until smooth, gradually adding plant milk until dressing is the consistency of a runny mayonnaise. Add dressing and parsley to pasta mixture; stir to coat well. Season with salt and black pepper. 3) Serve salad in lettuce leaves and sprinkle with paprika.",
               category: "Appetizer",
               datePublished: "2022-08-10",
               url:"https://www.forksoverknives.com/recipes/vegan-pasta-noodles/cauliflower-pasta-salad-lettuce-wraps/"),
        
        Recipe(name: "Cauliflower Pasta Salad Lettuce Wraps",
               image: "https://images.unsplash.com/photo-1473093226795-af9932fe5856?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1588&q=80",
               description: "This irresistible recipe takes all the classic flavors of a traditional pasta salad and puts a refreshing, surprising spin on the classic dish to delight your taste buds. Rotini pasta is cooked with bite-sized chunks of cauliflower florets to add extra veggie goodness. Sweet peas and crunchy celery add delicious texture to the noodles; it all gets drizzled in a finger-licking-good sauce that’s equal parts creamy, tangy, and cheesy.",
               ingredients: "1⅓ cup unsweetened plant milk, 1½ teaspoons ground flaxseeds, 1½ teaspoons apple cider vinegar, 2½ teaspoons pure vanilla extract, ¾ cup unbleached all-purpose flour or whole wheat pastry flour, ⅔ cup pure cane sugar, ⅔ cup + ¼ cup unsweetened cocoa powder, divided ¼ cup almond flour, ½ teaspoon regular or sodiumfree baking powder, ¼ teaspoon baking soda, ⅛ teaspoon sea salt, ½ cup Date Paste, 1 tablespoon almond butter, Fresh berries (optional)",
               directions: "1) Cook pasta according to package directions, adding cauliflower the last 3 minutes of cooking. Stir in peas; drain. Rinse with cold water; drain well. In a large bowl combine pasta and vegetables, celery, and red onion. 2) In a small food processor combine the next five ingredients (through cayenne pepper). Cover and process until smooth, gradually adding plant milk until dressing is the consistency of a runny mayonnaise. Add dressing and parsley to pasta mixture; stir to coat well. Season with salt and black pepper. 3) Serve salad in lettuce leaves and sprinkle with paprika.",
               category: "Appetizer",
               datePublished: "2022-08-10",
               url:"https://www.forksoverknives.com/recipes/vegan-pasta-noodles/cauliflower-pasta-salad-lettuce-wraps/"),
        
        Recipe(name: "Cauliflower Pasta Salad Lettuce Wraps",
               image: "https://images.unsplash.com/photo-1473093226795-af9932fe5856?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1588&q=80",
               description: "This irresistible recipe takes all the classic flavors of a traditional pasta salad and puts a refreshing, surprising spin on the classic dish to delight your taste buds. Rotini pasta is cooked with bite-sized chunks of cauliflower florets to add extra veggie goodness. Sweet peas and crunchy celery add delicious texture to the noodles; it all gets drizzled in a finger-licking-good sauce that’s equal parts creamy, tangy, and cheesy.",
               ingredients: "1⅓ cup unsweetened plant milk, 1½ teaspoons ground flaxseeds, 1½ teaspoons apple cider vinegar, 2½ teaspoons pure vanilla extract, ¾ cup unbleached all-purpose flour or whole wheat pastry flour, ⅔ cup pure cane sugar, ⅔ cup + ¼ cup unsweetened cocoa powder, divided ¼ cup almond flour, ½ teaspoon regular or sodiumfree baking powder, ¼ teaspoon baking soda, ⅛ teaspoon sea salt, ½ cup Date Paste, 1 tablespoon almond butter, Fresh berries (optional)",
               directions: "1) Cook pasta according to package directions, adding cauliflower the last 3 minutes of cooking. Stir in peas; drain. Rinse with cold water; drain well. In a large bowl combine pasta and vegetables, celery, and red onion. 2) In a small food processor combine the next five ingredients (through cayenne pepper). Cover and process until smooth, gradually adding plant milk until dressing is the consistency of a runny mayonnaise. Add dressing and parsley to pasta mixture; stir to coat well. Season with salt and black pepper. 3) Serve salad in lettuce leaves and sprinkle with paprika.",
               category: "Appetizer",
               datePublished: "2022-08-10",
               url:"https://www.forksoverknives.com/recipes/vegan-pasta-noodles/cauliflower-pasta-salad-lettuce-wraps/"),
        
        Recipe(name: "Cauliflower Pasta Salad Lettuce Wraps",
               image: "https://images.unsplash.com/photo-1473093226795-af9932fe5856?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1588&q=80",
               description: "This irresistible recipe takes all the classic flavors of a traditional pasta salad and puts a refreshing, surprising spin on the classic dish to delight your taste buds. Rotini pasta is cooked with bite-sized chunks of cauliflower florets to add extra veggie goodness. Sweet peas and crunchy celery add delicious texture to the noodles; it all gets drizzled in a finger-licking-good sauce that’s equal parts creamy, tangy, and cheesy.",
               ingredients: "1⅓ cup unsweetened plant milk, 1½ teaspoons ground flaxseeds, 1½ teaspoons apple cider vinegar, 2½ teaspoons pure vanilla extract, ¾ cup unbleached all-purpose flour or whole wheat pastry flour, ⅔ cup pure cane sugar, ⅔ cup + ¼ cup unsweetened cocoa powder, divided ¼ cup almond flour, ½ teaspoon regular or sodiumfree baking powder, ¼ teaspoon baking soda, ⅛ teaspoon sea salt, ½ cup Date Paste, 1 tablespoon almond butter, Fresh berries (optional)",
               directions: "1) Cook pasta according to package directions, adding cauliflower the last 3 minutes of cooking. Stir in peas; drain. Rinse with cold water; drain well. In a large bowl combine pasta and vegetables, celery, and red onion. 2) In a small food processor combine the next five ingredients (through cayenne pepper). Cover and process until smooth, gradually adding plant milk until dressing is the consistency of a runny mayonnaise. Add dressing and parsley to pasta mixture; stir to coat well. Season with salt and black pepper. 3) Serve salad in lettuce leaves and sprinkle with paprika.",
               category: "Appetizer",
               datePublished: "2022-08-10",
               url:"https://www.forksoverknives.com/recipes/vegan-pasta-noodles/cauliflower-pasta-salad-lettuce-wraps/"),
        
        Recipe(name: "Cauliflower Pasta Salad Lettuce Wraps",
               image: "https://images.unsplash.com/photo-1473093226795-af9932fe5856?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1588&q=80",
               description: "This irresistible recipe takes all the classic flavors of a traditional pasta salad and puts a refreshing, surprising spin on the classic dish to delight your taste buds. Rotini pasta is cooked with bite-sized chunks of cauliflower florets to add extra veggie goodness. Sweet peas and crunchy celery add delicious texture to the noodles; it all gets drizzled in a finger-licking-good sauce that’s equal parts creamy, tangy, and cheesy.",
               ingredients: "1⅓ cup unsweetened plant milk, 1½ teaspoons ground flaxseeds, 1½ teaspoons apple cider vinegar, 2½ teaspoons pure vanilla extract, ¾ cup unbleached all-purpose flour or whole wheat pastry flour, ⅔ cup pure cane sugar, ⅔ cup + ¼ cup unsweetened cocoa powder, divided ¼ cup almond flour, ½ teaspoon regular or sodiumfree baking powder, ¼ teaspoon baking soda, ⅛ teaspoon sea salt, ½ cup Date Paste, 1 tablespoon almond butter, Fresh berries (optional)",
               directions: "1) Cook pasta according to package directions, adding cauliflower the last 3 minutes of cooking. Stir in peas; drain. Rinse with cold water; drain well. In a large bowl combine pasta and vegetables, celery, and red onion. 2) In a small food processor combine the next five ingredients (through cayenne pepper). Cover and process until smooth, gradually adding plant milk until dressing is the consistency of a runny mayonnaise. Add dressing and parsley to pasta mixture; stir to coat well. Season with salt and black pepper. 3) Serve salad in lettuce leaves and sprinkle with paprika.",
               category: "Appetizer",
               datePublished: "2022-08-10",
               url:"https://www.forksoverknives.com/recipes/vegan-pasta-noodles/cauliflower-pasta-salad-lettuce-wraps/"),
        
        Recipe(name: "Cauliflower Pasta Salad Lettuce Wraps",
               image: "https://images.unsplash.com/photo-1473093226795-af9932fe5856?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1588&q=80",
               description: "This irresistible recipe takes all the classic flavors of a traditional pasta salad and puts a refreshing, surprising spin on the classic dish to delight your taste buds. Rotini pasta is cooked with bite-sized chunks of cauliflower florets to add extra veggie goodness. Sweet peas and crunchy celery add delicious texture to the noodles; it all gets drizzled in a finger-licking-good sauce that’s equal parts creamy, tangy, and cheesy.",
               ingredients: "1⅓ cup unsweetened plant milk, 1½ teaspoons ground flaxseeds, 1½ teaspoons apple cider vinegar, 2½ teaspoons pure vanilla extract, ¾ cup unbleached all-purpose flour or whole wheat pastry flour, ⅔ cup pure cane sugar, ⅔ cup + ¼ cup unsweetened cocoa powder, divided ¼ cup almond flour, ½ teaspoon regular or sodiumfree baking powder, ¼ teaspoon baking soda, ⅛ teaspoon sea salt, ½ cup Date Paste, 1 tablespoon almond butter, Fresh berries (optional)",
               directions: "1) Cook pasta according to package directions, adding cauliflower the last 3 minutes of cooking. Stir in peas; drain. Rinse with cold water; drain well. In a large bowl combine pasta and vegetables, celery, and red onion. 2) In a small food processor combine the next five ingredients (through cayenne pepper). Cover and process until smooth, gradually adding plant milk until dressing is the consistency of a runny mayonnaise. Add dressing and parsley to pasta mixture; stir to coat well. Season with salt and black pepper. 3) Serve salad in lettuce leaves and sprinkle with paprika.",
               category: "Appetizer",
               datePublished: "2022-08-10",
               url:"https://www.forksoverknives.com/recipes/vegan-pasta-noodles/cauliflower-pasta-salad-lettuce-wraps/"),
        
        Recipe(name: "Cauliflower Pasta Salad Lettuce Wraps",
               image: "https://images.unsplash.com/photo-1473093226795-af9932fe5856?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1588&q=80",
               description: "This irresistible recipe takes all the classic flavors of a traditional pasta salad and puts a refreshing, surprising spin on the classic dish to delight your taste buds. Rotini pasta is cooked with bite-sized chunks of cauliflower florets to add extra veggie goodness. Sweet peas and crunchy celery add delicious texture to the noodles; it all gets drizzled in a finger-licking-good sauce that’s equal parts creamy, tangy, and cheesy.",
               ingredients: "1⅓ cup unsweetened plant milk, 1½ teaspoons ground flaxseeds, 1½ teaspoons apple cider vinegar, 2½ teaspoons pure vanilla extract, ¾ cup unbleached all-purpose flour or whole wheat pastry flour, ⅔ cup pure cane sugar, ⅔ cup + ¼ cup unsweetened cocoa powder, divided ¼ cup almond flour, ½ teaspoon regular or sodiumfree baking powder, ¼ teaspoon baking soda, ⅛ teaspoon sea salt, ½ cup Date Paste, 1 tablespoon almond butter, Fresh berries (optional)",
               directions: "1) Cook pasta according to package directions, adding cauliflower the last 3 minutes of cooking. Stir in peas; drain. Rinse with cold water; drain well. In a large bowl combine pasta and vegetables, celery, and red onion. 2) In a small food processor combine the next five ingredients (through cayenne pepper). Cover and process until smooth, gradually adding plant milk until dressing is the consistency of a runny mayonnaise. Add dressing and parsley to pasta mixture; stir to coat well. Season with salt and black pepper. 3) Serve salad in lettuce leaves and sprinkle with paprika.",
               category: "Appetizer",
               datePublished: "2022-08-10",
               url:"https://www.forksoverknives.com/recipes/vegan-pasta-noodles/cauliflower-pasta-salad-lettuce-wraps/")

    ]
}
