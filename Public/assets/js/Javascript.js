// Date and Time
$(document).ready(function () {
    const now = new Date();
    const currentHour = now.getHours();
    let greeting;
    if (currentHour < 12) {
        greeting = 'สวัสดียามเช้า';
    } else {
        greeting = 'สวัสดียามเย็น';
    }

    $("#greeting").text(greeting);
});

$(document).ready(function () {
    const now = new Date();
    const copyright_year_option = {
        timeZone: 'Asia/Bangkok',
        year: 'numeric'
    };
    const formattedCopyright = now.toLocaleDateString('en-EN', copyright_year_option);

    $("#copyright-year").each(function () {
        $(this).text(formattedCopyright);
    });
});

$(document).ready(function () {
    const now = new Date();
    const options_date = {
        timeZone: 'Asia/Bangkok',
        year: 'numeric',
        month: 'short',
        day: 'numeric'
    };
    const options_time = {
        timeZone: 'Asia/Bangkok',
        hour: 'numeric',
        minute: 'numeric',
        second: 'numeric'
    };
    const formattedDate = now.toLocaleDateString('th-TH', options_date);
    const formattedTime = now.toLocaleTimeString('th-TH', options_time);

    $("[id^=date-info]").each(function () {
        $(this).text(formattedDate + ' เวลา ' + formattedTime + ' น.');
    });
});

$(document).ready(function () {
    const now = new Date();
    const options_date = {
        timeZone: 'Asia/Bangkok',
        year: 'numeric',
        month: 'short', 
        day: 'numeric'
    };
    const formattedDate = now.toLocaleDateString('th-TH', options_date);

    $("[id^=date-today]").each(function () {
        $(this).text(formattedDate);
    });
});
// Date and Time End

// Copy data info
function copyDataInfo(dataInfo) {
    // Create a temporary textarea element
    var tempInput = document.createElement("input");
    // Set its value to the dataInfo
    tempInput.value = dataInfo;
    // Append the textarea to the body
    document.body.appendChild(tempInput);
    // Select the text
    tempInput.select();
    // Copy the text to the clipboard
    document.execCommand("copy");
    // Remove the textarea
    document.body.removeChild(tempInput);
}
// Copy data info End