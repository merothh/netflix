.class public Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source "MiniPlayerControlsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;
.implements Lcom/netflix/mediaclient/ui/details/IHandleBackPress;
.implements Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;
.implements Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;
.implements Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;


# static fields
.field private static final DISABLED:Z = false

.field private static final EXTRA_SAVED_POSITION_SECONDS:Ljava/lang/String; = "saved_position_seconds"

.field public static final FORCE_SHOW_WITH_DUMMY_DATA:Z = false

.field private static final NOTIFY_SHOW_AND_DISABLE_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.ui.mdx.NOTIFY_SHOW_AND_DISABLE_INTENT"

.field private static final SEEKBAR_UPDATE_DELAY_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "MdxMiniPlayerFrag"

.field private static final state:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;


# instance fields
.field private activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

.field private draggingInProgress:Z

.field private dummyMdx:Lcom/netflix/mediaclient/servicemgr/IMdx;

.field private episodeEndContainer:Landroid/view/ViewGroup;

.field private gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private final handler:Landroid/os/Handler;

.field private isEndOfPlayback:Z

.field private isInBackground:Z

.field private isShowing:Z

.field private languageSelector:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

.field private final languageSelectorCallback:Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;

.field private mdxErrorHandler:Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;

.field private final mdxKeyEventCallbacks:Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$MdxKeyEventCallbacks;

.field private mdxKeyEventHandler:Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;

.field private final mdxMiniPlayerViewCallbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

.field numColumns:I

.field private parentActivityClass:Ljava/lang/String;

.field private relatedAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

.field private relatedGridGroup:Landroid/view/View;

.field private relatedGridTitle:Landroid/widget/TextView;

.field private relatedRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private relatedViewHeight:I

.field private relatedViewWidth:I

.field private remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

.field private final remoteTargetUiListener:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

.field private savedPositionSeconds:I

.field private simulatedCurrentTimelinePositionMs:J

.field private simulatedVideoPositionTimeFiredMs:J

.field private titleEndContainer:Landroid/view/ViewGroup;

.field private final updateSeekBarRunnable:Ljava/lang/Runnable;

.field private views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;-><init>(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$1;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 87
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->handler:Landroid/os/Handler;

    .line 126
    const/4 v0, 0x3

    iput v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->numColumns:I

    .line 282
    iput v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedViewWidth:I

    .line 283
    iput v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedViewHeight:I

    .line 926
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$5;-><init>(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->updateSeekBarRunnable:Ljava/lang/Runnable;

    .line 950
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$6;-><init>(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->languageSelectorCallback:Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;

    .line 981
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$7;-><init>(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->remoteTargetUiListener:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    .line 1182
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$8;-><init>(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->mdxMiniPlayerViewCallbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    .line 1346
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$9;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$9;-><init>(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->mdxKeyEventCallbacks:Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$MdxKeyEventCallbacks;

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->showAndDisable()V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->simulatedVideoPositionTimeFiredMs:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;J)J
    .locals 1

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->simulatedVideoPositionTimeFiredMs:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->simulatedCurrentTimelinePositionMs:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;J)J
    .locals 1

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->simulatedCurrentTimelinePositionMs:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->updateSeekBarRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->updateLanguage()V

    return-void
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->mdxMiniPlayerViewCallbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->updateVideoMetadata(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedViewWidth:I

    return v0
.end method

.method static synthetic access$2002(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Z)Z
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->isEndOfPlayback:Z

    return p1
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;I)I
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedViewWidth:I

    return p1
.end method

.method static synthetic access$2100()Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;ZZZ)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->updateVisibility(ZZZ)V

    return-void
.end method

.method static synthetic access$2300(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->stopSimulatedVideoPositionUpdate()V

    return-void
.end method

.method static synthetic access$2400(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;J)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->startSimulatedVideoPositionUpdate(J)V

    return-void
.end method

.method static synthetic access$2500(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->isInBackground:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->mdxErrorHandler:Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Z)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->updateVolumeState(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/common/LanguageSelector;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->languageSelector:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedViewHeight:I

    return v0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;I)I
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedViewHeight:I

    return p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Landroid/view/View;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedGridGroup:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->draggingInProgress:Z

    return v0
.end method

.method static synthetic access$902(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Z)Z
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->draggingInProgress:Z

    return p1
.end method

.method private collapseMiniPlayerForPhone()V
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->playcardCaret:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->playcardCaret:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method

.method private findViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 207
    const v0, 0x7f0f0229

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 208
    const v0, 0x7f0f0228

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedGridTitle:Landroid/widget/TextView;

    .line 209
    const v0, 0x7f0f0227

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedGridGroup:Landroid/view/View;

    .line 210
    return-void
.end method

.method private hideDialogFragmentIfNecessary()V
    .locals 3

    .prologue
    .line 756
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Landroid/app/DialogFragment;

    move-result-object v0

    .line 757
    instance-of v1, v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$MdxMiniPlayerDialog;

    if-eqz v1, :cond_0

    .line 758
    const-string/jumbo v1, "MdxMiniPlayerFrag"

    const-string/jumbo v2, "MDX mini player dialog frag currently shown - hiding"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 761
    :cond_0
    return-void
.end method

.method private hideMementoLoading()V
    .locals 2

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 620
    if-eqz v0, :cond_0

    .line 621
    const v1, 0x7f0f0225

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    .line 622
    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->hideLoading()V

    goto :goto_0
.end method

.method private declared-synchronized hideSelf()V
    .locals 2

    .prologue
    .line 720
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "hideSelf()"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 721
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->isShowing:Z

    .line 722
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;->shouldShowSelf:Z

    .line 723
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->stopSimulatedVideoPositionUpdate()V

    .line 724
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateMdxMenu()V

    .line 726
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->isInBackground:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 727
    :cond_0
    const-string/jumbo v0, "Frag is in BG - should just hide self on resume"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    :goto_0
    monitor-exit p0

    return-void

    .line 731
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->hideSelfInternal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 720
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized hideSelfInternal()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .prologue
    .line 740
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "Hiding MDX Player frag (internal)"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 743
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 744
    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 745
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 746
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 748
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->hideDialogFragmentIfNecessary()V

    .line 749
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->hideVisibleDialogIfNecessary()V

    .line 751
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->hideRDP()Z

    .line 752
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->notifyMdxMiniPlayerHidden()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    monitor-exit p0

    return-void

    .line 740
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hideVisibleDialogIfNecessary()V
    .locals 2

    .prologue
    .line 764
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 765
    instance-of v0, v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$MdxMiniPlayerDialog;

    if-eqz v0, :cond_0

    .line 766
    const-string/jumbo v0, "MdxMiniPlayerFrag"

    const-string/jumbo v1, "MDX dialog currently shown - hiding"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeVisibleDialog()V

    .line 769
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 921
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    const-string/jumbo v0, "MdxMiniPlayerFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->parentActivityClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_0
    return-void
.end method

.method public static sendShowAndDisableIntent(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.ui.mdx.NOTIFY_SHOW_AND_DISABLE_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    return-void
.end method

.method private setupRecyclerViewItemDecoration()V
    .locals 4

    .prologue
    .line 373
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    .line 374
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget v3, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->numColumns:I

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;-><init>(II)V

    .line 373
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 376
    return-void
.end method

.method private showAndDisable()V
    .locals 2

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->inAnyMementoTest(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->showSelf(Z)V

    .line 477
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->stopSimulatedVideoPositionUpdate()V

    .line 478
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setControlsEnabled(Z)V

    .line 479
    return-void
.end method

.method private declared-synchronized showSelf(Z)V
    .locals 2

    .prologue
    .line 772
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "showSelf()"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 773
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->isShowing:Z

    .line 774
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;->shouldShowSelf:Z

    .line 775
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateMdxMenu()V

    .line 777
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->isInBackground:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 778
    :cond_0
    const-string/jumbo v0, "Frag is in BG - should just show self on resume"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 782
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-nez v0, :cond_3

    .line 783
    const-string/jumbo v0, "currentVideo is null - show self failed"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 772
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 787
    :cond_3
    :try_start_2
    const-string/jumbo v0, "Showing MDX Player frag"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 789
    if-eqz v0, :cond_1

    .line 791
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 792
    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 793
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 794
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 796
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->notifyMdxMiniPlayerShown(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private startSimulatedVideoPositionUpdate(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x3e8

    .line 806
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->updateSeekBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 808
    mul-long v0, p1, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->simulatedCurrentTimelinePositionMs:J

    .line 809
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->simulatedVideoPositionTimeFiredMs:J

    .line 810
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->updateSeekBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 811
    const-string/jumbo v0, "Simulated position update +started+"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 813
    :cond_0
    return-void
.end method

.method private stopSimulatedVideoPositionUpdate()V
    .locals 2

    .prologue
    .line 816
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->updateSeekBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 818
    const-string/jumbo v0, "Simulated position update -stopped-"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 820
    :cond_0
    return-void
.end method

.method private updateLanguage()V
    .locals 2

    .prologue
    .line 801
    const-string/jumbo v0, "updateLanguage()"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 802
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->mdxMiniPlayerViewCallbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->isLanguageReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setLanguageButtonEnabled(Z)V

    .line 803
    return-void
.end method

.method private updateVideoMetadata(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 847
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Updating metadata: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", hash: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v3, :cond_4

    .line 851
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateTitleText(Ljava/lang/String;)V

    .line 852
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v4, 0x7f080170

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 853
    invoke-interface {v6}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v6

    invoke-interface {v6}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v6}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v6

    invoke-interface {v6}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEpisodeNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v6}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 852
    invoke-virtual {v3, v4, v5}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateSubtitleText(Ljava/lang/String;)V

    .line 859
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    .line 861
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->getCurrentDeviceFriendlyName(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Ljava/lang/String;

    move-result-object v3

    .line 859
    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateDeviceNameText(Ljava/lang/String;)V

    .line 862
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v0, v4, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setEpisodesButtonVisibile(Z)V

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting seek bar max: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 865
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setProgressMax(I)V

    .line 871
    const-string/jumbo v3, "updating seek pos - remote pos: %d, playable bookmark pos: %d, saved pos: %d"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    if-nez v0, :cond_6

    move v0, v2

    .line 872
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 873
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableBookmarkPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->savedPositionSeconds:I

    .line 874
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    .line 871
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 876
    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->savedPositionSeconds:I

    .line 877
    const/4 v1, -0x1

    iput v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->savedPositionSeconds:I

    .line 878
    if-gtz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    if-nez v0, :cond_7

    move v0, v2

    .line 880
    :goto_3
    if-gtz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableBookmarkPosition()I

    move-result v0

    .line 885
    :cond_0
    if-lez v0, :cond_1

    .line 886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting seek progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 887
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setProgress(I)V

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateImage(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 893
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    instance-of v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    if-eqz v0, :cond_8

    .line 894
    const-string/jumbo v0, "Video is instance of EpisodeDetails, fetching episodes..."

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 895
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getSeasonId()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$FetchSeasonDetailsCallback;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$FetchSeasonDetailsCallback;-><init>(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)V

    invoke-interface {v1, v0, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchSeasonDetails(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 901
    :goto_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0f0225

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    .line 902
    if-eqz v0, :cond_2

    .line 903
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->setVideoId(Ljava/lang/String;)V

    .line 904
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->fetchData()V

    .line 907
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0f0226

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    .line 908
    if-eqz v0, :cond_3

    .line 909
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->setVideo(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 912
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->updateLanguage()V

    .line 913
    return-void

    .line 856
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateTitleText(Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateSubtitleText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 862
    goto/16 :goto_1

    .line 871
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    .line 872
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->getPositionInSeconds()I

    move-result v0

    goto/16 :goto_2

    .line 879
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->getPositionInSeconds()I

    move-result v0

    goto/16 :goto_3

    .line 898
    :cond_8
    const-string/jumbo v0, "Video is not instance of EpisodeDetails"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private updateVisibility(ZZZ)V
    .locals 2

    .prologue
    .line 823
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateVisibility, frag isVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->isShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", paused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 827
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->isShowing:Z

    if-eq v0, p1, :cond_1

    .line 828
    if-eqz p1, :cond_2

    .line 829
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->showSelf(Z)V

    .line 830
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    if-eqz v0, :cond_1

    .line 831
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->sync()V

    .line 839
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updatePlayPauseButton(Z)V

    .line 840
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    sget-object v1, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;->isVolumeEnabled:Z

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setVolumeButtonVisibility(Z)V

    .line 841
    return-void

    .line 835
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->hideSelf()V

    goto :goto_0
.end method

.method private updateVolumeState(Z)V
    .locals 1

    .prologue
    .line 916
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;

    iput-boolean p1, v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;->isVolumeEnabled:Z

    .line 917
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setVolumeButtonVisibility(Z)V

    .line 918
    return-void
.end method


# virtual methods
.method public attachMenuItem(Lcom/netflix/mediaclient/ui/mdx/MdxMenu;)V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->attachMenuItem(Lcom/netflix/mediaclient/ui/mdx/MdxMenu;)V

    .line 483
    return-void
.end method

.method public destroyed()Z
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->mdxKeyEventHandler:Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;->handleKeyEvent(Landroid/view/KeyEvent;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;)Z

    move-result v0

    return v0
.end method

.method public fetchRelatedCollection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 330
    :cond_0
    const-string/jumbo v0, "MdxMiniPlayerFrag"

    const-string/jumbo v1, "Manager is null/notReady - can\'t reload data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedGridTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 335
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedGridTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    :cond_2
    const-string/jumbo v1, "MdxMiniPlayerFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fetching data for turbo collection ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    new-instance v1, Lcom/netflix/falkor/CachedModelProxy$FetchTurboCollectionVideosTask;

    .line 343
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x0

    const/16 v5, 0x14

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/netflix/falkor/CachedModelProxy$FetchTurboCollectionVideosTask;-><init>(JII)V

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$3;

    const-string/jumbo v3, "MdxMiniPlayerFrag"

    invoke-direct {v2, p0, v3}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$3;-><init>(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Ljava/lang/String;)V

    .line 341
    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchTask(Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V

    goto :goto_0
.end method

.method public getCurrentPositionMs()J
    .locals 2

    .prologue
    .line 513
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->simulatedCurrentTimelinePositionMs:J

    return-wide v0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    .prologue
    .line 526
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method public getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->isPlayingRemotely()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    .line 521
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayer()Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    return-object v0
.end method

.method public getSlidingPanelDragView()Landroid/view/View;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->getSlidingPanelDragView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTargetSelection()Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;
    .locals 4

    .prologue
    .line 502
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->mdxMiniPlayerViewCallbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    .line 503
    new-instance v1, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getTargetList()[Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getCurrentTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getPlaybackConfiguration()Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;->isLocalPlaybackEnabled()Z

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;-><init>([Landroid/util/Pair;Ljava/lang/String;Z)V

    return-object v1
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    goto :goto_0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 578
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;

    iget v0, v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;->mostRecentVolume:I

    return v0
.end method

.method public handleBackPressed()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 407
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedGridGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 409
    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 411
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedGridGroup:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 412
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->hideMementoLoading()V

    .line 414
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->rotateCaretTo(I)V

    .line 415
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setSlidingEnabled(Z)V

    .line 417
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedGridGroup:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move v0, v1

    .line 427
    :goto_0
    return v0

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f0f0226

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    .line 422
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->isShowingTitleEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.netflix.mediaclient.service.ACTION_CLOSE_MINI_PLAYER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    move v0, v1

    .line 424
    goto :goto_0

    .line 427
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->hideRDP()Z

    move-result v0

    goto :goto_0
.end method

.method public hideRDP()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 384
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f0f022a

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    .line 385
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->isHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 386
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 389
    const v3, 0x7f050002

    const v4, 0x7f050003

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 391
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 392
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->resetScroll()V

    .line 394
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 395
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setSlidingEnabled(Z)V

    move v0, v1

    .line 399
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideRelatedGroup()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedGridGroup:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 404
    return-void
.end method

.method public initMdxComponents()V
    .locals 3

    .prologue
    .line 668
    const-string/jumbo v0, "initMdxComponents()"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->mdxMiniPlayerViewCallbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    .line 670
    if-eqz v0, :cond_2

    .line 671
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getVideoDetail()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    .line 672
    if-eqz v1, :cond_0

    .line 673
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->updateVideoMetadata(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 674
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    sget-object v2, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;

    iget-boolean v2, v2, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;->controlsEnabled:Z

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setControlsEnabled(Z)V

    .line 675
    sget-object v1, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;->shouldShowSelf:Z

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->isPaused()Z

    move-result v0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->updateVisibility(ZZZ)V

    .line 678
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->remoteTargetUiListener:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    .line 680
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 681
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;->controlsEnabled:Z

    if-eqz v0, :cond_1

    .line 682
    const-string/jumbo v0, "Controls are enabled & mini player is showing. Requesting subs and dubs..."

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->requestAudioAndSubtitleData()V

    .line 686
    :cond_1
    const-string/jumbo v0, "Syncing with remote player..."

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->sync()V

    .line 692
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->languageSelectorCallback:Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->createInstance(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;)Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->languageSelector:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    .line 694
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 695
    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x0

    return v0
.end method

.method public isMdxMenuEnabled()Z
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    sget-object v1, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;->controlsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->computeMdxMenuEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isPlayingLocally()Z
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x0

    return v0
.end method

.method public isPlayingRemotely()Z
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->isShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->isEndOfPlayback:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->isShowing:Z

    return v0
.end method

.method public notifyPlayingBackLocal()V
    .locals 0

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->hideSelf()V

    .line 542
    return-void
.end method

.method public notifyPlayingBackRemote()V
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setControlsEnabled(Z)V

    .line 547
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 158
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreate(Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->parentActivityClass:Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 161
    const-string/jumbo v0, "onCreate()"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 163
    if-nez p1, :cond_0

    move v0, v1

    .line 164
    :goto_0
    iput v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->savedPositionSeconds:I

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "savedPositionSeconds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->savedPositionSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$1;-><init>(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)V

    const-string/jumbo v2, "com.netflix.mediaclient.ui.mdx.NOTIFY_SHOW_AND_DISABLE_INTENT"

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 174
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->mdxKeyEventCallbacks:Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$MdxKeyEventCallbacks;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$MdxKeyEventCallbacks;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->mdxKeyEventHandler:Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;

    .line 175
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;

    const-string/jumbo v1, "MdxMiniPlayerFrag"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->mdxErrorHandler:Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;

    .line 180
    return-void

    .line 163
    :cond_0
    const-string/jumbo v0, "saved_position_seconds"

    .line 164
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 184
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->mdxMiniPlayerViewCallbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-direct {v0, v1, v2, p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerViews;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Updating to empty state, controls enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;->controlsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    sget-object v1, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;->controlsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateToEmptyState(Z)V

    .line 189
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->findViews(Landroid/view/View;)V

    .line 190
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->hideRDP()Z

    .line 192
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->collapseMiniPlayerForPhone()V

    .line 194
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->setupRecyclerView()V

    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->destroy()V

    .line 472
    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroy()V

    .line 473
    return-void
.end method

.method public onEpisodeSelectedForPlayback(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 2

    .prologue
    .line 711
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->hideDialogFragmentIfNecessary()V

    .line 712
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 713
    return-void
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 636
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 637
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 639
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    :cond_0
    const-string/jumbo v0, "Activity is null or destroyed - bailing early"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 665
    :goto_0
    return-void

    .line 644
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0f0225

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    .line 645
    if-eqz v0, :cond_2

    .line 646
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 649
    :cond_2
    const-string/jumbo v0, "manager ready"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->initMdxComponents()V

    goto :goto_0
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 700
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->destroy()V

    .line 702
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateToEmptyState(Z)V

    .line 706
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->hideSelf()V

    .line 707
    return-void
.end method

.method public onPanelCollapsed()V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->onPanelCollapsed()V

    .line 601
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->isEndOfPlayback:Z

    if-eqz v0, :cond_0

    .line 602
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->isEndOfPlayback:Z

    .line 603
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->hideSelf()V

    .line 604
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->hideRDP()Z

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedGridGroup:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedGridGroup:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 609
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->hideMementoLoading()V

    .line 612
    :cond_1
    return-void
.end method

.method public onPanelExpanded()V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->onPanelExpanded()V

    .line 597
    return-void
.end method

.method public onPanelSlide(F)V
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->onPanelSlide(F)V

    .line 593
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 432
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onResume()V

    .line 433
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->onResume()V

    .line 434
    return-void
.end method

.method public onResumeFragments()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 440
    const-string/jumbo v0, "onResumeFragments"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 441
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->isInBackground:Z

    .line 443
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 444
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->hideSelfInternal()V

    .line 457
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "on resume - currentVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", shouldShowSelf: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;->shouldShowSelf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->log(Ljava/lang/String;)V

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;->shouldShowSelf:Z

    if-nez v0, :cond_3

    .line 451
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->hideSelf()V

    goto :goto_0

    .line 454
    :cond_3
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->showSelf(Z)V

    goto :goto_0
.end method

.method public declared-synchronized onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 461
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 462
    const-string/jumbo v0, "saved_position_seconds"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->getProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->isInBackground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    monitor-exit p0

    return-void

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendDialogResponse(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->sendDialogResponse(Ljava/lang/String;)V

    .line 489
    :cond_0
    return-void
.end method

.method public setVolume(I)V
    .locals 1

    .prologue
    .line 585
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;

    iput p1, v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;->mostRecentVolume:I

    .line 586
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->setVolume(I)V

    .line 589
    :cond_0
    return-void
.end method

.method protected setupRecyclerView()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedGridGroup:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->hideMementoLoading()V

    .line 221
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_1
    iput v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->numColumns:I

    .line 223
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->setupRecyclerViewLayoutManager()V

    .line 224
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->setupRecyclerViewAdapter()V

    .line 225
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->setupRecyclerViewItemDecoration()V

    goto :goto_0

    .line 221
    :cond_1
    const/4 v0, 0x3

    goto :goto_1
.end method

.method protected setupRecyclerViewAdapter()V
    .locals 4

    .prologue
    .line 287
    new-instance v0, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;

    const/4 v1, 0x1

    iget v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->numColumns:I

    new-instance v3, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$2;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$2;-><init>(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;-><init>(ZILcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    .line 313
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 314
    return-void
.end method

.method protected setupRecyclerViewLayoutManager()V
    .locals 3

    .prologue
    .line 379
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->numColumns:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 380
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->relatedRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 381
    return-void
.end method
