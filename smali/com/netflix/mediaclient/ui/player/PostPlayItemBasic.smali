.class public Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;
.super Lcom/netflix/mediaclient/ui/player/PostPlayItemView;
.source "PostPlayItemBasic.java"


# instance fields
.field private displayArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private playButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected findViews()V
    .locals 1

    .prologue
    .line 28
    const v0, 0x7f0f02c3

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->displayArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 29
    const v0, 0x7f0f02b0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->playButton:Landroid/widget/ImageView;

    .line 30
    return-void
.end method

.method protected startTimer(I)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method protected stopTimer()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public updateViews(Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Landroid/view/View$OnClickListener;)V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 38
    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getDisplayArtAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getDisplayArtAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAsset;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-static {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->displayArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 42
    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getDisplayArtAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/model/leafs/PostPlayAsset;->getUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->merchStill:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->LIGHT_NO_PLACEHOLDER:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move v7, v6

    .line 40
    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 50
    :cond_0
    if-eqz p5, :cond_2

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->displayArt:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, p5}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "recommendations"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemBasic;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
