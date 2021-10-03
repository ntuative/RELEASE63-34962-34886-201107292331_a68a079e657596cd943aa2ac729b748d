package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1751:String = "WE_DESTROY";
      
      public static const const_366:String = "WE_DESTROYED";
      
      public static const const_1766:String = "WE_OPEN";
      
      public static const const_1982:String = "WE_OPENED";
      
      public static const const_1937:String = "WE_CLOSE";
      
      public static const const_1875:String = "WE_CLOSED";
      
      public static const const_2037:String = "WE_FOCUS";
      
      public static const const_341:String = "WE_FOCUSED";
      
      public static const const_2038:String = "WE_UNFOCUS";
      
      public static const const_1814:String = "WE_UNFOCUSED";
      
      public static const const_1997:String = "WE_ACTIVATE";
      
      public static const const_505:String = "WE_ACTIVATED";
      
      public static const const_1930:String = "WE_DEACTIVATE";
      
      public static const const_595:String = "WE_DEACTIVATED";
      
      public static const const_340:String = "WE_SELECT";
      
      public static const const_47:String = "WE_SELECTED";
      
      public static const const_624:String = "WE_UNSELECT";
      
      public static const const_644:String = "WE_UNSELECTED";
      
      public static const const_1967:String = "WE_LOCK";
      
      public static const const_1829:String = "WE_LOCKED";
      
      public static const const_1948:String = "WE_UNLOCK";
      
      public static const const_1920:String = "WE_UNLOCKED";
      
      public static const const_836:String = "WE_ENABLE";
      
      public static const const_288:String = "WE_ENABLED";
      
      public static const const_758:String = "WE_DISABLE";
      
      public static const const_283:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_417:String = "WE_RELOCATED";
      
      public static const const_1410:String = "WE_RESIZE";
      
      public static const const_41:String = "WE_RESIZED";
      
      public static const const_1846:String = "WE_MINIMIZE";
      
      public static const const_1990:String = "WE_MINIMIZED";
      
      public static const const_1847:String = "WE_MAXIMIZE";
      
      public static const const_1843:String = "WE_MAXIMIZED";
      
      public static const const_1826:String = "WE_RESTORE";
      
      public static const const_2025:String = "WE_RESTORED";
      
      public static const const_615:String = "WE_CHILD_ADDED";
      
      public static const const_412:String = "WE_CHILD_REMOVED";
      
      public static const const_208:String = "WE_CHILD_RELOCATED";
      
      public static const const_153:String = "WE_CHILD_RESIZED";
      
      public static const const_359:String = "WE_CHILD_ACTIVATED";
      
      public static const const_625:String = "WE_PARENT_ADDED";
      
      public static const const_1776:String = "WE_PARENT_REMOVED";
      
      public static const const_2007:String = "WE_PARENT_RELOCATED";
      
      public static const const_569:String = "WE_PARENT_RESIZED";
      
      public static const const_1237:String = "WE_PARENT_ACTIVATED";
      
      public static const const_156:String = "WE_OK";
      
      public static const const_634:String = "WE_CANCEL";
      
      public static const const_109:String = "WE_CHANGE";
      
      public static const const_523:String = "WE_SCROLL";
      
      public static const UNKNOWN:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_758:IWindow;
      
      protected var var_1153:Boolean;
      
      protected var var_515:Boolean;
      
      protected var var_170:Boolean;
      
      protected var var_757:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_758 = param3;
         _loc5_.var_515 = param4;
         _loc5_.var_170 = false;
         _loc5_.var_757 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_758;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_515;
      }
      
      public function recycle() : void
      {
         if(this.var_170)
         {
            throw new Error("Event already recycled!");
         }
         this.var_758 = null;
         this._window = null;
         this.var_170 = true;
         this.var_1153 = false;
         this.var_757.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1153;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1153 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1153;
      }
      
      public function stopPropagation() : void
      {
         this.var_1153 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1153 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_515 + " window: " + this._window + " }";
      }
   }
}
