package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2534:int;
      
      private var var_2531:int;
      
      private var var_809:Boolean;
      
      private var var_2533:int;
      
      private var var_2532:int;
      
      private var var_2535:int;
      
      private var var_2530:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2534 = param1.readInteger();
         this.var_2531 = param1.readInteger();
         this.var_809 = param1.readBoolean();
         this.var_2533 = param1.readInteger();
         this.var_2532 = param1.readInteger();
         this.var_2535 = param1.readInteger();
         this.var_2530 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2534;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2531;
      }
      
      public function get online() : Boolean
      {
         return this.var_809;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2533;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2532;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2535;
      }
      
      public function get banCount() : int
      {
         return this.var_2530;
      }
   }
}
