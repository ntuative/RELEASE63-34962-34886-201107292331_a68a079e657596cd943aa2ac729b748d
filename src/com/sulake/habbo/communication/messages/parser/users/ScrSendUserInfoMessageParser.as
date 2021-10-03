package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2352:int = 1;
      
      public static const RESPONSE_TYPE_PURCHASE:int = 2;
      
      public static const const_1376:int = 3;
       
      
      private var var_1115:String;
      
      private var var_2749:int;
      
      private var var_2744:int;
      
      private var var_2746:int;
      
      private var var_2748:int;
      
      private var var_2747:Boolean;
      
      private var var_2367:Boolean;
      
      private var var_2591:int;
      
      private var var_2592:int;
      
      private var var_2745:Boolean;
      
      private var var_2742:int;
      
      private var var_2743:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1115 = param1.readString();
         this.var_2749 = param1.readInteger();
         this.var_2744 = param1.readInteger();
         this.var_2746 = param1.readInteger();
         this.var_2748 = param1.readInteger();
         this.var_2747 = param1.readBoolean();
         this.var_2367 = param1.readBoolean();
         this.var_2591 = param1.readInteger();
         this.var_2592 = param1.readInteger();
         this.var_2745 = param1.readBoolean();
         this.var_2742 = param1.readInteger();
         this.var_2743 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_1115;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2749;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2744;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2746;
      }
      
      public function get responseType() : int
      {
         return this.var_2748;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2747;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2367;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2591;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2592;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2745;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2742;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2743;
      }
   }
}
