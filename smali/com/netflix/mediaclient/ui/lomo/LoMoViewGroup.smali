.class public Lcom/netflix/mediaclient/ui/lomo/LoMoViewGroup;
.super Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;
.source "LoMoViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
        "Lcom/netflix/mediaclient/android/widget/VideoView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createChildView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewGroup;->createChildView(Landroid/content/Context;)Lcom/netflix/mediaclient/android/widget/VideoView;

    move-result-object v0

    return-object v0
.end method

.method protected createChildView(Landroid/content/Context;)Lcom/netflix/mediaclient/android/widget/VideoView;
    .locals 2

    new-instance v1, Lcom/netflix/mediaclient/android/widget/VideoView;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/android/widget/VideoView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->useLolomoBoxArt()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/VideoView;->setIsHorizontal(Z)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/VideoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldApplyPaddingToChildren()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic updateViewIds(Landroid/view/View;III)V
    .locals 0

    check-cast p1, Lcom/netflix/mediaclient/android/widget/VideoView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewGroup;->updateViewIds(Lcom/netflix/mediaclient/android/widget/VideoView;III)V

    return-void
.end method

.method protected updateViewIds(Lcom/netflix/mediaclient/android/widget/VideoView;III)V
    .locals 4

    add-int v0, p3, p4

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->computeViewId(II)I

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "VideoViewGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting view id to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/VideoView;->setId(I)V

    return-void
.end method
