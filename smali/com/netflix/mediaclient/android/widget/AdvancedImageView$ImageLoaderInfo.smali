.class public final Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;
.super Ljava/lang/Object;
.source "AdvancedImageView.java"


# instance fields
.field public final bitmapConfig:Landroid/graphics/Bitmap$Config;

.field public final imageUrl:Ljava/lang/String;

.field public final imgViewConfig:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Landroid/graphics/Bitmap$Config;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;->imageUrl:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;->imgViewConfig:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    .line 30
    iput-object p3, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 31
    return-void
.end method
