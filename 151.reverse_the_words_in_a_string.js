// Given an input string, reverse the string word by word.

// For example,
// Given s = "the sky is blue",
// return "blue is sky the".

/**
 * @param {string} str
 * @returns {string}
 */
var reverseWords = function(str) {
  if(str === ''){return ''}
  as = str.split(" ");
  ns = [];
  for (var i = as.length - 1; i >= 0; i--) {
    if (as[i] === '') { continue; }
    ns.push(as[i]) ;
  }
  return ns.join(' ');
};