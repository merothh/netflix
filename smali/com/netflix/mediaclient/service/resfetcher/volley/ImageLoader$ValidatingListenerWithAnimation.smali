.class Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListenerWithAnimation;
.super Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;
.source "ImageLoader.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListenerWithAnimation;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    .line 461
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;-><init>(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;)V

    .line 462
    return-void
.end method


# virtual methods
.method protected updateView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 466
    if-nez p2, :cond_0

    .line 470
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListenerWithAnimation;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->access$200(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Landroid/widget/ImageView;)V

    .line 477
    :goto_0
    return-void

    .line 475
    :cond_0
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->setImageBitmapWithPropertyFade(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
