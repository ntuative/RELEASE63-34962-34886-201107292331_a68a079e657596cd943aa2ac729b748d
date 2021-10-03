package com.sulake.habbo.help
{
   public class WelcomeNotification
   {
       
      
      private var var_2696:String;
      
      private var var_359:String;
      
      public function WelcomeNotification(param1:String, param2:String)
      {
         super();
         this.var_2696 = param1;
         this.var_359 = param2;
      }
      
      public function get targetIconId() : String
      {
         return this.var_2696;
      }
      
      public function get localizationKey() : String
      {
         return this.var_359;
      }
   }
}
