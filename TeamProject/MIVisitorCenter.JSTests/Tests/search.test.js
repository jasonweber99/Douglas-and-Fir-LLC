import { findMatches } from '../../MIVisitorCenter/wwwroot/js/search';

let mockBusinesses = [
    {
        Name: 'Local Pub',
        Category: 'Bar'
    },
    {
        Name: 'Monmouth Bar Second',
        Category: 'Bar'
    },
    {
        Name: 'Local Restaraunt',
        Category: 'Restaraunt'
    }
    ,
    {
        Name: 'Pizzaria',
        Category: 'Restaraunt'
    }
];

test('Search for nothing (null) should match to no business', () => {
    // Arrange

    // Act
    var matches = findMatches(mockBusinesses, null);

    // Assert
    expect(matches.length).toBe(0);
});

test('Search for `Monmouth` should match to one business', () => {
    // Arrange

    // Act
    var matches = findMatches(mockBusinesses, 'Monmouth');

    // Assert
    expect(matches.length).toBe(1);
});

test('Search for `Bar` should match to two businesses', () => {
    // Arrange

    // Act
    var matches = findMatches(mockBusinesses, 'Bar');

    // Assert
    expect(matches.length).toBe(2);
});

test('Search for `Restaraunt` should match to two businesses', () => {
    // Arrange

    // Act
    var matches = findMatches(mockBusinesses, 'Restaraunt');

    // Assert
    expect(matches.length).toBe(2);
});

test('Search for `Pizzaria` should match to one business', () => {
    // Arrange

    // Act
    var matches = findMatches(mockBusinesses, 'Pizzaria');

    // Assert
    expect(matches.length).toBe(1);
});

test('Search for `NoMatches` should match to no businesses', () => {
    // Arrange

    // Act
    var matches = findMatches(mockBusinesses, 'NoMatches');

    // Assert
    expect(matches.length).toBe(0);
});
