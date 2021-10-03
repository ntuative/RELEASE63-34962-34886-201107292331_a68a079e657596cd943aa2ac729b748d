package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_741:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_639:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_741);
         this.var_639 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_639;
      }
   }
}
