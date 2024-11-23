# Omnistudio Help With Example

## Close a Flexcard Flyout Modal from an Action

https://help.salesforce.com/s/articleView?id=sf.os_close_a_flexcard_flyout_modal_from_an_action.htm&type=5


- Create a child FlexCard

![Create a child FlexCard](example/closeFlyoutModal/CreateChildFlexCard.png)
- Add an Action Button into the child FlexCard, and active
    - Action Type: Event
    - Event Type: PubSub
    - Event Name: close_modal
    - Event Name: close

![Add an Action Button into the child FlexCard](example/closeFlyoutModal/AddActionButtonIntoChildFlexCard.png)

- Create a parent FlexCard

![Create a parent FlexCard](example/closeFlyoutModal/CreateParentFlexCard.png)

- Add an Action Button into the child FlexCard, and active
    - Action Type: Flyout
    - Flyout Type: Child Card
    - Flyout: ExampleChildFlexCard
    - Channel Name: close_modal (same as the Event Name in the child FlexCard)


![Add an Action Button into the parent FlexCard](example/closeFlyoutModal/AddActionButtonIntoParentFlexCard.png)

- Preview the parent FlexCard, and click the "View Detail" Button

![Preview the parent FlexCard](example/closeFlyoutModal/PreviewTheParent.png)

    - The child FlexCard will be opened
    - Click the "Close" Button in the child FlexCard