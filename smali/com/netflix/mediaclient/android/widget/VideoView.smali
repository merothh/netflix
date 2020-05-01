.class public Lcom/netflix/mediaclient/android/widget/VideoView;
.super Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
.source "VideoView.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/android/widget/AdvancedImageView;",
        "Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
        ">;"
    }
.end annotation


# instance fields
.field protected clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

.field private isHorizontal:Z

.field protected playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/VideoView;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/VideoView;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/VideoView;->init()V

    .line 39
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/VideoView;->setFocusable(Z)V

    .line 44
    const v0, 0x7f0201e6

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/VideoView;->setBackgroundResource(I)V

    .line 46
    new-instance v1, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v1, v0, p0}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    .line 47
    return-void
.end method


# virtual methods
.method public getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    iget-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->isHorizontal:Z

    if-eqz v1, :cond_0

    .line 86
    const/4 v0, 0x1

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netflix/mediaclient/android/widget/VideoView;

    invoke-static {v1, p1, v2, v0}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getLomoVideoViewImageUrl(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImageUrl(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/VideoView;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->clear(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V

    .line 60
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/VideoView;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->remove(Landroid/view/View;)V

    .line 62
    return-void
.end method

.method public setClickListener(Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    .line 51
    return-void
.end method

.method public setIsHorizontal(Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->isHorizontal:Z

    .line 55
    return-void
.end method

.method public update(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 66
    if-eqz p2, :cond_0

    .line 67
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-direct {v0, p2, p3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 72
    :cond_0
    invoke-virtual {p0, p1, p5}, Lcom/netflix/mediaclient/android/widget/VideoView;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Z)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/VideoView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->clicker:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/VideoView;->pressedHandler:Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    invoke-virtual {v0, p0, p1, v3}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->update(Landroid/view/View;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/android/widget/PressedStateHandler;)V

    .line 76
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 78
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    if-eqz p4, :cond_2

    move v7, v6

    :goto_1
    move-object v1, p0

    .line 76
    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 80
    return-void

    :cond_1
    move v0, v1

    .line 73
    goto :goto_0

    :cond_2
    move v7, v1

    .line 78
    goto :goto_1
.end method

.method public bridge synthetic update(Ljava/lang/Object;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 6

    .prologue
    .line 19
    move-object v1, p1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/android/widget/VideoView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V

    return-void
.end method
