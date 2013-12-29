require "spec_helper"

describe "Editing an event" do
  it "updates the event and shows the event's updated detials" do
    event = Event.create(event_attributes(price: 10.00))

    visit edit_event_path(event)

    expect(find_field("Name").value).to eq(event.name)
    expect(find_field("Description").value).to eq(event.description)
    expect(find_field("Price").value).to eq("10")
  end
end
