//simple repeat example
macro repeat {
  rule {
    ($x(,)...)
  } => {
    var $x(,)...
  }
}

//simple repeat example with case instead of rule
macro repeat2 {
  case {
    _ ($x(,)...)
  } => {
    return #{
      var $x(,)...
    }
  }
}

//a simple Class macro.
macro Class {
  case {
    _ $classname {
      $($mname $mparams $mbody)...
    }
  } => {
    return #{
      function $classname() {}

      $classname.prototype = {
        $($mname: function $mparams $mbody,)...
      };
    }
  }
}

export repeat;
export repeat2;
export Class;