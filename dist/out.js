var a, b, c;
var q, w, e;
function Test() {
}
Test.prototype = {
    sayHello: function (name) {
        console.log('Hello, ' + name);
    },
    sayBye: function (name) {
        console.log('Bye, ' + name);
    }
};
var test = new Test();
test.sayHello('Willian');
test.sayBye('Willian');