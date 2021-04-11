const search = document.getElementById('search');
const MatchList = document.getElementById('match-list');
const table = document.getElementById('resultsTable');
const searchTable = document.getElementById('search-table');
var businesses = '';

$(document).ready(function () {
    console.log("site reloaded")
    $( ".search-table" ).hide();
    searchTable.classList.remove('uk-hidden');
});

// This resets the search text field to have nothing in it
function closeSearch() {
    console.log('closed search bar')
    search.value = '';
    $( ".search-table").fadeOut();
}

// This fetches all businesses from db when opening search tab for the first time
function openSearch() {

    console.log('clicked search')
    if (businesses === '') {
        console.log('fetching busineses');
        getAllBusinesses();
    }
}

const getAllBusinesses = () => {
    $.ajax({
        type: "GET",
        url: "/Businesses/GetAllBusinesses",
        dataType: "json",
        success: function (res) {
            businesses = res;
        },
        error: function () {
            console.log('Error in AJAX fetching businesses');
        }
    });
}



search.addEventListener('input', () => searchBusinesses(search.value));

const searchBusinesses = (searchText) => {

    console.log(searchText);

    // Filters the businesses so either the Name or Category matches the query
    let matches = businesses.filter((business) => {
        const regex = new RegExp(`${searchText}`, 'gi');
        return business.Name.match(regex) || business.Category.match(regex);
    });
    
    // If user deletes everying in text field, removes all the search results    
    if(searchText.length === 0) {
        console.log('search field is empty');
        $( ".search-table").fadeOut();
        matches = [];
        MatchList.innerHTML = '';
    }

    // Does not provide results until there is at least three characters in text field
    if (searchText.length >= 3 ) {
        showSearchResults(matches);
    }
}

const showSearchResults = (matches) =>  {
    if(matches.length > 0) {
        const html = matches.map(match => `<tr><td><a href="/Businesses/Business/${match.Id}">${match.Name}</a></td><td><small>- ${match.Category}</small></td></tr>`).join('');
        MatchList.innerHTML = html;
        $( ".search-table" ).fadeIn();
    } else {
        // If there are no results, append a row displaying a message
        const html = `<tr><td>There are no results that match you query</td></tr>`;
        MatchList.innerHTML = html;
        $( ".search-table" ).fadeIn();
    }
}
