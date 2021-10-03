package com.sulake.habbo.quest
{
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   
   public class FriendlyTime
   {
      
      private static const const_1066:int = 60;
      
      private static const const_1067:int = 3600;
      
      private static const const_1482:int = 3 * const_1066;
      
      private static const const_1481:int = 3 * const_1067;
       
      
      public function FriendlyTime()
      {
         super();
      }
      
      public static function getFriendlyTime(param1:IHabboLocalizationManager, param2:int) : String
      {
         if(param2 > const_1481)
         {
            return getLocalization(param1,"friendlytime.hours",Math.round(param2 / const_1067));
         }
         if(param2 > const_1482)
         {
            return getLocalization(param1,"friendlytime.minutes",Math.round(param2 / const_1066));
         }
         return getLocalization(param1,"friendlytime.seconds",Math.round(param2));
      }
      
      public static function getLocalization(param1:IHabboLocalizationManager, param2:String, param3:int) : String
      {
         param1.registerParameter(param2,"amount","" + param3);
         return param1.getKey(param2,param2);
      }
   }
}
