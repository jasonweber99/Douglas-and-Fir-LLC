const search = document.getElementById('search');
const MatchList = document.getElementById('match-list');
const searchTable = document.getElementById('search-table');
const open = document.getElementById('openSearch');
const close = document.getElementById('closeSearch');
var businesses = '';


window.onload = () => {
    console.log("site reloaded")
    $( ".search-table" ).hide();
    searchTable.classList.remove('uk-hidden');

    // Add EventListeners to window.load so they aren't executed too soon
    // Source: https://stackoverflow.com/questions/42595427/jest-testing-of-simple-vanilla-javascript-cannot-read-property-addeventlisten
    open.addEventListener( 'click', openSearch );
    close.addEventListener( 'click', closeSearch );
    search.addEventListener('input', () => searchBusinesses(search.value));

};

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

const searchBusinesses = (searchText) => {

    // Create array to hold matches
    let matches = [];
    
    // If user deletes everying in text field, removes all the search results    
    if(searchText.length === 0) {
        console.log('search field is empty');
        $( ".search-table").fadeOut();
        matches = [];
        MatchList.innerHTML = '';
    }

    // Does not provide results until there is at least three characters in text field
    if (searchText.length >= 3 ) {
        matches = findMatches(businesses, searchText);
        showSearchResults(matches);
    }
}

// Filters the businesses so either the Name or Category matches the query
const findMatches = (businesses, searchText) => {
    console.log(`Matching for ${searchText}`)
    const regex = new RegExp(`${searchText}`, 'gi');
    return businesses.filter((business) => business.Name.match(regex) || business.Category.match(regex));
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

export { findMatches }