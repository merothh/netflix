.class public Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsCwViewGroup;
.super Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHighDensityCwViewGroup;
.source "KubrickKidsCwViewGroup.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHighDensityCwViewGroup;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected bridge synthetic createChildView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsCwViewGroup;->createChildView(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHighDensityCwView;

    move-result-object v0

    return-object v0
.end method

.method protected createChildView(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHighDensityCwView;
    .locals 1

    .prologue
    .line 17
    invoke-static {p1}, Lcom/netflix/mediaclient/util/CWTestUtil;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsCwTestView;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsCwTestView;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsCwView;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsCwView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
