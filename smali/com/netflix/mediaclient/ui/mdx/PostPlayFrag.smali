.class public Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source "PostPlayFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;


# static fields
.field public static final MINI_PLAYER_POST_PLAY_ACTION_HIDE:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MINI_PLAYER_POST_HIDE"

.field public static final MINI_PLAYER_POST_PLAY_ACTION_TITLE_END:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MINI_PLAYER_POST_PLAY_TITLE_END"

.field public static final MINI_PLAYER_POST_PLAY_ACTION_TITLE_NEXT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.MINI_PLAYER_POST_PLAY_TITLE_NEXT"

.field private static final TAG:Ljava/lang/String; = "PostPlayFrag"


# instance fields
.field private backToBrowsingButton:Landroid/widget/TextView;

.field private countdown:Landroid/widget/TextView;

.field private countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

.field private episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

.field private episodeTitle:Landroid/widget/TextView;

.field private episodesButton:Landroid/widget/ImageView;

.field private final miniPlayerPostPlay:Landroid/content/BroadcastReceiver;

.field private playButton:Landroid/widget/Button;

.field private postPlayForNextContainer:Landroid/view/ViewGroup;

.field private postPlayForTitleEndContainer:Landroid/view/ViewGroup;

.field private rating:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

.field private final ratingsUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private showTitle:Landroid/widget/TextView;

.field private stopButton:Landroid/widget/ImageView;

.field private synopsis:Landroid/widget/TextView;

.field private targetName:Landroid/widget/TextView;

.field private video:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$6;-><init>(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->miniPlayerPostPlay:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$7;-><init>(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->ratingsUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->handlePlayNow()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->video:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->hidePostPlayViews()V

    return-void
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    return-object p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->showPostPlayViewsForNext()V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->showPostPlayViewsForTitleEnd()V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->showTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->rating:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    return-object v0
.end method

.method private createIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->isMdxAgentAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getCurrentTarget()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$Utils;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findViews(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0f02b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->episodeTitle:Landroid/widget/TextView;

    const v0, 0x7f0f02b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->showTitle:Landroid/widget/TextView;

    const v0, 0x7f0f02b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->targetName:Landroid/widget/TextView;

    const v0, 0x7f0f02b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->countdown:Landroid/widget/TextView;

    const v0, 0x7f0f02ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->synopsis:Landroid/widget/TextView;

    const v0, 0x7f0f02bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->playButton:Landroid/widget/Button;

    const v0, 0x7f0f02bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->stopButton:Landroid/widget/ImageView;

    const v0, 0x7f0f02bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->episodesButton:Landroid/widget/ImageView;

    const v0, 0x7f0f02b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->backToBrowsingButton:Landroid/widget/TextView;

    const v0, 0x7f0f02b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->postPlayForTitleEndContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0f02b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->postPlayForNextContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0f02b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->rating:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    return-void
.end method

.method private handlePlayNow()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlayContext;->DFLT_MDX_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$Utils;->playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;Z)Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->sendShowAndDisableIntent(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private hidePostPlayViews()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->postPlayForTitleEndContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->postPlayForTitleEndContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->postPlayForNextContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->postPlayForNextContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private init()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->setMDXTargetName()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->setClickListeners()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->initReceivers()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->setupCountdownTimer()V

    return-void
.end method

.method private initReceivers()V
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->miniPlayerPostPlay:Landroid/content/BroadcastReceiver;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MINI_PLAYER_POST_PLAY_TITLE_END"

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->miniPlayerPostPlay:Landroid/content/BroadcastReceiver;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MINI_PLAYER_POST_PLAY_TITLE_NEXT"

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->miniPlayerPostPlay:Landroid/content/BroadcastReceiver;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MINI_PLAYER_POST_HIDE"

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->ratingsUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v2, "com.netflix.falkor.ACTION_NOTIFY_OF_RATINGS_CHANGE"

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    return-void
.end method

.method private setClickListeners()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->playButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->playButton:Landroid/widget/Button;

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$1;-><init>(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->stopButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->stopButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$2;-><init>(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->backToBrowsingButton:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->backToBrowsingButton:Landroid/widget/TextView;

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$3;-><init>(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->episodesButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->episodesButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$4;-><init>(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method private setMDXTargetName()V
    .locals 5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->targetName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->isMdxAgentAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->getCurrentDeviceFriendlyName(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->targetName:Landroid/widget/TextView;

    const v2, 0x7f0801d5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setupCountdownTimer()V
    .locals 3

    new-instance v0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$5;-><init>(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->setOnTick(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->setTime(I)V

    return-void
.end method

.method private showPostPlayViewsForNext()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->postPlayForNextContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->postPlayForNextContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.service.ACTION_EXPAND_MDX_MINI_PLAYER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->setTime(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->startTimer()V

    :cond_1
    return-void
.end method

.method private showPostPlayViewsForTitleEnd()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->postPlayForTitleEndContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->postPlayForTitleEndContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private stopAllNotifications()V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->stopAllNotifications()V

    :cond_0
    return-void
.end method

.method private updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->episodeTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->episodeTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080172

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getEpisodeNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->synopsis:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->synopsis:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getSynopsis()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->setMDXTargetName()V

    return-void
.end method

.method private updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->showTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->showTitle:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->rating:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->rating:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->setNumStars(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->rating:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    invoke-virtual {v0, p0, p1}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->update(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public destroyed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->NFLX_MDX_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->video:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->video:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    return-object v0
.end method

.method public handleStop()V
    .locals 3

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->isMdxAgentAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->stopAllNotifications()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_STOP"

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->hidePostPlayViews()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->stopTimer()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->countdown:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->targetName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowingForNext()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->postPlayForNextContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingTitleEnd()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->postPlayForTitleEndContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string/jumbo v0, "PostPlayFrag"

    const-string/jumbo v1, "Creating new frag view..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0300d5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->findViews(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->init()V

    return-object v0
.end method

.method public refreshTimerText()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->getTime()I

    move-result v1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->getTime()I

    move-result v0

    if-le v0, v3, :cond_2

    const v0, 0x7f0801d8

    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->countdown:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->countdown:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v0, v3}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->countdown:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->targetName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0801d6

    goto :goto_1
.end method

.method public setVideo(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->video:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-void
.end method
