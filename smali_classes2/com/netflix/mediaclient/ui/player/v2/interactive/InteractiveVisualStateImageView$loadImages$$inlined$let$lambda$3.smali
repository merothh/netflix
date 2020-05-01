.class public final Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$$inlined$let$lambda$3;
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

.field final synthetic b:F

.field final synthetic c:Lcom/netflix/model/leafs/originals/interactive/SourceRect;

.field final synthetic d:Lcom/netflix/model/leafs/originals/interactive/Image;

.field final synthetic e:Lcom/netflix/model/leafs/originals/interactive/SourceRect;

.field final synthetic f:Lo/ErrorCodes;


# direct methods
.method public constructor <init>(Lcom/netflix/model/leafs/originals/interactive/SourceRect;Lo/Vp;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/SourceRect;FLo/ErrorCodes;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$$inlined$let$lambda$3;->e:Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$$inlined$let$lambda$3;->a:Lo/Vp;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$$inlined$let$lambda$3;->d:Lcom/netflix/model/leafs/originals/interactive/Image;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$$inlined$let$lambda$3;->c:Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    iput p5, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$$inlined$let$lambda$3;->b:F

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$$inlined$let$lambda$3;->f:Lo/ErrorCodes;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 5

    const-string v0, "result"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$$inlined$let$lambda$3;->e:Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lo/XJ;->c:Lo/XJ;

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$$inlined$let$lambda$3;->e:Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    invoke-virtual {v0, v1, v2}, Lo/XJ;->b(Landroid/graphics/Bitmap;Lcom/netflix/model/leafs/originals/interactive/SourceRect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 137
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$$inlined$let$lambda$3;->a:Lo/Vp;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Lo/Vp;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lo/Vp;->setSelected(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 138
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lo/CompatibilityInfo;->close()V

    goto :goto_1

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$$inlined$let$lambda$3;->a:Lo/Vp;

    invoke-static {v0}, Lo/Vp;->b(Lo/Vp;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$$inlined$let$lambda$3;->a(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
