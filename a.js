const x = 4;
const y = x - 3;
const z = x + y * 2 + 1 + 5;

function log(x) {
  console.log({ x });
  return function(y) {
    console.log({ y });
    return function(z) {
      console.log({ x, y, z, okay: 'done' });
    };
  };
}

log(x)(y)(z);
