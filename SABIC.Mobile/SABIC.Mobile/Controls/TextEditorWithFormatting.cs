using Xamarin.Forms;

namespace SABIC.Mobile.Controls
{
	public class TextEditorWithFormatting : ContentView
    {
        private Label label;
        private Button boldButton;
        private Button bgColorButton;
        private Button fontSizeButton;

        public TextEditorWithFormatting()
        {
            label = new Label();
            boldButton = new Button { Text = "Bold" };
            bgColorButton = new Button { Text = "Red Background" };
            fontSizeButton = new Button { Text = "Increase Font Size" };

            boldButton.Clicked += (sender, e) =>
            {
                ToggleBold();
            };

            bgColorButton.Clicked += (sender, e) =>
            {
                ToggleBackgroundColor();
            };

            fontSizeButton.Clicked += (sender, e) =>
            {
                IncreaseFontSize();
            };

            StackLayout buttonsStackLayout = new StackLayout
            {
                Orientation = StackOrientation.Horizontal,
                Children = { boldButton, bgColorButton, fontSizeButton }
            };

            Content = new StackLayout
            {
                Children = { label, buttonsStackLayout }
            };
        }

        public static readonly BindableProperty TextProperty =
            BindableProperty.Create(
                nameof(Text),
                typeof(string),
                typeof(TextEditorWithFormatting),
                propertyChanged: (bindable, oldValue, newValue) =>
                {
                    ((TextEditorWithFormatting)bindable).label.Text = (string)newValue;
                });

        public string Text
        {
            get { return (string)GetValue(TextProperty); }
            set { SetValue(TextProperty, value); }
        }

        public void ToggleBold()
        {
            label.FontAttributes = label.FontAttributes == FontAttributes.None
                    ? FontAttributes.Bold
                    : FontAttributes.None;
        }

        public void ToggleBackgroundColor()
        {
            // Toggle the background color between red and white
            if (label.BackgroundColor == Color.Red)
            {
                label.BackgroundColor = Color.White;
            }
            else
            {
                label.BackgroundColor = Color.Red;
            }
        }

        public void IncreaseFontSize()
        {
            // Increase the font size
            label.FontSize += 2;
        }
    }
}


