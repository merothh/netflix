.class public Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source "NotificationsFrag.java"


# static fields
.field private static final BUNDLE_EXTRA_HAS_LOAD_MORE:Ljava/lang/String; = "has_load_more_list"

.field private static final BUNDLE_EXTRA_NOTIFICATIONS_LIST:Ljava/lang/String; = "notifications_list"

.field private static final BUNDLE_EXTRA_NOTIFICATIONS_LIST_TO_BE_READ:Ljava/lang/String; = "notifications_list_to_be_read"

.field private static final BUNDLE_EXTRA_NOTIFICATIONS_WERE_FETCHED:Ljava/lang/String; = "were_notifications_fetched"

.field private static final BUNDLE_EXTRA_NOTIFICATIONS_WERE_FOUND:Ljava/lang/String; = "are_there_noitifcations"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

.field private mAdapter:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;

.field private mAreNotificationsPresent:Z

.field private mAreReceiversRegistered:Z

.field private mAreViewsCreated:Z

.field private mIsLoadingData:Z

.field private mListener:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListStatusListener;

.field private mLoadMoreAvailable:Z

.field private mNetworkErrorOccured:Z

.field private mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

.field protected mNotificationsList:Lcom/netflix/mediaclient/android/widget/StaticListView;

.field private final mNotificationsToBeRead:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/model/leafs/social/IrisNotificationSummary;",
            ">;"
        }
    .end annotation
.end field

.field private mWasRefreshForTopViewScheduled:Z

.field private mWereNotificationsFetched:Z

.field private final socialNotificationsListUpdateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mLoadMoreAvailable:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotificationsToBeRead:Ljava/util/Set;

    new-instance v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$1;-><init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    new-instance v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$6;-><init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->socialNotificationsListUpdateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mWereNotificationsFetched:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->fetchNotificationsList(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mWereNotificationsFetched:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Landroid/view/View$OnClickListener;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getPlaybackListener(Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Ljava/lang/String;Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Landroid/view/View$OnClickListener;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getClickListener(Ljava/lang/String;Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->playVideo(Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Lorg/json/JSONObject;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getModelObject(Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Lcom/netflix/mediaclient/android/app/Status;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->checkForNetworkError(Lcom/netflix/mediaclient/android/app/Status;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1602(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mLoadMoreAvailable:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->refreshNotificationsListStatus()V

    return-void
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAdapter:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNetworkErrorOccured:Z

    return v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAreNotificationsPresent:Z

    return v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;)Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->areMoreNotificationsAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->loadMoreNotifications()V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotificationsToBeRead:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mWasRefreshForTopViewScheduled:Z

    return v0
.end method

.method static synthetic access$902(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mWasRefreshForTopViewScheduled:Z

    return p1
.end method

.method private areMoreNotificationsAvailable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->canLoadMultiplePages()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mLoadMoreAvailable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkForNetworkError(Lcom/netflix/mediaclient/android/app/Status;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mIsLoadingData:Z

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    if-ne v2, v3, :cond_1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNetworkErrorOccured:Z

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAdapter:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAdapter:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->notifyDataSetChanged()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNetworkErrorOccured:Z

    move v0, v1

    goto :goto_0
.end method

.method private completeInitIfPossible()V
    .locals 2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAreViewsCreated:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Can\'t complete init - views not created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Can\'t complete init - manager not ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;-><init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAdapter:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotificationsList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAdapter:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->fetchNotificationsList(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mIsLoadingData:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAdapter:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private fetchNotificationsList(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mIsLoadingData:Z

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getNumNotificationsPerPage()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    new-instance v4, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;

    sget-object v5, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->TAG:Ljava/lang/String;

    invoke-direct {v4, p0, v5, v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;-><init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchNotificationsList(IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    :cond_0
    return-void
.end method

.method private getClickListener(Ljava/lang/String;Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Landroid/view/View$OnClickListener;
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo v0, "SPY-8161 - Got null target value"

    sget-object v1, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getDisplayListener(Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Landroid/view/View$OnClickListener;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SPY-8161 - Got unsupported target value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getDisplayListener(Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Landroid/view/View$OnClickListener;

    move-result-object v0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "PLAYBACK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "DISPLAY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getPlaybackListener(Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Landroid/view/View$OnClickListener;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getDisplayListener(Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Landroid/view/View$OnClickListener;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x718f5b5e -> :sswitch_1
        -0x615839e5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getDisplayListener(Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Landroid/view/View$OnClickListener;
    .locals 8

    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getVideoId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotificationsListSummary()Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->getRequestId()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;

    move-object v1, p0

    move-object v2, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;-><init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Lcom/netflix/model/leafs/social/IrisNotificationSummary;Ljava/lang/String;Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;I)V

    return-object v0
.end method

.method private getModelObject(Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Lorg/json/JSONObject;
    .locals 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "position"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "trackId"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotificationsListSummary()Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->getBaseTrackId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "messageGuid"

    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "titleId"

    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getVideoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getModelObject() got an exception"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private getPlaybackListener(Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Landroid/view/View$OnClickListener;
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getVideoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotificationsListSummary()Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->getRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->getPlayerTrackId()I

    move-result v0

    invoke-direct {v3, v1, v0, v5, v5}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    new-instance v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$2;

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$2;-><init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)V

    return-object v0
.end method

.method private getVisibleNotificationsNumber()I
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getNumNotificationsPerPage()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getNumNotificationsPerPage()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private loadMoreNotifications()V
    .locals 5

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mIsLoadingData:Z

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getNumNotificationsPerPage()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    new-instance v3, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$5;

    sget-object v4, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->TAG:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$5;-><init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchNotificationsList(IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    :cond_0
    return-void
.end method

.method private playVideo(Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p3, p2}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->createColdStartIntent(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private refreshNotificationMyListButtons()V
    .locals 6

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotificationsList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/StaticListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotificationsList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/StaticListView;->getLastVisiblePosition()I

    move-result v2

    :goto_0
    if-gt v0, v2, :cond_2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAdapter:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAdapter:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;

    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->getItem(I)Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAdapter:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;

    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->getItem(I)Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getVideoId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getInQueueValue()Z

    move-result v3

    invoke-virtual {v1, v4, v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->updateMyListState(Ljava/lang/String;Z)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refreshNotificationMyListButtons() got null details for position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    return-void
.end method

.method private refreshNotificationsListStatus()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAreNotificationsPresent:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mListener:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListStatusListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mListener:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListStatusListener;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAreNotificationsPresent:Z

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListStatusListener;->onNotificationsListUpdated(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerReceivers()V
    .locals 4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAreReceiversRegistered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAreReceiversRegistered:Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->socialNotificationsListUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.BA_IRIS_NOTIFICATION_LIST_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    return-void
.end method

.method private unregisterReceivers()V
    .locals 2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAreReceiversRegistered:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->socialNotificationsListUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public areNotificationsPresent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAreNotificationsPresent:Z

    return v0
.end method

.method protected canLoadMultiplePages()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected computeRowCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAreNotificationsPresent:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->areMoreNotificationsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getNumNotificationsPerPage()I
    .locals 1

    sget v0, Lcom/netflix/mediaclient/util/IrisUtils;->PAGE_NOTIFICATIONS_SIZE:I

    return v0
.end method

.method protected getRowLayoutResourceId()I
    .locals 1

    const v0, 0x7f0300fe

    return v0
.end method

.method protected isListViewStatic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mIsLoadingData:Z

    return v0
.end method

.method public markNotificationsAsRead()V
    .locals 5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getVisibleNotificationsNumber()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getWasRead()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->markNotificationsAsRead(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onAttach(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->registerReceivers()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "notifications_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "has_load_more_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mLoadMoreAvailable:Z

    const-string/jumbo v0, "notifications_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    const-string/jumbo v0, "notifications_list_to_be_read"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotificationsToBeRead:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/IrisUtils;->castArrayToSet([Landroid/os/Parcelable;Ljava/util/Set;)V

    const-string/jumbo v0, "were_notifications_fetched"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mWereNotificationsFetched:Z

    const-string/jumbo v0, "are_there_noitifcations"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAreNotificationsPresent:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->refreshNotificationsListStatus()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Creating new frag view..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAreViewsCreated:Z

    const v0, 0x7f0300fd

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f034f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/StaticListView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotificationsList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotificationsList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotificationsList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->isListViewStatic()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setAsStatic(Z)V

    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mIsLoadingData:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->completeInitIfPossible()V

    return-object v1
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDetach()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->unregisterReceivers()V

    return-void
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->completeInitIfPossible()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onResume()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->refreshNotificationMyListButtons()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "has_load_more_list"

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->areMoreNotificationsAvailable()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "notifications_list"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getParcelable()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v1, "notifications_list_to_be_read"

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotificationsToBeRead:Ljava/util/Set;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotificationsToBeRead:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string/jumbo v0, "were_notifications_fetched"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mWereNotificationsFetched:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const-string/jumbo v0, "are_there_noitifcations"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAreNotificationsPresent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public refresh()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->fetchNotificationsList(Z)V

    return-void
.end method

.method public reportNotificationsImpression(Z)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getVisibleNotificationsNumber()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    if-eqz p1, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v3, "position"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v3, "isRead"

    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getWasRead()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v3, "messageGuid"

    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "titleId"

    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportNotificationImpressionStarted(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportNotificationImpressionEnded(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setNotificationsListStatusListener(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mListener:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListStatusListener;

    return-void
.end method

.method protected shouldShowPlayButtonFromNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
