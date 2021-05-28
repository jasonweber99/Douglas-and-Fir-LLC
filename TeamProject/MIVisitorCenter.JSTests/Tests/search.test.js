import { findMatches } from '../../MIVisitorCenter/wwwroot/js/search';

let mockBusinesses = [
    {
        name: 'Local Pub',
        category: 'Bar',
        description: 'A local pub.'
    },
    {
        name: 'Monmouth Bar Second',
        category: 'Bar',
        description: 'Another local bar'
    },
    {
        name: 'Local Restaraunt',
        category: 'Restaraunt',
        description: 'A local restaraunt.'
    }
    ,
    {
        name: 'Pizzaria',
        category: 'Restaraunt',
        description: 'A foreign pizzeria.'
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

test('Search for `local` should match three businesses', () => {
    // Arange

    // Act
    var matches = findMatches(mockBusinesses, 'local');

    // Assert
    expect(matches.length).toBe(3);
});

test('Search for `foreign` should match one business', () => {
    // Arange

    // Act
    var matches = findMatches(mockBusinesses, 'foreign');

    // Assert
    expect(matches.length).toBe(1);
});