.class Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListenerWithPlaceholder;
.super Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;
.source "ImageLoader.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListenerWithPlaceholder;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    .line 483
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListener;-><init>(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;)V

    .line 484
    return-void
.end method


# virtual methods
.method protected updateView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 488
    if-nez p2, :cond_0

    .line 492
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListenerWithPlaceholder;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ValidatingListenerWithPlaceholder;->staticImgConfig:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->getPlaceholderResId()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->access$000(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Landroid/widget/ImageView;I)V

    .line 499
    :goto_0
    return-void

    .line 497
    :cond_0
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->setImageBitmapWithPropertyFade(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
