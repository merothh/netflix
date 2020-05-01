.class Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;
.super Landroid/widget/RelativeLayout;
.source "RoleDetailsFrag.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;


# instance fields
.field final EXPANDED:I

.field final UNEXPANDED:I

.field private addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

.field addToQueue:Landroid/widget/TextView;

.field currentPosition:I

.field duration:Landroid/widget/TextView;

.field expand:Landroid/view/View;

.field expandedGroup:Landroid/view/ViewGroup;

.field flipper:Landroid/widget/ViewFlipper;

.field genre:Landroid/widget/TextView;

.field isChecked:Z

.field private final rdpClose:Landroid/content/BroadcastReceiver;

.field showDP:Landroid/view/View;

.field storyArtImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field storyArtImageExpanded:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field synopsis:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

.field title:Landroid/widget/TextView;

.field titleExpanded:Landroid/widget/TextView;

.field titleImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field unExpandedGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 667
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    .line 668
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 643
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->UNEXPANDED:I

    .line 644
    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->EXPANDED:I

    .line 697
    new-instance v0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$1;-><init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->rdpClose:Landroid/content/BroadcastReceiver;

    .line 669
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->init()V

    .line 670
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 672
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    .line 673
    invoke-direct {p0, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 643
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->UNEXPANDED:I

    .line 644
    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->EXPANDED:I

    .line 697
    new-instance v0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$1;-><init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->rdpClose:Landroid/content/BroadcastReceiver;

    .line 674
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->init()V

    .line 675
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 677
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    .line 678
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 643
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->UNEXPANDED:I

    .line 644
    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->EXPANDED:I

    .line 697
    new-instance v0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$1;-><init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->rdpClose:Landroid/content/BroadcastReceiver;

    .line 679
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->init()V

    .line 680
    return-void
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 775
    const v0, 0x7f0f0338

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->synopsis:Landroid/widget/TextView;

    .line 776
    const v0, 0x7f0f0339

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->duration:Landroid/widget/TextView;

    .line 777
    const v0, 0x7f0f0335

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->titleExpanded:Landroid/widget/TextView;

    .line 778
    const v0, 0x7f0f0331

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->title:Landroid/widget/TextView;

    .line 780
    const v0, 0x7f0f033a

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->genre:Landroid/widget/TextView;

    .line 781
    const v0, 0x7f0f0323

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->storyArtImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 782
    const v0, 0x7f0f0334

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->storyArtImageExpanded:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 783
    const v0, 0x7f0f0330

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->titleImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 786
    const v0, 0x7f0f0337

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->addToQueue:Landroid/widget/TextView;

    .line 787
    const v0, 0x7f0f0332

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->expand:Landroid/view/View;

    .line 788
    const v0, 0x7f0f0336

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->showDP:Landroid/view/View;

    .line 790
    const v0, 0x7f0f0333

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->expandedGroup:Landroid/view/ViewGroup;

    .line 791
    const v0, 0x7f0f032f

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->unExpandedGroup:Landroid/view/ViewGroup;

    .line 793
    const v0, 0x7f0f032e

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->flipper:Landroid/widget/ViewFlipper;

    .line 794
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->getlayoutId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 688
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->findViews()V

    .line 689
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->setupExpand()V

    .line 690
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->initReceivers()V

    .line 691
    return-void
.end method

.method private initReceivers()V
    .locals 3

    .prologue
    .line 694
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->rdpClose:Landroid/content/BroadcastReceiver;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.RDP_CLOSE"

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 695
    return-void
.end method

.method private setupButtons(Lcom/netflix/model/branches/FalkorVideo;)V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->showDP:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->showDP:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$2;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$2;-><init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;Lcom/netflix/model/branches/FalkorVideo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    :cond_0
    return-void
.end method

.method private setupExpand()V
    .locals 2

    .prologue
    .line 751
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->expandedGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->expandedGroup:Landroid/view/ViewGroup;

    new-instance v1, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$3;-><init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->unExpandedGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 764
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->unExpandedGroup:Landroid/view/ViewGroup;

    new-instance v1, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$4;-><init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    :cond_1
    return-void
.end method

.method private updateDuration(Lcom/netflix/model/branches/FalkorVideo;)V
    .locals 3

    .prologue
    .line 903
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->duration:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->duration:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getRuntime()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/TimeUtils;->getFormattedTime(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 906
    :cond_0
    return-void
.end method

.method private updateGenre(Lcom/netflix/model/branches/FalkorVideo;)V
    .locals 2

    .prologue
    .line 915
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->genre:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->genre:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getGenres()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    :cond_0
    return-void
.end method

.method private updateImage(Lcom/netflix/model/branches/FalkorVideo;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 841
    invoke-virtual {p0, p1, v7}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->getImageUrl(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v2

    .line 842
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->storyArtImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->storyArtImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v4, "RoleDetailsFragActorRelatedView"

    .line 848
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    .line 843
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    .line 851
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->storyArtImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->adjustHeight(Landroid/widget/ImageView;)V

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->storyArtImageExpanded:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_1

    .line 855
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->storyArtImageExpanded:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v4, "RoleDetailsFragActorRelatedView"

    .line 860
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    .line 855
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    .line 863
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->storyArtImageExpanded:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->adjustHeight(Landroid/widget/ImageView;)V

    .line 864
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->storyArtImageExpanded:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const/16 v1, 0xdc

    invoke-static {v1, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setColorFilter(I)V

    .line 866
    :cond_1
    return-void
.end method

.method private updateMyListState(Lcom/netflix/model/branches/FalkorVideo;)V
    .locals 3

    .prologue
    .line 813
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 814
    if-eqz v0, :cond_0

    .line 815
    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->isInQueue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->updateMyListState(Ljava/lang/String;Z)V

    .line 817
    :cond_0
    return-void
.end method

.method private updateSynopsis(Lcom/netflix/model/branches/FalkorVideo;)V
    .locals 2

    .prologue
    .line 909
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->synopsis:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->synopsis:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getSynopsis()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 912
    :cond_0
    return-void
.end method

.method private updateTitle(Lcom/netflix/model/branches/FalkorVideo;)V
    .locals 7

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 869
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->titleExpanded:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->titleExpanded:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 874
    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getTitleImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 875
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 876
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 882
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->titleImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_2

    .line 884
    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getTitleImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 885
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->titleImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 887
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->titleImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 889
    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getTitleImgUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v4, "RoleDetailsFragActorRelatedView"

    .line 892
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    const/4 v6, 0x1

    .line 887
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    .line 895
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->titleImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->storyArtImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 900
    :cond_2
    :goto_1
    return-void

    .line 878
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 897
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->titleImage:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method addToMyListWrapper(Lcom/netflix/mediaclient/servicemgr/interface_/Video;)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;
    .locals 6

    .prologue
    .line 720
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 721
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->addToQueue:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 722
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v1

    if-nez v1, :cond_1

    .line 723
    const-string/jumbo v0, "SPY-8691 - current profile is null"

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    .line 730
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    return-object v0

    .line 725
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->addToQueue:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/ui/common/PlayContext;->NFLX_MDX_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v5}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->createMementoAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;I)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    .line 726
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->registerAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    goto :goto_0
.end method

.method protected adjustHeight(Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 832
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 833
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$1500(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 835
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    .line 836
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/kubrick/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$1500(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f100000    # 0.5625f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 838
    return-void
.end method

.method public getImageUrl(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 960
    check-cast p1, Lcom/netflix/model/branches/FalkorVideo;

    .line 961
    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getStoryUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    .prologue
    .line 966
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->NFLX_MDX_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method protected getlayoutId()I
    .locals 1

    .prologue
    .line 683
    const v0, 0x7f0300ec

    return v0
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 956
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 949
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 923
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->isChecked:Z

    .line 925
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->flipper:Landroid/widget/ViewFlipper;

    if-nez v0, :cond_1

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 929
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 930
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 932
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 933
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 935
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 936
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 937
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 938
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0

    .line 940
    :cond_2
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v2

    if-eqz v2, :cond_0

    .line 941
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 942
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 943
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->flipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0
.end method

.method public toggle()V
    .locals 0

    .prologue
    .line 953
    return-void
.end method

.method public update(Ljava/lang/Object;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 2

    .prologue
    .line 800
    check-cast p1, Lcom/netflix/model/branches/FalkorVideo;

    .line 802
    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->currentPosition:I

    .line 803
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    if-nez v0, :cond_0

    .line 804
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->addToMyListWrapper(Lcom/netflix/mediaclient/servicemgr/interface_/Video;)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    .line 805
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$1400(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;Lcom/netflix/model/branches/FalkorVideo;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    .line 807
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->updateMyListState(Lcom/netflix/model/branches/FalkorVideo;)V

    .line 808
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->updateDetails(Lcom/netflix/model/branches/FalkorVideo;)V

    .line 809
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->setupButtons(Lcom/netflix/model/branches/FalkorVideo;)V

    .line 810
    return-void
.end method

.method updateDetails(Lcom/netflix/model/branches/FalkorVideo;)V
    .locals 0

    .prologue
    .line 820
    if-nez p1, :cond_0

    .line 829
    :goto_0
    return-void

    .line 824
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->updateGenre(Lcom/netflix/model/branches/FalkorVideo;)V

    .line 825
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->updateSynopsis(Lcom/netflix/model/branches/FalkorVideo;)V

    .line 826
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->updateDuration(Lcom/netflix/model/branches/FalkorVideo;)V

    .line 827
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->updateImage(Lcom/netflix/model/branches/FalkorVideo;)V

    .line 828
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->updateTitle(Lcom/netflix/model/branches/FalkorVideo;)V

    goto :goto_0
.end method
