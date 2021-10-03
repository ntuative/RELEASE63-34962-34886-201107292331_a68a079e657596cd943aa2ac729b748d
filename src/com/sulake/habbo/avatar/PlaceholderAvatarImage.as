package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_848:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1157)
         {
            _structure = null;
            _assets = null;
            var_301 = null;
            var_317 = null;
            var_666 = null;
            var_613 = null;
            var_366 = null;
            if(!var_1429 && var_49)
            {
               var_49.dispose();
            }
            var_49 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_779 = null;
            var_1157 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_848[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_848[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_430:
               switch(_loc3_)
               {
                  case AvatarAction.const_770:
                  case AvatarAction.const_559:
                  case AvatarAction.const_459:
                  case AvatarAction.const_795:
                  case AvatarAction.const_462:
                  case AvatarAction.const_822:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_353:
            case AvatarAction.const_149:
            case AvatarAction.const_301:
            case AvatarAction.const_899:
            case AvatarAction.const_809:
            case AvatarAction.const_870:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
