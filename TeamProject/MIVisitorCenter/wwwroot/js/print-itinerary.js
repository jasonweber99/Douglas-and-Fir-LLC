$('#print-button').click(function () {
    var panel = document.getElementById("print-window");
    var printWindow = window.open('', '', 'height=400,width=800');
    printWindow.document.write('<html><head><title>Print Itinerary</title><meta charset="utf-8"/><meta name="viewport" content = "width=device-width, initial-scale=1.0" /><link rel="stylesheet" href="~/lib/bootstrap/dist/css/bootstrap.min.css" /><link rel="preconnect" href="https://fonts.gstatic.com"><link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Noto+Sans+JP:wght@100;300;400;500;700;900&display=swap" rel="stylesheet"><link rel="stylesheet" href="~/lib/uikit-3/css/uikit.min.css"><link rel="stylesheet" href="~/css/site.css" /><link rel="stylesheet" href="~/css/style.css" />');
    printWindow.document.write('</head><body >');
    printWindow.document.write(panel.innerHTML);
    printWindow.document.write('</body></html>');
    printWindow.document.close();
    //var original = document.documentElement;
    //document.documentElement.innerHTML = '<html><head><title>Print Itinerary</title><meta charset="utf-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" /><link rel="stylesheet" href="~/lib/bootstrap/dist/css/bootstrap.min.css" /><link rel="preconnect" href="https://fonts.gstatic.com"><link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Noto+Sans+JP:wght@100;300;400;500;700;900&display=swap" rel="stylesheet"><link rel="stylesheet" href="~/lib/uikit-3/css/uikit.min.css"><link rel="stylesheet" href="~/css/site.css" /><link rel="stylesheet" href="~/css/style.css" /></head><body >' + panel.innerHTML + '</body></html>';
    setTimeout(function () {
        printWindow.print();
    }, 500);
    //document.documentElement = original;
    return false;
});