.class public final Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$loadImage$4$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$loadImage$4;->d(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;


# direct methods
.method constructor <init>(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$loadImage$4$1;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SpriteImageLoader$loadImage$4$1;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/CompatibilityInfo;->close()V

    :cond_0
    return-void
.end method
