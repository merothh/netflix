.class public final Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$loadTimer$5;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/XJ;->e(Lo/ErrorCodes;Lcom/netflix/model/leafs/originals/interactive/Image;Landroid/view/ViewGroup;I)V
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
.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/netflix/model/leafs/originals/interactive/Image;

.field final synthetic e:I


# direct methods
.method public constructor <init>(ILandroid/view/ViewGroup;Lcom/netflix/model/leafs/originals/interactive/Image;)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$loadTimer$5;->e:I

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$loadTimer$5;->b:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$loadTimer$5;->c:Lcom/netflix/model/leafs/originals/interactive/Image;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 7

    const-string v0, "result"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$loadTimer$5;->e:I

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$loadTimer$5;->c:Lcom/netflix/model/leafs/originals/interactive/Image;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Image;->sourceRect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 250
    sget-object v2, Lo/XJ;->c:Lo/XJ;

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lo/XJ;->b(Landroid/graphics/Bitmap;Lcom/netflix/model/leafs/originals/interactive/SourceRect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 251
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$loadTimer$5;->b:Landroid/view/ViewGroup;

    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->tg:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/GridView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lo/GridView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 252
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_7

    .line 254
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lo/CompatibilityInfo;->close()V

    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/2addr v0, v2

    .line 235
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 236
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$loadTimer$5;->b:Landroid/view/ViewGroup;

    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->ti:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/GridView;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 237
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v4

    add-int/lit8 v5, v0, -0x5

    invoke-static {v4, v3, v3, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 236
    invoke-virtual {v2, v4}, Lo/GridView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 239
    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$loadTimer$5;->b:Landroid/view/ViewGroup;

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->tg:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/GridView;

    if-eqz v2, :cond_4

    .line 240
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v4

    add-int/lit8 v5, v0, -0x5

    const/16 v6, 0xa

    invoke-static {v4, v5, v3, v6, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 239
    invoke-virtual {v2, v4}, Lo/GridView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 242
    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$loadTimer$5;->b:Landroid/view/ViewGroup;

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->tm:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/GridView;

    if-eqz v2, :cond_5

    .line 243
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v4

    add-int/lit8 v5, v0, 0x5

    add-int/lit8 v0, v0, -0x5

    invoke-static {v4, v5, v3, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 242
    invoke-virtual {v2, v0}, Lo/GridView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 245
    :cond_5
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lo/CompatibilityInfo;->close()V

    goto :goto_0

    .line 231
    :cond_6
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lo/CompatibilityInfo;->close()V

    :cond_7
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$loadTimer$5;->b(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
