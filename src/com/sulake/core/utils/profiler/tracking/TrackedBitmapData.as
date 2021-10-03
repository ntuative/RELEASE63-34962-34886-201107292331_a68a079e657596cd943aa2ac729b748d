package com.sulake.core.utils.profiler.tracking
{
   import flash.display.BitmapData;
   
   public class TrackedBitmapData extends BitmapData
   {
      
      public static const const_2327:int = 16777215;
      
      public static const const_1304:int = 8191;
      
      public static const const_1219:int = 8191;
      
      public static const const_2336:int = 1;
      
      public static const const_1208:int = 1;
      
      public static const const_1368:int = 1;
      
      private static var var_545:uint = 0;
      
      private static var var_546:uint = 0;
       
      
      private var _owner:Object;
      
      private var _disposed:Boolean = false;
      
      public function TrackedBitmapData(param1:*, param2:int, param3:int, param4:Boolean = true, param5:uint = 4.294967295E9)
      {
         if(param2 > const_1304)
         {
            param2 = const_1304;
         }
         else if(param2 < const_1208)
         {
            param2 = const_1208;
         }
         if(param3 > const_1219)
         {
            param3 = const_1219;
         }
         else if(param3 < const_1368)
         {
            param3 = const_1368;
         }
         super(param2,param3,param4,param5);
         ++var_545;
         var_546 += param2 * param3 * 4;
         this._owner = param1;
      }
      
      public static function get numInstances() : uint
      {
         return var_545;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_546;
      }
      
      override public function dispose() : void
      {
         if(!this._disposed)
         {
            var_546 -= width * height * 4;
            --var_545;
            this._disposed = true;
            this._owner = null;
            super.dispose();
         }
      }
   }
}
