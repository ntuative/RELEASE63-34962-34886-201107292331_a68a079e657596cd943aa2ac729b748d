package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2338:int;
      
      private var var_1870:String;
      
      private var var_2537:String;
      
      private var var_3051:Boolean;
      
      private var var_3050:Boolean;
      
      private var var_3052:int;
      
      private var var_2538:String;
      
      private var var_3049:String;
      
      private var var_1859:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2338 = param1.readInteger();
         this.var_1870 = param1.readString();
         this.var_2537 = param1.readString();
         this.var_3051 = param1.readBoolean();
         this.var_3050 = param1.readBoolean();
         param1.readString();
         this.var_3052 = param1.readInteger();
         this.var_2538 = param1.readString();
         this.var_3049 = param1.readString();
         this.var_1859 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2338;
      }
      
      public function get avatarName() : String
      {
         return this.var_1870;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2537;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_3051;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_3050;
      }
      
      public function get avatarGender() : int
      {
         return this.var_3052;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2538;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_3049;
      }
      
      public function get realName() : String
      {
         return this.var_1859;
      }
   }
}
