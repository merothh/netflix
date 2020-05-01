.class public Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;
.super Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
.source "KubrickVideoView.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/android/widget/AdvancedImageView;",
        "Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KubrickVideoView"


# instance fields
.field protected clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

.field protected playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->init()V

    .line 43
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->setFocusable(Z)V

    .line 48
    const v0, 0x7f0201e6

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->setBackgroundResource(I)V

    .line 50
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    new-instance v1, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v1, v0, p0}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    .line 53
    return-void
.end method


# virtual methods
.method public getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    if-eqz p2, :cond_0

    .line 66
    const/4 v0, 0x2

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;

    invoke-static {v1, p1, v2, v0}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getLomoVideoViewImageUrl(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImageUrl(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->clear(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V

    .line 58
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->remove(Landroid/view/View;)V

    .line 60
    return-void
.end method

.method public update(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 8

    .prologue
    const/4 v1, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 73
    invoke-virtual {p0, p1, p5}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;Z)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string/jumbo v0, "KubrickVideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Updating for video: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", imgUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->setVisibility(I)V

    .line 79
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-direct {v0, p2, p3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    invoke-virtual {v0, p0, p1, v3}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->update(Landroid/view/View;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/android/widget/PressedStateHandler;)V

    .line 82
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->setVisibility(I)V

    .line 83
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 85
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    if-eqz p4, :cond_1

    move v7, v6

    :cond_1
    move-object v1, p0

    .line 83
    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 87
    return-void

    :cond_2
    move v0, v7

    .line 77
    goto :goto_0

    :cond_3
    move v1, v7

    .line 82
    goto :goto_1
.end method

.method public bridge synthetic update(Ljava/lang/Object;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 6

    .prologue
    .line 24
    move-object v1, p1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V

    return-void
.end method
