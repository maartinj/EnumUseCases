//
//  ModalType.swift
//  EnumUses
//
//  Created by Marcin Jędrzejak on 05/11/2022.
//

import SwiftUI

enum ModalType: Identifiable, View {
    case createResource(Binding<[Resource]>)
    case editResource((Resource,Binding<[Resource]>))
    
    var id: String {
        switch self {
        case .createResource:
            return "createResource"
        case .editResource:
            return "editResource"
        }
    }
    
    var body: some View {
        switch self {
        case .createResource(let resources):
            ResourceFormView(form: ResourceForm(), resources: resources)
        case .editResource(let resourceTuple):
            ResourceFormView(form: ResourceForm(resourceTuple.0), resources: resourceTuple.1)
        }
    }
}
