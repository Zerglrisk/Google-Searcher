   M S B A M L   `   `   `  ���� J  FGoogle Searcher, Version=0.1.2.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Google_SearcherGoogle_Searcher       Google_Searcher.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     /localclr-namespace:Google_Searcher     -     �Name$  window�� � Title$ 
MainWindow��$	��300��$	��400�� � 
ResizeMode$ NoResize=� � WindowStyle$
 None=� � 	Resources    Storyboard1 �� TargetProperty �� 
TargetName R� KeyTime   System.Windows.WindowStyle   None	 R� Value(  "System.Windows.HorizontalAlignment
   Center&   System.Windows.VerticalAlignment   Center9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value8  2System.Windows.Media.Animation.EasingColorKeyFrame �� KeyTime �� Value  System.Windows.Visibility   Hidden   Visible��%O7  &	        �� .��T� $ (Window.WindowStyle)�$ window��..�i� $ 0��#	 Z T� $, &(FrameworkElement.HorizontalAlignment)�$ label��..�i� $ 0��#	 Z
 i� $ 0:0:1.9��#	 Z
 i� $ 0:0:2��#	 Z
 i� $ 0:0:3��#	 Z
 i� $ 0:0:3.5��#	 Z
 i� $ 0:0:4.5��#	 Z
 T� $* $(Control.HorizontalContentAlignment)�$ label��..�i� $ 0��#	 Z
 i� $ 0:0:1.9��#	 Z
 i� $ 0:0:2��#	 Z
 i� $ 0:0:3��#	 Z
 i� $ 0:0:3.5��#	 Z
 i� $ 0:0:4.5��#	 Z
 T� $( "(Control.VerticalContentAlignment)�$ label��..�i� $ 0��#	 Z i� $ 0:0:1.9��#	 Z i� $ 0:0:2��#	 Z i� $ 0:0:3��#	 Z i� $ 0:0:3.5��#	 Z i� $ 0:0:4.5��#	 Z T� $* $(FrameworkElement.VerticalAlignment)�$ label��..�i� $ 0��#	 Z i� $ 0:0:1.9��#	 Z i� $ 0:0:2��#	 Z i� $ 0:0:3��#	 Z i� $ 0:0:3.5��#	 Z i� $ 0:0:4.5��#	 Z T� $ (TextElement.FontFamily)�$ label��..�i� $ 0��	 *�SpencersDaggers)�i� $ 0:0:1.9��	 *�SpencersDaggers)�i� $ 0:0:2��	 *�SpencersDaggers)�i� $ 0:0:3��	 *�SpencersDaggers)�i� $ 0:0:3.5��	 *�SpencersDaggers)�i� $ 0:0:4.5��	 *�SpencersDaggers)�U� $ (TextElement.FontSize)�$ label��.\�  $ 0��$ 48Q�  $ 0:0:1.9��$ 48Q�  $ 0:0:2��$ 48Q�  $ 0:0:3��$ 48Q�  $ 0:0:3.5��$ 48Q�  $ 0:0:4.5��$ 48Q�U� $ (FrameworkElement.Width)�$ label��.\�  $ 0��$	 398Q�  $ 0:0:1.9��$	 398Q�  $ 0:0:2��$	 398Q�  $ 0:0:3��$	 398Q�  $ 0:0:3.5��$	 398Q�  $ 0:0:4.5��$	 398Q��� $6 0(TextElement.Foreground).(SolidColorBrush.Color)�$ label��.g�  $ 0��$ White��  $ 0:0:1.9��$ White��  $ 0:0:2��$ White��  $ 0:0:3��$ White��  $ 0:0:3.5��$ White��  $ 0:0:4.5��$ White��T� $ (UIElement.Visibility)�$ label��..�i� $ 0��#	 Z i� $ 0:0:1.9��#	 Z i� $ 0:0:2��#	 Z i� $ 0:0:3��#	 Z i� $ 0:0:3.5��#	 Z i� $ 0:0:4.5��#	 Z U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$ 	rectangle��.\�  $ 0��$ -1Q�  $ 0:0:0.5��$ 12.538Q�  $ 0:0:4.6��$ 12.538Q�  $ 0:0:5.6��$ 12.538Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$ 	rectangle��.\�  $ 0��$ 0Q�  $ 0:0:0.5��$ 216.612Q�  $ 0:0:4.6��$ 216.612Q�  $ 0:0:5.6��$ 216.612Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$ 
rectangle1��.\�  $ 0:0:0.1��$ -1Q�  $ 0:0:0.6��$ 12.507Q�  $ 0:0:4.6��$ 12.507Q�  $ 0:0:5.6��$ 12.507Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$ 
rectangle1��.\�  $ 0:0:0.1��$ 0Q�  $ 0:0:0.6��$ 216.118Q�  $ 0:0:4.6��$ 216.118Q�  $ 0:0:5.6��$ 216.118Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$ 
rectangle2��.\�  $ 0:0:0.2��$ -1Q�  $ 0:0:0.7��$ 12.542Q�  $ 0:0:4.6��$ 12.542Q�  $ 0:0:5.6��$ 12.542Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$ 
rectangle2��.\�  $ 0:0:0.2��$ 0Q�  $ 0:0:0.7��$ 216.667Q�  $ 0:0:4.6��$ 216.667Q�  $ 0:0:5.6��$ 216.667Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$ 
rectangle3��.\�  $ 0:0:0.3��$ -1Q�  $ 0:0:0.8��$ 12.542Q�  $ 0:0:4.6��$ 12.542Q�  $ 0:0:5.6��$ 12.542Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$ 
rectangle3��.\�  $ 0:0:0.3��$ 0Q�  $ 0:0:0.8��$ 216.667Q�  $ 0:0:4.6��$ 216.667Q�  $ 0:0:5.6��$ 216.667Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$ 
rectangle4��.\�  $ 0:0:0.4��$ -1Q�  $ 0:0:0.9��$ 12.583Q�  $ 0:0:4.6��$ 12.583Q�  $ 0:0:5.6��$ 12.583Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$ 
rectangle4��.\�  $ 0:0:0.4��$ 0Q�  $ 0:0:0.9��$ 217.333Q�  $ 0:0:4.6��$ 217.333Q�  $ 0:0:5.6��$ 217.333Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$ 
rectangle5��.\�  $ 0:0:0.5��$ -1Q�  $ 0:0:1��$ 12.583Q�  $ 0:0:4.6��$ 12.583Q�  $ 0:0:5.6��$ 12.583Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$ 
rectangle5��.\�  $ 0:0:0.5��$ 0Q�  $ 0:0:1��$ 217.333Q�  $ 0:0:4.6��$ 217.333Q�  $ 0:0:5.6��$ 217.333Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$ 
rectangle6��.\�  $ 0:0:0.6��$ -1Q�  $ 0:0:1.1��$ 12.583Q�  $ 0:0:4.6��$ 12.583Q�  $ 0:0:5.6��$ 12.583Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$ 
rectangle6��.\�  $ 0:0:0.6��$ 0Q�  $ 0:0:1.1��$ 217.333Q�  $ 0:0:4.6��$ 217.333Q�  $ 0:0:5.6��$ 217.333Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$ 
rectangle7��.\�  $ 0:0:0.7��$ -1.021Q�  $ 0:0:1.2��$ 12.646Q�  $ 0:0:4.6��$ 12.646Q�  $ 0:0:5.6��$ 12.646Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$ 
rectangle7��.\�  $ 0:0:0.7��$ -0.334Q�  $ 0:0:1.2��$ 218.333Q�  $ 0:0:4.6��$ 218.333Q�  $ 0:0:5.6��$ 218.333Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$ 
rectangle8��.\�  $ 0:0:0.8��$ -1Q�  $ 0:0:1.3��$ 12.562Q�  $ 0:0:4.6��$ 12.562Q�  $ 0:0:5.6��$ 12.562Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$ 
rectangle8��.\�  $ 0:0:0.8��$ 0Q�  $ 0:0:1.3��$	 217Q�  $ 0:0:4.6��$	 217Q�  $ 0:0:5.6��$	 217Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$ 
rectangle9��.\�  $ 0:0:0.9��$ -1Q�  $ 0:0:1.4��$ 12.604Q�  $ 0:0:4.6��$ 12.604Q�  $ 0:0:5.6��$ 12.604Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$ 
rectangle9��.\�  $ 0:0:0.9��$ 0Q�  $ 0:0:1.4��$ 217.667Q�  $ 0:0:4.6��$ 217.667Q�  $ 0:0:5.6��$ 217.667Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$ rectangle10��.\�  $ 0:0:1��$ -1Q�  $ 0:0:1.5��$ 12.562Q�  $ 0:0:4.6��$ 12.562Q�  $ 0:0:5.6��$ 12.562Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$ rectangle10��.\�  $ 0:0:1��$ 0Q�  $ 0:0:1.5��$	 217Q�  $ 0:0:4.6��$	 217Q�  $ 0:0:5.6��$	 217Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$ rectangle11��.\�  $ 0:0:1.1��$ -1Q�  $ 0:0:1.6��$ 12.562Q�  $ 0:0:4.6��$ 12.562Q�  $ 0:0:5.6��$ 12.562Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$ rectangle11��.\�  $ 0:0:1.1��$ 0Q�  $ 0:0:1.6��$	 217Q�  $ 0:0:4.6��$	 217Q�  $ 0:0:5.6��$	 217Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$ rectangle12��.\�  $ 0:0:1.2��$ -1Q�  $ 0:0:1.7��$ 12.604Q�  $ 0:0:4.6��$ 12.604Q�  $ 0:0:5.6��$ 12.604Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$ rectangle12��.\�  $ 0:0:1.2��$ 0Q�  $ 0:0:1.7��$ 217.667Q�  $ 0:0:4.6��$ 217.667Q�  $ 0:0:5.6��$ 217.667Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$ rectangle13��.\�  $ 0:0:1.3��$ -1Q�  $ 0:0:1.8��$ 12.604Q�  $ 0:0:4.6��$ 12.604Q�  $ 0:0:5.6��$ 12.604Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$ rectangle13��.\�  $ 0:0:1.3��$ 0Q�  $ 0:0:1.8��$ 217.667Q�  $ 0:0:4.6��$ 217.667Q�  $ 0:0:5.6��$ 217.667Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$ rectangle14��.\�  $ 0:0:1.4��$ -1Q�  $ 0:0:1.9��$ 12.542Q�  $ 0:0:4.6��$ 12.542Q�  $ 0:0:5.6��$ 12.542Q�U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$ rectangle14��.\�  $ 0:0:1.4��$ 0Q�  $ 0:0:1.9��$ 216.667Q�  $ 0:0:4.6��$ 216.667Q�  $ 0:0:5.6��$ 216.667Q�U� $ (UIElement.Opacity)�$ label��.\�  $ 0:0:1.9��$ 1Q�  $ 0:0:2��$ 0Q�  $ 0:0:3��$ 1Q�  $ 0:0:3.5��$ 1Q�  $ 0:0:4.5��$ 0Q�U� $ (UIElement.Opacity)�$ 	rectangle��.\�  $ 0:0:4.6��$ 1Q�  $ 0:0:5.6��$ 0Q�U� $ (UIElement.Opacity)�$ 
rectangle1��.\�  $ 0:0:4.6��$ 1Q�  $ 0:0:5.6��$ 0Q�U� $ (UIElement.Opacity)�$ 
rectangle2��.\�  $ 0:0:4.6��$ 1Q�  $ 0:0:5.6��$ 0Q�U� $ (UIElement.Opacity)�$ 
rectangle3��.\�  $ 0:0:4.6��$ 1Q�  $ 0:0:5.6��$ 0Q�U� $ (UIElement.Opacity)�$ 
rectangle4��.\�  $ 0:0:4.6��$ 1Q�  $ 0:0:5.6��$ 0Q�U� $ (UIElement.Opacity)�$ 
rectangle5��.\�  $ 0:0:4.6��$ 1Q�  $ 0:0:5.6��$ 0Q�U� $ (UIElement.Opacity)�$ 
rectangle6��.\�  $ 0:0:4.6��$ 1Q�  $ 0:0:5.6��$ 0Q�U� $ (UIElement.Opacity)�$ 
rectangle7��.\�  $ 0:0:4.6��$ 1Q�  $ 0:0:5.6��$ 0Q�U� $ (UIElement.Opacity)�$ 
rectangle8��.\�  $ 0:0:4.6��$ 1Q�  $ 0:0:5.6��$ 0Q�U� $ (UIElement.Opacity)�$ 
rectangle9��.\�  $ 0:0:4.6��$ 1Q�  $ 0:0:5.6��$ 0Q�U� $ (UIElement.Opacity)�$ rectangle10��.\�  $ 0:0:4.6��$ 1Q�  $ 0:0:5.6��$ 0Q�U� $ (UIElement.Opacity)�$ rectangle11��.\�  $ 0:0:4.6��$ 1Q�  $ 0:0:5.6��$ 0Q�U� $ (UIElement.Opacity)�$ rectangle12��.\�  $ 0:0:4.6��$ 1Q�  $ 0:0:5.6��$ 0Q�U� $ (UIElement.Opacity)�$ rectangle13��.\�  $ 0:0:4.6��$ 1Q�  $ 0:0:5.6��$ 0Q�U� $ (UIElement.Opacity)�$ rectangle14��.\�  $ 0:0:4.6��$ 1Q�  $ 0:0:5.6��$ 0Q�T� $ (UIElement.Visibility)�$ groupBox��..�i� $ 0��#	 Z i� $ 0:0:4.6��#	 Z i� $ 0:0:5.6��#	 Z T� $ (UIElement.Visibility)�$ grid1��..�i� $ 0��#	 Z i� $ 0:0:4.6��#	 Z i� $ 0:0:5.6��#	 Z T� $ (UIElement.Visibility)�$ grid2��..�i� $ 0��#	 Z i� $ 0:0:4.6��#	 Z i� $ 0:0:5.6��#	 Z T� $ (UIElement.Visibility)�$ 	groupBox1��..�i� $ 0��#	 Z i� $ 0:0:4.6��#	 Z i� $ 0:0:5.6��#	 Z T� $ (UIElement.Visibility)�$ grid3��..�i� $ 0��#	 Z i� $ 0:0:4.6��#	 Z i� $ 0:0:5.6��#	 Z T� $ (UIElement.Visibility)�$
 grid��..�i� $ 0��#	 Z i� $ 0:0:4.6��#	 Z i� $ 0:0:5.6��#	 Z T� $ (UIElement.Visibility)�$ grid4��..�i� $ 0��#	 Z i� $ 0:0:4.6��#	 Z i� $ 0:0:5.6��#	 Z T� $ (UIElement.Visibility)�$ Label_Caption��..�i� $ 0��#	 Z i� $ 0:0:4.6��#	 Z i� $ 0:0:5.6��#	 Z T� $ (UIElement.Visibility)�$ 
btn_Search��..�i� $ 0��#	 Z i� $ 0:0:4.6��#	 Z i� $ 0:0:5.6��#	 Z T� $ (UIElement.Visibility)�$ Label_Version��..�i� $ 0��#	 Z i� $ 0:0:4.6��#	 Z i� $ 0:0:5.6��#	 Z T� $ (UIElement.Visibility)�$ Label_Creator��..�i� $ 0��#	 Z i� $ 0:0:4.6��#	 Z i� $ 0:0:5.6��#	 Z T� $ (UIElement.Visibility)�$ button10��..�i� $ 0��#	 Z i� $ 0:0:4.6��#	 Z i� $ 0:0:5.6��#	 Z T� $ (UIElement.Visibility)�$ button11��..�i� $ 0��#	 Z i� $ 0:0:4.6��#	 Z i� $ 0:0:5.6��#	 Z U� $ (UIElement.Opacity)�$ groupBox��.\�  $ 0��$ 1Q�  $ 0:0:4.6��$ 0Q�  $ 0:0:5.6��$ 1Q�U� $ (UIElement.Opacity)�$ grid1��.\�  $ 0��$ 1Q�  $ 0:0:4.6��$ 0Q�  $ 0:0:5.6��$ 1Q�U� $ (UIElement.Opacity)�$ grid2��.\�  $ 0��$ 1Q�  $ 0:0:4.6��$ 0Q�  $ 0:0:5.6��$ 1Q�U� $ (UIElement.Opacity)�$ 	groupBox1��.\�  $ 0��$ 1Q�  $ 0:0:4.6��$ 0Q�  $ 0:0:5.6��$ 1Q�U� $ (UIElement.Opacity)�$ grid3��.\�  $ 0��$ 1Q�  $ 0:0:4.6��$ 0Q�  $ 0:0:5.6��$ 1Q�U� $ (UIElement.Opacity)�$
 grid��.\�  $ 0��$ 1Q�  $ 0:0:4.6��$ 0Q�  $ 0:0:5.6��$ 1Q�U� $ (UIElement.Opacity)�$ grid4��.\�  $ 0��$ 1Q�  $ 0:0:4.6��$ 0Q�  $ 0:0:5.6��$ 1Q�U� $ (UIElement.Opacity)�$ Label_Caption��.\�  $ 0��$ 1Q�  $ 0:0:4.6��$ 0Q�  $ 0:0:5.6��$ 1Q�U� $ (UIElement.Opacity)�$ 
btn_Search��.\�  $ 0��$ 1Q�  $ 0:0:4.6��$ 0Q�  $ 0:0:5.6��$ 1Q�U� $ (UIElement.Opacity)�$ Label_Version��.\�  $ 0��$ 1Q�  $ 0:0:4.6��$ 0Q�  $ 0:0:5.6��$ 1Q�U� $ (UIElement.Opacity)�$ Label_Creator��.\�  $ 0��$ 1Q�  $ 0:0:4.6��$ 0Q�  $ 0:0:5.6��$ 1Q�U� $ (UIElement.Opacity)�$ button10��.\�  $ 0��$ 1Q�  $ 0:0:4.6��$ 0Q�  $ 0:0:5.6��$ 1Q�U� $ (UIElement.Opacity)�$ button11��.\�  $ 0��$ 1Q�  $ 0:0:4.6��$ 0Q�  $ 0:0:5.6��$ 1Q� � Triggers :�  :� RoutedEvent$ FrameworkElement.Loaded��.[��� #��[  .��� .+��� -    ��Name$ 	rectangle��
���   �$
��Left=�$��20��$��	-32,0,0,0q�$	��Top=�$��32                    �� J� RenderTransformOrigin$ 0.5,0.5&�z�V� .~���  �� ScaleX$ -1Q��� �� T� �� -   $ 
rectangle1��
���   �$
��Left=�$��20��$$��-32,20                    ,0,0q�$	��Top=�$��32                    ��$ 0.5,0.5&�z�V� .~��� $ -1Q��� �� T� �� -   $ 
rectangle2��
���   �$
��Left=�$��20��$��
-32,40,0,0q�$	��Top=�$��32                    ��$ 0.5,0.5&�z�V� .~��� $ -1Q��� �� T� �� -   $ 
rectangle3��
���   �$
��Left=�$��20��$��
-32,60,0,0q�$	��Top=�$��32                    ��$ 0.5,0.5&�z�V� .~��� $ -1Q��� �� T� �� -   $ 
rectangle4��
���   �$
��Left=�$��20��$��
-32,80,0,0q�$	��Top=�$��32                    ��$ 0.5,0.5&�z�V� .~��� $ -1Q��� �� T� �� -   $ 
rectangle5��
���   �$
��Left=�$��20��$��-32,100,0,0q�$	��Top=�$��32                    ��$ 0.5,0.5&�z�V� .~��� $ -1Q��� �� T� �� -   $ 
rectangle6��
���   �$
��Left=�$��20��$��-32,120,0,0q�$	��Top=�$��32                    ��$ 0.5,0.5&�z�V� .~��� $ -1Q��� �� T� �� -	   $ 
rectangle7��
���   �$
��Left=�$��20��$��-32,140,0,0q�$	��Top=�$��32                    ��$ 0.5,0.5&�z�V� .~��� $ -1Q��� �� T� �� -
   $ 
rectangle8��
���   �$
��Left=�$��20��$��-32,160,0,0q�$	��Top=�$��32                    ��$ 0.5,0.5&�z�V� .~��� $ -1Q��� �� T� �� -   $ 
rectangle9��
���   �$
��Left=�$��20��$��-32,180,0,0q�$	��Top=�$��32                    ��$ 0.5,0.5&�z�V� .~��� $ -1Q��� �� T� �� -   $ rectangle10��
���   �$
��Left=�$��20��$��-32,200,0,0q�$	��Top=�$��32                    ��$ 0.5,0.5&�z�V� .~��� $ -1Q��� �� T� �� -   $ rectangle11��
���   �$
��Left=�$��20��$��-32,220,0,0q�$	��Top=�$��32                    ��$ 0.5,0.5&�z�V� .~��� $ -1Q��� �� T� �� -   $ rectangle12��
���   �$
��Left=�$��20��$��-32,240,0,0q�$	��Top=�$��32                    ��$ 0.5,0.5&�z�V� .~��� $ -1Q��� �� T� �� -   $ rectangle13��
���   �$
��Left=�$��20��$��-32,260,0,0q�$	��Top=�$��32                    ��$ 0.5,0.5&�z�V� .~��� $ -1Q��� �� T� �� -   $ rectangle14��
���   �$
��Left=�$��20��$��-32,280,0,0q�$	��Top=�$��32                    ��$ 0.5,0.5&�z�V� .~��� $ -1Q��� �� T� �� -    ��Name$ label��$��Aging Burst��$
��Left=�$	��100��$��0,0,0,0q�$	��Top=�$	��250��$ 0.5,0.5&�z�V� .~��� �� �� T� �� -    ��Name$ groupBox��$��Browser��$
��Left=�$��50��$	��Top=�$	��400��$��0,10,0,0q�� -    �Name$ grid1��$	��200��$��30��$	��Top=�$
��Left=�$��5,25,0,0q�.+��� -    ��Name$ Browser_Left��$��<��$
��Left=�$��Center=�$��15���� -   $ Browser_Right��$��>��$��Right=�$��Center=�$��15���� -   $ Label_Browser��$��	IExplorer��$��Center=�$��Center=�$��Center=�$��Center=��� -    ��Name$ TextBox_Browser��$��Center=�$��Center=�$��Center=�$��Center=�$y�Hidden=�� -   $ grid2��$	��200��$��30��$	��Top=�$��Right=�$��0,25,0,0q�.+��� -   $ Browser_Add��$	��Add��$
��Left=�$��Center=�$��75��$��20,0,0,0q��� -   $ Browser_Delete��$��Delete��$
��Left=�$��Center=�$��75��$��	105,0,0,0q��� -   $ 	groupBox1��$��Search Type��$
��Left=�$��50��$	��Top=�$	��400��$��0,55,0,0q�� -   $ grid3��$
��Left=�$��30��$	��Top=�$	��200��$��5,70,0,0q�.+��� -   $ Search_Type_Left��$��<��$
��Left=�$��Center=�$��15���� -   $ Search_Type_Right��$��>��$��Right=�$��Center=�$��15���� -   $ Label_Search_Type��$��Music��$��Center=�$��Center=�$��Center=�$��Center=��� -    $ TextBox_Search_Type��$��Center=�$��Center=�$��Center=�$��Center=�$y�Hidden=�� -!   $
 grid��$��Right=�$��30��$	��Top=�$	��200��$��0,70,0,0q�.+��� -"   $ Search_Type_Add��$	��Add��$��Right=�$��Center=�$��50��$��	0,0,130,0q��� -#   $ Search_Type_Delete��$��Delete��$��Right=�$��Center=�$��50��$��0,0,75,0q��� -$   $ Search_Type_Edit_Site��$��	Edit Site��$��Right=�$��Center=�$��50��$��0,0,20,0q�� -%   $ grid4��$	��400��$��50��$	��Top=�$
��Left=�$��	0,100,0,0q�.+��� -&   $ label2��$��Search��$��Center=�$	��Top=��� -'   $ textBox��$��Center=�$��23�� �� TextWrapping$
 Wrap=�$�� ��$��Bottom=�$	��380��$��0,0,0,2q��� -(   $ Label_Caption��$��Google Searcher��$
��Left=�$	��Top=�$	��400��$��0,-5,0,0q�$��Center=��� -)   $ 
btn_Search��$��Search��$��Center=�$��Bottom=�$	��390��$��0,0,0,15q�$	��130���� -*   $ Label_Version��$��Version��$
��Left=�$��Bottom=�$��	0,0,-4,-4q�$��SpencersDaggers)��� -+   $ Label_Creator��$��Created by Zerglrisk��$��Right=�$��Bottom=�$��	0,0,-4,-4q�$��SpencersDaggers)��� -,   $ button10��$��X��$��Right=�$	��Top=�$��15����Z� ��Z� �� --   $ button11��$��-��$��Right=�$	��Top=�$��15��$��0,0,15,0q���Z� ��Z� 