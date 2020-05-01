.class public final Lcom/netflix/mediaclient/servicemgr/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;


# static fields
.field public static final BROWSE_AGENT_CW_REFRESH:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.BA_CW_REFRESH"

.field public static final BROWSE_AGENT_EPISODE_REFRESH:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.BA_EPISODE_REFRESH"

.field public static final BROWSE_AGENT_IQ_REFRESH:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.BA_IQ_REFRESH"

.field public static final BROWSE_AGENT_POPULAR_TITLES_REFRESH:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.BA_POPULAR_TITLES_REFRESH"

.field public static final BROWSE_PARAM_CUR_EPISODE_NUMBER:Ljava/lang/String; = "curEpisodeNumber"

.field public static final BROWSE_PARAM_CUR_SEASON_NUMBER:Ljava/lang/String; = "curSeasonNumber"

.field public static final DETAIL_PAGE_RELOAD:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.DETAIL_PAGE_REFRESH"

.field public static final DISCOVERY_LIST_UPDATED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.DISCOVERY_LIST_UPDATED"

.field public static final IRIS_NOTIFICATIONS_LIST_UPDATED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.BA_IRIS_NOTIFICATION_LIST_UPDATED"

.field public static final LOCAL_PLAYER_PLAY_START:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_START"

.field public static final LOCAL_PLAYER_PLAY_STOP:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_STOP"

.field public static final NOTIFICATIONS_LIST_STATUS:Ljava/lang/String; = "notifications_list_status"

.field public static final PLAYER_EXTRA_PLAYBACK_TYPE:Ljava/lang/String; = "playbackType"

.field private static final TAG:Ljava/lang/String; = "ServiceManager"


# instance fields
.field private addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

.field private final mBrowseManager:Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

.field private mCallback:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

.field private final mCallbackMuxer:Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;

.field private mClientId:I

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mLocalService:Lcom/netflix/mediaclient/service/NetflixService;

.field private mReady:Z

.field private mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

.field private mServiceListener:Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;-><init>(Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallbackMuxer:Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;-><init>(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mConnection:Landroid/content/ServiceConnection;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "ServiceManager created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallback:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/servicemgr/BrowseManager;-><init>(Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mBrowseManager:Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/netflix/mediaclient/service/NetflixService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getServiceIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "ServiceManager could not bind to NetflixService!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)I
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    return p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallback:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;)Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallback:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    return-object p1
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mReady:Z

    return p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getManagerCallback(I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallbackMuxer:Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/INetflixService;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/INetflixService;)Lcom/netflix/mediaclient/servicemgr/INetflixService;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    return-object v0
.end method

.method static synthetic access$702(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;)Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    return-object p1
.end method

.method static synthetic access$802(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mLocalService:Lcom/netflix/mediaclient/service/NetflixService;

    return-object p1
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mServiceListener:Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;

    return-object v0
.end method

.method static synthetic access$902(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;)Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mServiceListener:Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;

    return-object p1
.end method

.method private addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallbackMuxer:Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;->muxCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "Callback that is added is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getManagerCallback(I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallbackMuxer:Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;->demuxCallback(I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    return-object v0
.end method

.method private getServiceIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/netflix/mediaclient/service/NetflixService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static getServiceManager(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static sendCwRefreshBrodcast(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.BA_CW_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "Intent CW_REFRESH sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static sendHomeRefreshBrodcast(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.REFRESH_HOME_LOLOMO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "Intent REFRESH_HOME sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static sendIqRefreshBrodcast(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.BA_IQ_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "Intent IQ_REFRESH sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static sendPopularTitlesRefreshBrodcast(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.BA_POPULAR_TITLES_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "Intent BROWSE_AGENT_POPULAR_TITLES_REFRESH sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private validateService()Z
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SPY-8020 - ServiceMgr called before NetflixService is ready "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private wrapForAddToList(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;-><init>(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addNetworkRequestInspector(Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;[Ljava/lang/Class;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "Netflix service is not available. Unable to add a network request inspector"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->addNetworkRequestInspector(Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;[Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public addProfile(Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 6

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p4}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v5

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v4, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->addProfile(Ljava/lang/String;ZLjava/lang/String;II)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "addProfile:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cancelAllImageLoaderRequests()Z
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "Cancelling all pending image requests"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->cancelAllRequests()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "Failed to cancell all pending image requests. Image loader not available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public consumeUmaAlert()V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->consumeUmaAlert()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "recordUserMessageImpression:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;I)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;
    .locals 6

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->createAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;I)Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;

    move-result-object v0

    return-object v0
.end method

.method public createAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZ)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;
    .locals 7

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->createAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZ)Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;

    move-result-object v0

    return-object v0
.end method

.method public createAddToMyListWrapper(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Landroid/widget/TextView;Landroid/widget/TextView;Z)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;
    .locals 8

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getVideoId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v5

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getTrackId()I

    move-result v6

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->createAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZ)Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;

    move-result-object v0

    return-object v0
.end method

.method public createAddToMyListWrapper(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Landroid/widget/TextView;Z)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;
    .locals 7

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getVideoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getTrackId()I

    move-result v5

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->createAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZ)Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;

    move-result-object v0

    return-object v0
.end method

.method public createAutoLoginToken(JLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->createAutoLoginToken(JII)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "createAutoLoginToken:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createMementoAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;I)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;
    .locals 6

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->createMementoAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;I)Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;

    move-result-object v0

    return-object v0
.end method

.method public doOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility$Action;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 3

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->doOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility$Action;II)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "doOnRampEligibilityAction:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public editProfile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 7

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p5}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v6

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v5, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->editProfile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "editProfile:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized fetchAndCacheResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 5

    const/4 v0, 0x0

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "fetchAndCacheResource:: resourceUrl is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "ServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fetchAndCacheResource requestId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " resourceUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v0, p1, p2, v2, v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->fetchAndCacheResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;II)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "fetchAndCacheResource:: service is not available"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public fetchAvailableAvatarsList(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getAvailableAvatarsList(II)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "fetchAvailableAvatarsList:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 5

    const/4 v0, 0x0

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_0
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "ServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fetchResource requestId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " resourceUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v0, p1, p2, v2, v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;II)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "fetchResource:: service is not available"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public fetchSurvey(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 3

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->fetchSurvey(II)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "fetchSurvey:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAllProfiles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getAllProfiles()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getAllProfiles:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mBrowseManager:Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    return-object v0
.end method

.method public getClientId()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    return v0
.end method

.method public getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getClientLogging:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getConfiguration: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentAppLocale()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getCurrentAppLocale()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getCurrentAppLocale:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getCurrentProfile:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentProfileGuidOrNull()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getDeviceCategory:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDiagnosis()Lcom/netflix/mediaclient/servicemgr/IDiagnosis;
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getDiagnosis()Lcom/netflix/mediaclient/servicemgr/IDiagnosis;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getESNProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getESN()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getESNProvider:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEndOfGrandfatheringAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getEndOfGrandfatheringAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getEndOfGrandfatheringAlert:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getErrorHandler:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mLocalService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getImageLoader:: Netflix service is not available or not ready, return null."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getMdx:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNrdDeviceModel()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getNrdDeviceModel()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getNrdDeviceModel:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNrdpComponentVersion(Lcom/netflix/mediaclient/servicemgr/NrdpComponent;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getNrdpComponentVersion(Lcom/netflix/mediaclient/servicemgr/NrdpComponent;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getNrdpComponentVersion:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "getOfflineAgent:: service is not available"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "getOfflineAgent:: is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->isOfflineFeatureEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "getOfflineAgent:: not available "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getOfflinePlayableData(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getOfflinePlayableViewData(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayer(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)Lcom/netflix/mediaclient/servicemgr/IPlayer;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->OfflinePlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-ne p1, v1, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getOfflinePlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getNflxPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPlayer:: returning null playbackType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPushNotification()Lcom/netflix/mediaclient/servicemgr/IPushNotification;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getPushNotification()Lcom/netflix/mediaclient/servicemgr/IPushNotification;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getPushNotification:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    return v0
.end method

.method public getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    return-object v0
.end method

.method public getSignUpParams()Lcom/netflix/mediaclient/servicemgr/SignUpParams;
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getSignUpParams()Lcom/netflix/mediaclient/servicemgr/SignUpParams;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getSignUpParams:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getSoftwareVersion:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserEmail()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getUserEmail()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getUserEmail:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getUserMessageAlert:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getVoip:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWrappedRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->wrapForAddToList(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    return v0
.end method

.method public isCurrentProfileIQEnabled()Z
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->isCurrentProfileIQEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "isCurrentProfileIQEnabled:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceHd()Z
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->isDeviceHd()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "isDeviceHd:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDolbyDigitalPlus51Supported()Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isDolbyDigitalPlus51Supported()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNonMemberPlayback()Z
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->isNonMemberPlayback()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "isNonMemberPlayback:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOfflineFeatureAvailable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProfileSwitchingDisabled()Z
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->isProfileSwitchingDisabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "isProfileSwitchingDisabled:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTablet()Z
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->isTablet()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "isTablet:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserAgeVerified()Z
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->isUserAgeVerified()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "isUserAgeVerified:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserLoggedIn()Z
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->isUserLoggedIn()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "isUserLoggedIn:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loginUser(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->loginUser(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "loginUser:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loginUserByTokens(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->loginUserByTokens(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;II)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "loginUserByTokens:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logoutUser(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->logoutUser(II)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "logoutUser:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markSurveysAsRead()V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->markSurveysAsRead()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "markSurveysAsRead:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public recordPlanSelection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->recordPlanSelection(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "recordPlanSelection:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public recordUserMessageImpression(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->recordUserMessageImpression(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "recordUserMessageImpression:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshCurrentUserMessageArea()V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->refreshCurrentUserMessageArea()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "refreshUserMessage:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshProfileSwitchingStatus()V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->refreshProfileSwitchingStatus()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "refreshProfileSwitchingStatus:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->register(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mServiceListener:Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "ServiceManager unregisterCallback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mServiceListener:Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->unregisterCallback(Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;)V

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "ServiceManager unbindService"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallbackMuxer:Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallbackMuxer:Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;->reset()V

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeProfile(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 3

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->removeProfile(Ljava/lang/String;II)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "removeProfile:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public selectProfile(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->selectProfile(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "selectProfile:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCurrentAppLocale(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->setCurrentAppLocale(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "setCurrentAppLocale:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNonMemberPlayback(Z)Z
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->setNonMemberPlayback(Z)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "setNonMemberPlayback:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldAlertForMissingLocale()Z
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->shouldAlertForMissingLocale()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "shouldAlertForMissingLocale:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->startJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    :cond_0
    return-void
.end method

.method public stopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->stopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    :cond_0
    return-void
.end method

.method public uiComingFromBackground()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->uiComingFromBackground()V

    :cond_0
    return-void
.end method

.method public unregisterAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->unregister(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    :cond_0
    return-void
.end method

.method public updateMyListState(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->updateState(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public verifyAge(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->verifyAge(II)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "verifyAge:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public verifyPin(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->verifyPin(Ljava/lang/String;II)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "verifyPin:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willPlayOffline(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflinePlayableData(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
