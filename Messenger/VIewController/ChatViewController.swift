//
//  ChatViewController.swift
//  Messenger
//
//  Created by Jordan Denning on 5/26/21.
//

import UIKit
import Firebase

class ChatViewController: UIViewController {
    @IBOutlet weak var chatTableView: UITableView!
    
    var messages: [Message] = [Message(Sender: "hi", Body: "hello")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        chatTableView.dataSource = self
        chatTableView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutButtonPressed(_ sender: Any) {
        let firebaseAuth = Auth.auth()
        do {
            navigationController?.popToRootViewController(animated: true)
          try firebaseAuth.signOut()
        } catch let signOutError as NSError {
          print ("Error signing out: %@", signOutError)
        }
    }
}

extension ChatViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chatCell", for: indexPath)
        cell.textLabel?.text = messages[indexPath.row].Body
        return cell
    }
}

extension ChatViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
