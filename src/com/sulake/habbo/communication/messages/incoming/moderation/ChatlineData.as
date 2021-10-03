package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2817:int;
      
      private var var_2819:int;
      
      private var var_2816:int;
      
      private var var_2818:String;
      
      private var var_2139:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2817 = param1.readInteger();
         this.var_2819 = param1.readInteger();
         this.var_2816 = param1.readInteger();
         this.var_2818 = param1.readString();
         this.var_2139 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2817;
      }
      
      public function get minute() : int
      {
         return this.var_2819;
      }
      
      public function get chatterId() : int
      {
         return this.var_2816;
      }
      
      public function get chatterName() : String
      {
         return this.var_2818;
      }
      
      public function get msg() : String
      {
         return this.var_2139;
      }
   }
}
