.class public Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroViewGroup;
.super Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;
.source "KubrickHeroViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;",
        "Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;-><init>(Landroid/content/Context;Z)V

    .line 15
    return-void
.end method


# virtual methods
.method protected bridge synthetic createChildView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroViewGroup;->createChildView(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;

    move-result-object v0

    return-object v0
.end method

.method protected createChildView(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected shouldApplyPaddingToChildren()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic updateViewIds(Landroid/view/View;III)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroViewGroup;->updateViewIds(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;III)V

    return-void
.end method

.method protected updateViewIds(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;III)V
    .locals 4

    .prologue
    .line 24
    add-int v0, p3, p4

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->computeViewId(II)I

    move-result v0

    .line 25
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
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

    .line 28
    :cond_0
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->setId(I)V

    .line 29
    return-void
.end method
