.class public Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickLoMoViewGroup;
.super Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;
.source "KubrickLoMoViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;",
        "Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;-><init>(Landroid/content/Context;Z)V

    .line 17
    return-void
.end method


# virtual methods
.method protected bridge synthetic createChildView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickLoMoViewGroup;->createChildView(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;

    move-result-object v0

    return-object v0
.end method

.method protected createChildView(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public init(I)V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->init(I)V

    .line 23
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickLoMoViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setPaddingBottom(Landroid/view/View;I)V

    .line 26
    :cond_0
    return-void
.end method

.method protected shouldApplyPaddingToChildren()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic updateViewIds(Landroid/view/View;III)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickLoMoViewGroup;->updateViewIds(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;III)V

    return-void
.end method

.method protected updateViewIds(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;III)V
    .locals 4

    .prologue
    .line 35
    add-int v0, p3, p4

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->computeViewId(II)I

    move-result v0

    .line 36
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
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

    .line 39
    :cond_0
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->setId(I)V

    .line 40
    return-void
.end method
