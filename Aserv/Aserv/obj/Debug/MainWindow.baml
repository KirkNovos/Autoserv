   M S B A M L   `   `   `  ����@  <Aserv, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:AservAserv  5   	       Aserv.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:Aserv     5   	   -   5          �Name$
  Root��5
   	   $��Arial Black)�5   	    � Title$* $Услуги авто сервиса��5	   	   $	��300��5   	   $
��1024��6   $	��450��5   	   $	��800��6   .��5      �  � ColumnDefinitions 5   
   �� 5      $	��150 �6   �� 5      $��1* �6   .+�5   
   �� $��5q�5   	   $��./images/service_logo.png��5   	   $	��Top=�5   	   � 5   
   $��1��6    � RowDefinitions 5      �� 5      $��30 �6    �� 5      $��1* �6    �� 5      $��30 �6    .+�5"      ��  �� Orientation$ 
Horizontal=�5#      $��Center=�5$      .+�5%      �� $��
Цена: ��6   	� 5&      -   5         	� 	GroupName$ Price��5'      
 � Tag$ 1��5(      $!��по возрастанию��5)       d� 	IsChecked$
 TrueY�5*      $��Center=�5,      	� 5-      -   5        $ Price��5.   	   $ 2��5/   	   $��по убыванию��50   	   $��Center=�52   	   �� 54      $&�� Фильтр по скидке: ��6   $��10,0,0,0q�55   	   $��Center=�56   	   �� 57      -   5        $��DiscountFilterComboBox��58       �� SelectedIndex$ 0��59      ��5;      �� *FilterByDiscountNamesList+�� 5=      -   5        	 ��Name$	 SearchFilterTextBox��5=   Y   $
��Left=�6   
 �� TextWrapping$

 Wrap=�66   $��TextBox��6J   $	��Top=�6v   6�   5>      &   System.Windows.Controls.DataGrid  5@      $��1��5A         CanUserSortColumns .  $��1��5C         CanUserAddRows .     AutoGenerateColumns .  ��5F      �� *ServiceList+   RowStyle 5H      �� 5I       �� 
TargetType)  #System.Windows.Controls.DataGridRow"  6    �� Triggers 5J      �� 5K       �� Binding 5L      �� *HasDiscount+ �� Value	 False5M      .a�5N   "   ��  �� Property � �� �� Value
 ����5P      5Q      5S         Columns 5V      0  *System.Windows.Controls.DataGridTextColumn  5X      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$	 250 5Y         Header$+ %Наименование услуги��5Z      1  +System.Windows.Controls.DataGridBoundColumn   Binding 5[      �� *Title+4  .System.Windows.Controls.DataGridTemplateColumn  5\      $	 100 5]      $ Стоимость��5^         CellTemplate 5`      �� 5a      .R�5b   "   �� ��5c      �� *CostTextDecoration+��5d      �� *
CostString+5e      5g        5i      $	 150 5j      $, &Стоимость со скидкой��5k       5l      �� *CostWithDiscount+  5n      $	 150 5o      $( "Продолжительность��5p       5q      �� *DurationInSeconds+  5r      $ 64 5s      $  ��5t       5u      �� 5v      .R�5x   "   �� $��64��5y      $��64��5z      ��5{      �� *
ImageUri+5|      5~        5�      $ 60 5�      $ Скидка��5�       5�      �� *
Discount+  5�      $ Действия��5�       5�      �� 5�      .R�5�   "   �� $ 
Horizontal=�5�      y�5�      �� *DataContext.AdminVisibility+ �� ElementName$
 Root��.+�5�   &   �� $��
EditButton��5�      $ ��Редактировать��5�      5�      �� 5�   &   $��DeleteButton��5�      $��Удалить��5�      5�      5�   #   5�      5�      5�      5�      �� 5�   
   $ Vertical=�5�      $��5q�5�      $��Bottom=�5�      .+�5�      �� $#��Добавить услугу��5�      y�5�      �� *AdminVisibility+�� 5�      -   5        $��AdminButton��5�      ��5�      �� *AdminModeCaption+5�      �� 5�      -   5         ��Name$ 
ExitButton��5�      $��
Выход��5�         BrownButtonStyle#��[  5�      5�      5�      5�      