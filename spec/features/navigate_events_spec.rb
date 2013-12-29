require "spec_helper"

describe "Navigating events" do
  it "allows navigation from the detail page to the listing page" do
    event = Event.create(event_attributes)

    visit event_url(event)

    click_link "Back to Events"

    expect(current_path).to eq(events_path)
  end

  it "allows navigation from the listing page to the detail page" do
    event = Event.create(event_attributes)

    visit events_url

    click_link event.name

    expect(current_path).to eq(event_path(event))
  end

  it "allows navigation to the edit event page" do
    event = Event.create(event_attributes)

    visit event_url(event)

    click_link "Edit"

    expect(current_path).to eq(edit_event_path(event))
  end
end
