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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;->imageUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;->imgViewConfig:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    iput-object p3, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method
