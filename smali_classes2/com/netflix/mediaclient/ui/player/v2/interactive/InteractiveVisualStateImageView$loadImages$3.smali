.class public final Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vp;->b(Lo/ErrorCodes;Lcom/netflix/model/leafs/originals/interactive/SourceRect;FLcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/Image;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Vp;

.field final synthetic b:Lcom/netflix/model/leafs/originals/interactive/Image;

.field final synthetic c:Lcom/netflix/model/leafs/originals/interactive/Image;

.field final synthetic d:Lcom/netflix/model/leafs/originals/interactive/Image;


# direct methods
.method public constructor <init>(Lo/Vp;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/Image;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$3;->a:Lo/Vp;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$3;->b:Lcom/netflix/model/leafs/originals/interactive/Image;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$3;->c:Lcom/netflix/model/leafs/originals/interactive/Image;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$3;->d:Lcom/netflix/model/leafs/originals/interactive/Image;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 8

    const-string v0, "result"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$3;->b:Lcom/netflix/model/leafs/originals/interactive/Image;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Image;->sourceRect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v0

    const-string v1, "it"

    const-string v2, "context"

    if-eqz v0, :cond_0

    .line 59
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$3;->a:Lo/Vp;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Lo/Vp;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lo/XJ;->c:Lo/XJ;

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v0}, Lo/XJ;->b(Landroid/graphics/Bitmap;Lcom/netflix/model/leafs/originals/interactive/SourceRect;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Lo/Vp;->setDefault(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$3;->a:Lo/Vp;

    invoke-virtual {v0}, Lo/Vp;->m()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Lo/Vp;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$3;->c:Lcom/netflix/model/leafs/originals/interactive/Image;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Image;->sourceRect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$3;->a:Lo/Vp;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Lo/Vp;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lo/XJ;->c:Lo/XJ;

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v0}, Lo/XJ;->b(Landroid/graphics/Bitmap;Lcom/netflix/model/leafs/originals/interactive/SourceRect;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Lo/Vp;->setSelected(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$3;->d:Lcom/netflix/model/leafs/originals/interactive/Image;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Image;->sourceRect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 66
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$3;->a:Lo/Vp;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Lo/Vp;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v5, Lo/XJ;->c:Lo/XJ;

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v0}, Lo/XJ;->b(Landroid/graphics/Bitmap;Lcom/netflix/model/leafs/originals/interactive/SourceRect;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v4, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Lo/Vp;->setFocused(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 70
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$3;->a:Lo/Vp;

    invoke-virtual {v1}, Lo/Vp;->m()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_0
    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$3;->a:Lo/Vp;

    invoke-virtual {v1}, Lo/Vp;->o()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$3;->a:Lo/Vp;

    invoke-virtual {v1}, Lo/Vp;->n()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_5
    invoke-static {v0, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 71
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lo/CompatibilityInfo;->close()V

    goto :goto_2

    .line 73
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$3;->a:Lo/Vp;

    invoke-static {v0}, Lo/Vp;->b(Lo/Vp;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$3;->a(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
