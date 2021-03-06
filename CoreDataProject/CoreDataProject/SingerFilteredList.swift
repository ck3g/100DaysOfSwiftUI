//
//  SingerFilteredList.swift
//  CoreDataProject
//
//  Created by Vitali Tatarintev on 15.12.19.
//  Copyright © 2019 Vitali Tatarintev. All rights reserved.
//

import CoreData
import SwiftUI

struct SingerFilteredList<T: NSManagedObject, Content: View>: View {
  var fetchRequest: FetchRequest<T>
  var singers: FetchedResults<T> { fetchRequest.wrappedValue }
  let content: (T) -> Content

  var body: some View {
    List(fetchRequest.wrappedValue, id: \.self) { singer in
      self.content(singer)
    }
  }

  init(filterKey: String, filterValue: String, sortDescriptors: [NSSortDescriptor] = [], @ViewBuilder content: @escaping (T) -> Content) {
    fetchRequest = FetchRequest<T>(
      entity: T.entity(),
      sortDescriptors: sortDescriptors,
      predicate: NSPredicate(format: "%K BEGINSWITH %@", filterKey, filterValue)
    )
    
    self.content = content
  }
}
