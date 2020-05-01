.class public Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsTopTenVideoView;
.super Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;
.source "KubrickKidsTopTenVideoView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public update(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 34
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-direct {v0, p2, p3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsTopTenVideoView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 36
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getHorzDispUrl()Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsTopTenVideoView;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsTopTenVideoView;->clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsTopTenVideoView;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    invoke-virtual {v0, p0, p1, v3}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->update(Landroid/view/View;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/android/widget/PressedStateHandler;)V

    .line 44
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsTopTenVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 46
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getTitle()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->LIGHT:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    if-eqz p4, :cond_1

    move v7, v6

    :goto_1
    move-object v1, p0

    .line 44
    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 48
    return-void

    :cond_0
    move v0, v1

    .line 37
    goto :goto_0

    :cond_1
    move v7, v1

    .line 46
    goto :goto_1
.end method

.method public bridge synthetic update(Ljava/lang/Object;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 6

    .prologue
    .line 17
    move-object v1, p1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsTopTenVideoView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V

    return-void
.end method
