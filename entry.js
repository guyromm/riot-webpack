// HACK WARNING! change Makefile to write riot = to GLOBAL VAR before running make dist in node_modules/riot
require('./node_modules/riot/dist/riot.js');
require('./timer.tag')
require('./todo.tag')
require('./todo.css')


riot.mount('todo', {
    title: 'I want to behave!',
    items: [
        { title: 'Avoid excessive coffeine', done: true },
        { title: 'Be less provocative' },
        { title: 'Be nice to people' }
    ]
});

