<todo>

  <h3><timer></timer> - { opts.title }</h3>

  <ul>
    <li each={ items }>
      <label class={ completed: done }>
        <input type="checkbox" checked={ done } onclick={ parent.toggle }> { title }
      </label>
      <a href="#" onclick={ parent.editExisting }>edit</a>
    </li>
  </ul>

  <form onsubmit={ add }>
    <input name="input" onkeyup={ edit }>
    { console.log(parent) }
    <button show={text || parent.editedItem}  disabled={ !text && !parent.editedItem }>{ buttonTitle }-</button>
  </form>

  this.disabled = true

  this.items = opts.items

  updButtonTitle() {
  this.buttonTitle = (this.editedItem?"Finish editing":("Add #" + (this.items.length+1)));
  }

  edit(e) {
    this.text = e.target.value
    this.updButtonTitle();
    if (this.editedItem) this.editedItem.title = this.text;
  }

  add(e) {
    if (this.editedItem)
    {
      this.editedItem = null;
      this.text = this.input.value = '';
      this.updButtonTitle();
    }
    else if (this.text) {
      this.items.push({ title: this.text })
      this.text = this.input.value = ''
      this.editedItem = null;
      this.updButtonTitle();
    }
  }

  toggle(e) {
    var item = e.item
    item.done = !item.done
    item.title;
    return true
  }

  editExisting(e) {
  var item = e.item;
  this.text = item.title;
  this.editedItem=item;
  this.input.value = this.text;
  this.updButtonTitle();
  }

</todo>
