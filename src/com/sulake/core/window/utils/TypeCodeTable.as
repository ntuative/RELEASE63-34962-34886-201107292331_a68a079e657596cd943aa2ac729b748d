package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_783;
         param1["badge"] = const_980;
         param1["bitmap"] = const_454;
         param1["border"] = const_911;
         param1["border_notify"] = const_1775;
         param1["bubble"] = const_1038;
         param1["bubble_pointer_up"] = const_1250;
         param1["bubble_pointer_right"] = const_1281;
         param1["bubble_pointer_down"] = const_1227;
         param1["bubble_pointer_left"] = const_1362;
         param1["button"] = const_544;
         param1["button_thick"] = const_1029;
         param1["button_icon"] = const_1823;
         param1["button_group_left"] = const_975;
         param1["button_group_center"] = const_887;
         param1["button_group_right"] = const_896;
         param1["canvas"] = const_752;
         param1["checkbox"] = const_816;
         param1["closebutton"] = const_1377;
         param1["container"] = const_445;
         param1["container_button"] = const_962;
         param1["display_object_wrapper"] = const_750;
         param1["dropmenu"] = const_627;
         param1["dropmenu_item"] = const_622;
         param1["frame"] = const_456;
         param1["frame_notify"] = const_1912;
         param1["header"] = const_811;
         param1["html"] = const_1393;
         param1["icon"] = const_1347;
         param1["itemgrid"] = const_1361;
         param1["itemgrid_horizontal"] = const_611;
         param1["itemgrid_vertical"] = const_745;
         param1["itemlist"] = WINDOW_TYPE_ITEMLIST;
         param1["itemlist_horizontal"] = const_452;
         param1["itemlist_vertical"] = const_395;
         param1["label"] = const_794;
         param1["maximizebox"] = const_2041;
         param1["menu"] = const_1921;
         param1["menu_item"] = const_1811;
         param1["submenu"] = const_1269;
         param1["minimizebox"] = const_1991;
         param1["notify"] = const_1778;
         param1["null"] = const_932;
         param1["password"] = const_974;
         param1["radiobutton"] = const_982;
         param1["region"] = const_327;
         param1["restorebox"] = const_1752;
         param1["scaler"] = const_514;
         param1["scaler_horizontal"] = const_2009;
         param1["scaler_vertical"] = const_1870;
         param1["scrollbar_horizontal"] = const_583;
         param1["scrollbar_vertical"] = const_908;
         param1["scrollbar_slider_button_up"] = const_1333;
         param1["scrollbar_slider_button_down"] = const_1317;
         param1["scrollbar_slider_button_left"] = const_1236;
         param1["scrollbar_slider_button_right"] = const_1221;
         param1["scrollbar_slider_bar_horizontal"] = const_1242;
         param1["scrollbar_slider_bar_vertical"] = const_1292;
         param1["scrollbar_slider_track_horizontal"] = const_1331;
         param1["scrollbar_slider_track_vertical"] = const_1216;
         param1["scrollable_itemlist"] = const_1894;
         param1["scrollable_itemlist_vertical"] = const_512;
         param1["scrollable_itemlist_horizontal"] = const_1301;
         param1["selector"] = const_979;
         param1["selector_list"] = const_1035;
         param1["submenu"] = const_1269;
         param1["tab_button"] = const_798;
         param1["tab_container_button"] = const_1383;
         param1["tab_context"] = const_433;
         param1["tab_content"] = const_1265;
         param1["tab_selector"] = const_800;
         param1["text"] = const_835;
         param1["input"] = const_954;
         param1["toolbar"] = const_1810;
         param1["tooltip"] = const_435;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
