// PROPERTY METHODS

const todo = {
  add: function () {
    console.log('Add todo..');
  },
  edit: function (id) {
    console.log(`Edit todo ${id}`);
  },
};

todo.delete = function () {
  console.log('Delete todo...');
};

todo.add();
todo.edit(22);
todo.delete();

// call back and foreach

const myFunc = (callbackFunc) => {
  //do something
  let value = 50;
  callbackFunc(value);
};

myFunc(value => {
  //do something
  console.log(value);
});

let people = ['mario', 'luigi', 'ryu'];

const logPerson = (person, index) => {
  console.log(`${index} - heelo ${person}`);
}

people.forEach(function(person, index){
  console.log(person, index);
})

people.forEach(logPerson);
