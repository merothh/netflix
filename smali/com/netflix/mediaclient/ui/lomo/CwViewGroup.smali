.class public Lcom/netflix/mediaclient/ui/lomo/CwViewGroup;
.super Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;
.source "CwViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
        "Lcom/netflix/mediaclient/ui/lomo/CwView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;-><init>(Landroid/content/Context;Z)V

    .line 14
    return-void
.end method


# virtual methods
.method protected bridge synthetic createChildView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/CwViewGroup;->createChildView(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/lomo/CwView;

    move-result-object v0

    return-object v0
.end method

.method protected createChildView(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/lomo/CwView;
    .locals 1

    .prologue
    .line 18
    invoke-static {p1}, Lcom/netflix/mediaclient/util/CWTestUtil;->createCWViewForTest(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/lomo/CwView;

    move-result-object v0

    return-object v0
.end method

.method protected shouldApplyPaddingToChildren()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic updateViewIds(Landroid/view/View;III)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lcom/netflix/mediaclient/ui/lomo/CwView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/lomo/CwViewGroup;->updateViewIds(Lcom/netflix/mediaclient/ui/lomo/CwView;III)V

    return-void
.end method

.method protected updateViewIds(Lcom/netflix/mediaclient/ui/lomo/CwView;III)V
    .locals 4

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/CWTestUtil;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 26
    :goto_0
    add-int v1, p3, p4

    mul-int/2addr v0, v1

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->computeViewId(II)I

    move-result v0

    .line 27
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    const-string/jumbo v1, "VideoViewGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting base view id to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->setId(I)V

    .line 31
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/lomo/CwView;->setInfoViewId(I)V

    .line 32
    return-void

    .line 25
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method
