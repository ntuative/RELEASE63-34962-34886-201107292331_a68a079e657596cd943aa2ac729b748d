package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContextStateListener;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.graphics.IWindowRenderer;
   
   public class EventProcessorState
   {
       
      
      public var renderer:IWindowRenderer;
      
      public var desktop:IDesktopWindow;
      
      public var var_1415:IWindow;
      
      public var var_1417:IWindow;
      
      public var var_1418:IWindowContextStateListener;
      
      public function EventProcessorState(param1:IWindowRenderer, param2:IDesktopWindow, param3:IWindow, param4:IWindow, param5:IWindowContextStateListener)
      {
         super();
         this.renderer = param1;
         this.desktop = param2;
         this.var_1415 = param3;
         this.var_1417 = param4;
         this.var_1418 = param5;
      }
   }
}
