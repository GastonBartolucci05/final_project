import XCTest

final class RecipeAppUITests: XCTestCase {

    func testTakeSubmissionScreenshots() throws {
        let app = XCUIApplication()
        app.launch()

        // 1. Recipe List View
        let list = app.collectionViews.firstMatch
        XCTAssertTrue(list.waitForExistence(timeout: 10))
        attachScreenshot(named: "1-recipe-list")

        // 2. Search Functionality
        let searchField = app.searchFields.firstMatch
        XCTAssertTrue(searchField.waitForExistence(timeout: 5))
        searchField.tap()
        searchField.typeText("Salad")
        sleep(1)
        attachScreenshot(named: "2-search")

        // Clear search and open a recipe detail
        searchField.buttons["Clear text"].tap()
        let firstCell = list.cells.firstMatch
        XCTAssertTrue(firstCell.waitForExistence(timeout: 5))
        firstCell.tap()

        // 3. Recipe Detail View
        let detailFavoriteButton = app.buttons["detailFavoriteButton"]
        XCTAssertTrue(detailFavoriteButton.waitForExistence(timeout: 5))
        attachScreenshot(named: "3-recipe-detail")

        // 4. Favorite Toggle
        detailFavoriteButton.tap()
        sleep(1)
        attachScreenshot(named: "4-favorite-toggle")
    }

    private func attachScreenshot(named name: String) {
        let screenshot = XCUIScreen.main.screenshot()
        let attachment = XCTAttachment(screenshot: screenshot)
        attachment.name = name
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
