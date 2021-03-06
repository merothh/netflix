.class public Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;
.super Lcom/netflix/mediaclient/ui/player/PostPlayBackground;
.source "PostPlayBackgroundMetadata.java"


# instance fields
.field private backgound:Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;

.field private logo:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private metadata:Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayBackground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PostPlayBackground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected findViews()V
    .locals 1

    const v0, 0x7f0f02aa

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->backgound:Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;

    const v0, 0x7f0f02ca

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->metadata:Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;

    const v0, 0x7f0f02af

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->logo:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    return-void
.end method

.method public startBackgroundAutoPan()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->backgound:Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->backgound:Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->startBackgroundAutoPan()V

    :cond_0
    return-void
.end method

.method protected startTimer()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->metadata:Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->metadata:Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->startTimer()V

    :cond_0
    return-void
.end method

.method protected stopTimer()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->metadata:Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->metadata:Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->stopTimer()V

    :cond_0
    return-void
.end method

.method public updateViews(Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V
    .locals 8

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->backgound:Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundBasic;->updateViews(Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->metadata:Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/player/PostPlayMetadata;->updateViews(Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getLogoAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getLogoAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAsset;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayBackgroundMetadata;->logo:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getLogoAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/model/leafs/PostPlayAsset;->getUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->merchStill:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getAncestorTitle()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK_NO_PLACEHOLDER:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move v7, v6

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    :cond_0
    return-void
.end method
