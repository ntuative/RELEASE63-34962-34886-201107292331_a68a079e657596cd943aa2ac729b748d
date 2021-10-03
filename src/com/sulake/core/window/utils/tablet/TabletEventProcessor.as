package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_3124:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         if(param2.length == 0)
         {
            return;
         }
         var_96 = param1.desktop;
         var_71 = param1.var_1415 as WindowController;
         var_193 = param1.var_1417 as WindowController;
         var_182 = param1.renderer;
         var_949 = param1.var_1418;
         param2.begin();
         param2.end();
         param1.desktop = var_96;
         param1.var_1415 = var_71;
         param1.var_1417 = var_193;
         param1.renderer = var_182;
         param1.var_1418 = var_949;
      }
   }
}
