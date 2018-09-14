import UIKit


let checkListCell = "CheckListCell"

class CheckListCell: UITableViewCell {
  
  let label:UILabel = {
    let l = UILabel()
    l.translatesAutoresizingMaskIntoConstraints = false
    return l
  }()
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    setupViews()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func setupViews(){
    self.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    setupLabel()
  }
  
  func updateViews(todo: CheckListItem){
    label.text = todo.content
    accessoryType = todo.checked ? .checkmark : .none
  }
  
  func updateChecked(todo: CheckListItem){
    accessoryType = todo.checked ? .checkmark : .none
  }
  
  
  func setupLabel(){
    addSubview(label)
    label.topAnchor.constraint(equalTo: topAnchor)
    label.bottomAnchor.constraint(equalTo: bottomAnchor )
    label.leftAnchor.constraint(equalTo: leftAnchor )
    label.rightAnchor.constraint(equalTo: rightAnchor )
  }
  
}
