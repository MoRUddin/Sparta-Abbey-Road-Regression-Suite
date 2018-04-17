# Sparta-Abbey-Road-Regression-Suite
Project with AbbeyRoad to produce an automation regression test suite

Things to include:
  * changing webpage name changes google search results, since some tests access the site from google using link text.
  * adding/removing iFrames to the main page will affect their identifiers, hence doing so will break tests.
  * Any test including modals may fail. This is because the test expectance runs before modal appears/disappears due to modal animation lag.
