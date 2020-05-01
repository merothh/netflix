.class public final Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$loadImageInTextView$4;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/XJ;->d(Lo/ErrorCodes;Lo/ImageSwitcher;Lcom/netflix/model/leafs/originals/interactive/Image;)V
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
.field final synthetic d:Lo/ImageSwitcher;

.field final synthetic e:Lcom/netflix/model/leafs/originals/interactive/Image;


# direct methods
.method public constructor <init>(Lcom/netflix/model/leafs/originals/interactive/Image;Lo/ImageSwitcher;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$loadImageInTextView$4;->e:Lcom/netflix/model/leafs/originals/interactive/Image;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$loadImageInTextView$4;->d:Lo/ImageSwitcher;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 4

    const-string v0, "result"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$loadImageInTextView$4;->e:Lcom/netflix/model/leafs/originals/interactive/Image;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Image;->sourceRect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v1, Lo/XJ;->c:Lo/XJ;

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lo/XJ;->b(Landroid/graphics/Bitmap;Lcom/netflix/model/leafs/originals/interactive/SourceRect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 160
    :goto_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 161
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$loadImageInTextView$4;->d:Lo/ImageSwitcher;

    invoke-virtual {v2}, Lo/ImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "textView.context"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 160
    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 164
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 165
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$loadImageInTextView$4;->d:Lo/ImageSwitcher;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Lo/ImageSwitcher;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lo/CompatibilityInfo;->close()V

    goto :goto_1

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$loadImageInTextView$4;->d:Lo/ImageSwitcher;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$loadImageInTextView$4$4;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$loadImageInTextView$4$4;-><init>(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    check-cast v1, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$loadImageInTextView$4;->a(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
