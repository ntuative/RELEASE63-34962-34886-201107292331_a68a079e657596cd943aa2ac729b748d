package com.sulake.habbo.session
{
   import com.sulake.core.assets.AssetLibrary;
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.events.BadgeImageReadyEvent;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.IEventDispatcher;
   import flash.net.URLRequest;
   
   public class BadgeImageManager
   {
      
      public static var loading_icon_png:Class = BadgeImageManager_loading_icon_png;
      
      public static const const_1211:String = "group_badge";
      
      public static const const_2023:String = "normal_badge";
       
      
      private const const_2101:String = "badge_";
      
      private var _assets:IAssetLibrary;
      
      private var _events:IEventDispatcher;
      
      private var var_159:IHabboConfigurationManager;
      
      private var _localization:IHabboLocalizationManager;
      
      public function BadgeImageManager(param1:IAssetLibrary, param2:IEventDispatcher, param3:IHabboConfigurationManager, param4:IHabboLocalizationManager)
      {
         super();
         if(param1 == null)
         {
            param1 = new AssetLibrary("badge_images");
         }
         this._assets = param1;
         this._events = param2;
         this.var_159 = param3;
         this._localization = param4;
      }
      
      public function dispose() : void
      {
         this._assets = null;
      }
      
      public function getBadgeImage(param1:String, param2:String = "normal_badge") : BitmapData
      {
         var _loc3_:BitmapData = this.getBadgeImageInternal(param1,param2);
         return _loc3_ != null ? _loc3_ : this.getPlaceholder();
      }
      
      public function getBadgeImageWithInfo(param1:String) : BadgeInfo
      {
         var _loc2_:BitmapData = this.getBadgeImageInternal(param1);
         return _loc2_ != null ? new BadgeInfo(_loc2_,false) : new BadgeInfo(this.getPlaceholder(),true);
      }
      
      private function getBadgeImageInternal(param1:String, param2:String = "normal_badge") : BitmapData
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc3_:String = this.const_2101 + param1;
         Logger.log("Request badge: " + param1);
         if(this._assets.hasAsset(_loc3_))
         {
            _loc6_ = this._assets.getAssetByName(_loc3_) as BitmapDataAsset;
            return (_loc6_.content as BitmapData).clone();
         }
         switch(param2)
         {
            case const_2023:
               if(this.var_159 != null)
               {
                  _loc5_ = this.var_159.getKey("image.library.url","http://images.habbo.com/c_images/");
                  _loc5_ += "album1584/" + param1 + ".gif";
                  _loc4_ = new URLRequest(_loc5_);
               }
               break;
            case const_1211:
               if(this.var_159 != null)
               {
                  if(this.var_159 != null)
                  {
                     _loc5_ = this.var_159.getKey("group.badge.url");
                     _loc5_ = _loc5_.replace("%imagerdata%",param1);
                     _loc4_ = new URLRequest(_loc5_);
                  }
               }
         }
         if(_loc4_ != null)
         {
            _loc7_ = this._assets.loadAssetFromFile(_loc3_,_loc4_,"image/gif");
            _loc7_.addEventListener(AssetLoaderEvent.ASSET_LOADER_EVENT_COMPLETE,this.onBadgeImageReady);
         }
         return null;
      }
      
      private function getPlaceholder() : BitmapData
      {
         var _loc1_:Bitmap = Bitmap(new loading_icon_png());
         return _loc1_.bitmapData.clone();
      }
      
      private function onBadgeImageReady(param1:AssetLoaderEvent) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc2_:AssetLoaderStruct = param1.target as AssetLoaderStruct;
         if(_loc2_ != null)
         {
            if(_loc2_.assetLoader != null && _loc2_.assetLoader.content != null)
            {
               _loc3_ = _loc2_.assetLoader.content as Bitmap;
               if(_loc3_ == null)
               {
                  return;
               }
               _loc4_ = _loc2_.assetName.replace(this.const_2101,"");
               this._events.dispatchEvent(new BadgeImageReadyEvent(_loc4_,_loc3_.bitmapData.clone()));
            }
         }
      }
   }
}
