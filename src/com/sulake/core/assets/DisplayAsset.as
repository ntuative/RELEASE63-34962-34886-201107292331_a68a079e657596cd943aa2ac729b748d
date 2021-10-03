package com.sulake.core.assets
{
   import flash.display.DisplayObject;
   
   public class DisplayAsset implements IAsset
   {
       
      
      protected var var_1151:String;
      
      protected var var_209:DisplayObject;
      
      protected var _disposed:Boolean = false;
      
      protected var var_946:AssetTypeDeclaration;
      
      public function DisplayAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_946 = param1;
         this.var_1151 = param2;
      }
      
      public function get url() : String
      {
         return this.var_1151;
      }
      
      public function get content() : Object
      {
         return this.var_209;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_946;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_209.loaderInfo != null)
            {
               if(this.var_209.loaderInfo.loader != null)
               {
                  this.var_209.loaderInfo.loader.unload();
               }
            }
            this.var_209 = null;
            this.var_946 = null;
            this._disposed = true;
            this.var_1151 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is DisplayObject)
         {
            this.var_209 = param1 as DisplayObject;
            if(this.var_209 != null)
            {
               return;
            }
            throw new Error("Failed to convert DisplayObject to DisplayAsset!");
         }
         if(param1 is DisplayAsset)
         {
            this.var_209 = DisplayAsset(param1).var_209;
            this.var_946 = DisplayAsset(param1).var_946;
            if(this.var_209 == null)
            {
               throw new Error("Failed to read content from DisplayAsset!");
            }
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is DisplayAsset)
         {
            this.var_209 = DisplayAsset(param1).var_209;
            this.var_946 = DisplayAsset(param1).var_946;
            return;
         }
         throw new Error("Provided asset should be of type DisplayAsset!");
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
