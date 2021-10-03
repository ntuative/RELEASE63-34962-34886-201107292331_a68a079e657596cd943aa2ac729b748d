package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.MouseCursorType;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.Dictionary;
   
   public class MouseCursorControl
   {
      
      private static var _type:uint = MouseCursorType.const_29;
      
      private static var var_156:Stage;
      
      private static var var_344:Boolean = true;
      
      private static var _disposed:Boolean = false;
      
      private static var var_840:Boolean = true;
      
      private static var var_139:DisplayObject;
      
      private static var var_1578:Dictionary = new Dictionary();
       
      
      public function MouseCursorControl(param1:DisplayObject)
      {
         super();
         var_156 = param1.stage;
      }
      
      public static function dispose() : void
      {
         if(!_disposed)
         {
            if(var_139)
            {
               var_156.removeChild(var_139);
               var_156.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
               var_156.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
               var_156.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
               var_156.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
            }
            _disposed = true;
         }
      }
      
      public static function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public static function get type() : uint
      {
         return _type;
      }
      
      public static function set type(param1:uint) : void
      {
         if(_type != param1)
         {
            _type = param1;
            var_840 = true;
         }
      }
      
      public static function get visible() : Boolean
      {
         return var_344;
      }
      
      public static function set visible(param1:Boolean) : void
      {
         var_344 = param1;
         if(var_344)
         {
            if(var_139)
            {
               var_139.visible = true;
            }
            else
            {
               Mouse.show();
            }
         }
         else if(var_139)
         {
            var_139.visible = false;
         }
         else
         {
            Mouse.hide();
         }
      }
      
      public static function change() : void
      {
         var _loc1_:* = null;
         if(var_840)
         {
            _loc1_ = var_1578[_type];
            if(_loc1_)
            {
               if(var_139)
               {
                  var_156.removeChild(var_139);
               }
               else
               {
                  var_156.addEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_156.addEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_156.addEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_156.addEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  Mouse.hide();
               }
               var_139 = _loc1_;
               var_156.addChild(var_139);
            }
            else
            {
               if(var_139)
               {
                  var_156.removeChild(var_139);
                  var_156.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_156.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_156.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_156.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  var_139 = null;
                  Mouse.show();
               }
               switch(_type)
               {
                  case MouseCursorType.const_29:
                  case MouseCursorType.ARROW:
                     Mouse.cursor = MouseCursor.ARROW;
                     break;
                  case MouseCursorType.const_332:
                     Mouse.cursor = MouseCursor.BUTTON;
                     break;
                  case MouseCursorType.const_840:
                  case MouseCursorType.const_297:
                  case MouseCursorType.const_1979:
                  case MouseCursorType.const_1973:
                     Mouse.cursor = MouseCursor.HAND;
                     break;
                  case MouseCursorType.NONE:
                     Mouse.cursor = MouseCursor.ARROW;
                     Mouse.hide();
               }
            }
            var_840 = false;
         }
      }
      
      public static function defineCustomCursorType(param1:uint, param2:DisplayObject) : void
      {
         var_1578[param1] = param2;
      }
      
      private static function onStageMouseMove(param1:MouseEvent) : void
      {
         if(var_139)
         {
            var_139.x = param1.stageX - 2;
            var_139.y = param1.stageY;
            if(_type == MouseCursorType.const_29)
            {
               var_344 = false;
               Mouse.show();
            }
            else
            {
               var_344 = true;
               Mouse.hide();
            }
         }
      }
      
      private static function onStageMouseLeave(param1:Event) : void
      {
         if(var_139 && _type != MouseCursorType.const_29)
         {
            Mouse.hide();
            var_344 = false;
         }
      }
   }
}
