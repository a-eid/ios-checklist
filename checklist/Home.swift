import UIKit


class Home: UITableViewController {
  
  var todos = [
    CheckListItem(checked: false, content: "First Item"),
    CheckListItem(checked: false, content: "Second Item"),
    CheckListItem(checked: true, content: "Third Item"),
    CheckListItem(checked: false, content: "Fourth Item"),
    CheckListItem(checked: false, content: "Fivth Item"),
    CheckListItem(checked: true, content: "Sixth Item"),
    CheckListItem(checked: true, content: "Seventh Item"),
    CheckListItem(checked: true, content: "Eighth Item"),
    CheckListItem(checked: false, content: "Nineth Item"),
    CheckListItem(checked: false, content: "Tenth Item")
  ]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.register(CheckListCell.self, forCellReuseIdentifier: CheckListCell.identifier)
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return todos.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: checkListCell, for: indexPath) as! CheckListCell
    cell.updateViews(todo: todos[indexPath.row])
    return cell
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    todos[indexPath.row].checked = !todos[indexPath.row].checked
    // tell tableView to reloadCell
    tableView.reloadRows(at: [indexPath], with: .none)
  }
}


