.class public Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsTopTenVideoViewGroup;
.super Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickLoMoViewGroup;
.source "KubrickKidsTopTenVideoViewGroup.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickLoMoViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createChildView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsTopTenVideoViewGroup;->createChildView(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;

    move-result-object v0

    return-object v0
.end method

.method protected createChildView(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsTopTenVideoView;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsTopTenVideoView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getLomoWidthType()Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;->KUBRICK_KIDS_TOP_TEN_ROW:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    return-object v0
.end method
