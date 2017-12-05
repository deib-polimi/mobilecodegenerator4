//
//  FirebaseHandler.swift
//  BookShelf//
//  Automatically generated by MobileCodeGenerator 3.
//  Copyright © 2017 . All rights reserved.
//

import FirebaseDatabase

class FirebaseHandler{
	
	func getReference(reference : String) -> DatabaseReference{
	
		return Database.database().reference(withPath: reference)
	}
	
	func getReference() -> DatabaseReference{
	
		return Database.database().reference()
	}
	
	func saveUser(user : User ) -> Void{
		
		// TODO REPLACE WITH YOUR FIREBASE CONSOLE REF
		let ref = getReference(reference: "user")
		
		ref.setValue(user)
	}
	
	func observeUser() -> Void{
		
		// TODO REPLACE WITH YOUR FIREBASE CONSOLE REF
		let ref = getReference(reference: "user")
		
		ref.observe(.value, with: { snapshot in
				
			// TODO REPLACE WITH YOUR ACTION				
			var newItems: [User] = []
			  
			for item in snapshot.children {
				let  user = User(snapshot: item as! DataSnapshot)
				newItems.append(user)
			} 
			//self.items = newItems
		})
	}
	
	func deleteUser(user : User) -> Void{
		
		// TODO REPLACE WITH THE ID IN YOUR FIREBASE CONSOLE
		getReference(reference: "user.ID").removeValue()		
	}
	            
}
