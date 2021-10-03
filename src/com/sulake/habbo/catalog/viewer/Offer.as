package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_2031:String = "pricing_model_unknown";
      
      public static const const_455:String = "pricing_model_single";
      
      public static const const_426:String = "pricing_model_multi";
      
      public static const const_610:String = "pricing_model_bundle";
      
      public static const const_2062:String = "price_type_none";
      
      public static const const_828:String = "price_type_credits";
      
      public static const const_1391:String = "price_type_activitypoints";
      
      public static const const_1298:String = "price_type_credits_and_activitypoints";
       
      
      private var var_835:String;
      
      private var var_1289:String;
      
      private var var_1329:int;
      
      private var var_1987:String;
      
      private var var_1287:int;
      
      private var var_1288:int;
      
      private var var_1986:int;
      
      private var var_243:ICatalogPage;
      
      private var var_684:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_1925:int = 0;
      
      private var var_2716:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:ICatalogPage)
      {
         super();
         this.var_1329 = param1;
         this.var_1987 = param2;
         this.var_1287 = param3;
         this.var_1288 = param4;
         this.var_1986 = param5;
         this.var_243 = param8;
         this.var_1925 = param6;
         this.analyzePricingModel(param7);
         this.analyzePriceType();
         this.createProductContainer(param7);
      }
      
      public function get clubLevel() : int
      {
         return this.var_1925;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_243;
      }
      
      public function get offerId() : int
      {
         return this.var_1329;
      }
      
      public function get localizationId() : String
      {
         return this.var_1987;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1287;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1288;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1986;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_684;
      }
      
      public function get pricingModel() : String
      {
         return this.var_835;
      }
      
      public function get priceType() : String
      {
         return this.var_1289;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2716;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2716 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1329 = 0;
         this.var_1987 = "";
         this.var_1287 = 0;
         this.var_1288 = 0;
         this.var_1986 = 0;
         this.var_243 = null;
         if(this.var_684 != null)
         {
            this.var_684.dispose();
            this.var_684 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_835)
         {
            case const_455:
               this.var_684 = new SingleProductContainer(this,param1);
               break;
            case const_426:
               this.var_684 = new MultiProductContainer(this,param1);
               break;
            case const_610:
               this.var_684 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_835);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_835 = const_455;
            }
            else
            {
               this.var_835 = const_426;
            }
         }
         else if(param1.length > 1)
         {
            this.var_835 = const_610;
         }
         else
         {
            this.var_835 = const_2031;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1287 > 0 && this.var_1288 > 0)
         {
            this.var_1289 = const_1298;
         }
         else if(this.var_1287 > 0)
         {
            this.var_1289 = const_828;
         }
         else if(this.var_1288 > 0)
         {
            this.var_1289 = const_1391;
         }
         else
         {
            this.var_1289 = const_2062;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_243.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_684.products)
         {
            _loc4_ = this.var_243.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,this.clubLevel,_loc1_,this.page);
      }
   }
}
