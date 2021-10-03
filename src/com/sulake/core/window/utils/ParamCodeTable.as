package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_184;
         param1["bound_to_parent_rect"] = const_106;
         param1["child_window"] = const_1332;
         param1["embedded_controller"] = const_1314;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_30;
         param1["internal_event_handling"] = const_1000;
         param1["mouse_dragging_target"] = const_255;
         param1["mouse_dragging_trigger"] = const_448;
         param1["mouse_scaling_target"] = const_356;
         param1["mouse_scaling_trigger"] = const_546;
         param1["horizontal_mouse_scaling_trigger"] = const_268;
         param1["vertical_mouse_scaling_trigger"] = const_256;
         param1["observe_parent_input_events"] = const_1260;
         param1["optimize_region_to_layout_size"] = const_507;
         param1["parent_window"] = const_1182;
         param1["relative_horizontal_scale_center"] = const_228;
         param1["relative_horizontal_scale_fixed"] = const_150;
         param1["relative_horizontal_scale_move"] = const_379;
         param1["relative_horizontal_scale_strech"] = const_419;
         param1["relative_scale_center"] = const_1330;
         param1["relative_scale_fixed"] = const_912;
         param1["relative_scale_move"] = const_1302;
         param1["relative_scale_strech"] = const_1290;
         param1["relative_vertical_scale_center"] = const_232;
         param1["relative_vertical_scale_fixed"] = const_169;
         param1["relative_vertical_scale_move"] = const_251;
         param1["relative_vertical_scale_strech"] = const_307;
         param1["on_resize_align_left"] = const_1034;
         param1["on_resize_align_right"] = const_568;
         param1["on_resize_align_center"] = const_650;
         param1["on_resize_align_top"] = const_874;
         param1["on_resize_align_bottom"] = const_503;
         param1["on_resize_align_middle"] = const_535;
         param1["on_accommodate_align_left"] = const_1369;
         param1["on_accommodate_align_right"] = const_643;
         param1["on_accommodate_align_center"] = const_755;
         param1["on_accommodate_align_top"] = const_1384;
         param1["on_accommodate_align_bottom"] = const_496;
         param1["on_accommodate_align_middle"] = const_964;
         param1["route_input_events_to_parent"] = const_586;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_1358;
         param1["scalable_with_mouse"] = const_1299;
         param1["reflect_horizontal_resize_to_parent"] = const_587;
         param1["reflect_vertical_resize_to_parent"] = const_537;
         param1["reflect_resize_to_parent"] = const_382;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1406;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
