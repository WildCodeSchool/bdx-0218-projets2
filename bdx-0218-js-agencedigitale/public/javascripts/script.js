// ///////////////////
// TEXT ANIMATION BLOG
// ///////////////////

// Create the array with the text you want to write
var txt2write = new Array(
    "Wild not you / blog",
    );

// Variables
var speed = 60; // You can set the speed here. + is slower
var index = 0;
text_pos = 0;
var str_length = txt2write[0].length;
var contents, row;

// Function
function type_text() {
    // Init the content with blank
    contents = '';
    row = Math.max(0, index - 9);
    while (row < index) {
        // Each sentence will end with a <br />
        contents += txt2write[row++] + '\r<br />';
    }

    // Write the text
    $( "div.writeit" ).html( contents + txt2write[index].substring(0, text_pos) + "<span class='after'>_</span>" );

    if (text_pos++ == str_length) {
        text_pos = 0;
        index++;
        if (index != txt2write.length) {
            str_length = txt2write[index].length;
            setTimeout("type_text()", 800);
        }
    } else {
        setTimeout("type_text()", speed);
    }

}
type_text();
