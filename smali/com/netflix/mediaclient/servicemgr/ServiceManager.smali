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

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    .line 135
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;-><init>(Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallbackMuxer:Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;

    .line 1868
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;-><init>(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mConnection:Landroid/content/ServiceConnection;

    .line 167
    if-nez p2, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "ServiceManager created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iput-object p2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallback:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    .line 173
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/BrowseManager;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/servicemgr/BrowseManager;-><init>(Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mBrowseManager:Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    .line 175
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mContext:Landroid/content/Context;

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/netflix/mediaclient/service/NetflixService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getServiceIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 178
    if-nez v0, :cond_1

    .line 179
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "ServiceManager could not bind to NetflixService!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_1
    return-void
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)I
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    return p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallback:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;)Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallback:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    return-object p1
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Z)Z
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mReady:Z

    return p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getManagerCallback(I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallbackMuxer:Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/INetflixService;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/INetflixService;)Lcom/netflix/mediaclient/servicemgr/INetflixService;
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    return-object v0
.end method

.method static synthetic access$702(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;)Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    return-object p1
.end method

.method static synthetic access$802(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService;
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mLocalService:Lcom/netflix/mediaclient/service/NetflixService;

    return-object p1
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mServiceListener:Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;

    return-object v0
.end method

.method static synthetic access$902(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;)Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mServiceListener:Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;

    return-object p1
.end method

.method private addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I
    .locals 3

    .prologue
    .line 2099
    const/4 v0, 0x0

    .line 2100
    if-eqz p1, :cond_0

    .line 2101
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallbackMuxer:Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;->muxCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 2106
    :goto_0
    return v0

    .line 2103
    :cond_0
    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "Callback that is added is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getManagerCallback(I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;
    .locals 1

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallbackMuxer:Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;->demuxCallback(I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    return-object v0
.end method

.method private getServiceIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1898
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/netflix/mediaclient/service/NetflixService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static getServiceManager(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1973
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1974
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 1975
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1978
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 1975
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1978
    goto :goto_0
.end method

.method public static sendCwRefreshBrodcast(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 2196
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.BA_CW_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2197
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2198
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "Intent CW_REFRESH sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    return-void
.end method

.method public static sendHomeRefreshBrodcast(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 2184
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.REFRESH_HOME_LOLOMO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2185
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2186
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "Intent REFRESH_HOME sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    return-void
.end method

.method public static sendIqRefreshBrodcast(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 2190
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.BA_IQ_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2191
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2192
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "Intent IQ_REFRESH sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    return-void
.end method

.method public static sendPopularTitlesRefreshBrodcast(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 2202
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.BA_POPULAR_TITLES_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2203
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2204
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "Intent BROWSE_AGENT_POPULAR_TITLES_REFRESH sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    return-void
.end method

.method private validateService()Z
    .locals 2

    .prologue
    .line 2117
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    if-gez v0, :cond_1

    .line 2120
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

    .line 2124
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    .line 2125
    const/4 v0, 0x0

    .line 2127
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private wrapForAddToList(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;
    .locals 1

    .prologue
    .line 2008
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$AddToListCallbackWrapper;-><init>(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addNetworkRequestInspector(Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;[Ljava/lang/Class;)V
    .locals 2

    .prologue
    .line 2208
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    if-nez v0, :cond_0

    .line 2209
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "Netflix service is not available. Unable to add a network request inspector"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    :goto_0
    return-void

    .line 2212
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->addNetworkRequestInspector(Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;[Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public addProfile(Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 6

    .prologue
    .line 840
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    invoke-direct {p0, p4}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v5

    .line 842
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v4, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->addProfile(Ljava/lang/String;ZLjava/lang/String;II)V

    .line 846
    :goto_0
    return-void

    .line 844
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "addProfile:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cancelAllImageLoaderRequests()Z
    .locals 3

    .prologue
    .line 241
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 243
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_0

    .line 245
    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "Cancelling all pending image requests"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-interface {v0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->cancelAllRequests()V

    .line 247
    const/4 v0, 0x1

    .line 250
    :goto_0
    return v0

    .line 249
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "Failed to cancell all pending image requests. Image loader not available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public consumeUmaAlert()V
    .locals 2

    .prologue
    .line 766
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->consumeUmaAlert()V

    .line 771
    :goto_0
    return-void

    .line 769
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "recordUserMessageImpression:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;I)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;
    .locals 6

    .prologue
    .line 1942
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

    .prologue
    .line 1964
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

    .prologue
    .line 1935
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getVideoId()Ljava/lang/String;

    move-result-object v4

    .line 1936
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v5

    .line 1937
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getTrackId()I

    move-result v6

    .line 1938
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

    .prologue
    .line 1917
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getVideoId()Ljava/lang/String;

    move-result-object v3

    .line 1918
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    .line 1919
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getTrackId()I

    move-result v5

    .line 1920
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

    .prologue
    .line 973
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 975
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->createAutoLoginToken(JII)V

    .line 976
    const/4 v0, 0x1

    .line 979
    :goto_0
    return v0

    .line 978
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "createAutoLoginToken:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createMementoAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;I)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;
    .locals 6

    .prologue
    .line 1946
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

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 549
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->doOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility$Action;II)V

    .line 553
    :goto_0
    return-void

    .line 551
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "doOnRampEligibilityAction:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public editProfile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 7

    .prologue
    .line 859
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    invoke-direct {p0, p5}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v6

    .line 861
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v5, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->editProfile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V

    .line 865
    :goto_0
    return-void

    .line 863
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "editProfile:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized fetchAndCacheResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 508
    monitor-enter p0

    if-nez p1, :cond_0

    .line 509
    :try_start_0
    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "fetchAndCacheResource:: resourceUrl is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    :goto_0
    monitor-exit p0

    return v0

    .line 512
    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v1

    .line 513
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 514
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

    .line 516
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 517
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v0, p1, p2, v2, v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->fetchAndCacheResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;II)V

    .line 518
    const/4 v0, 0x1

    goto :goto_0

    .line 520
    :cond_2
    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "fetchAndCacheResource:: service is not available"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public fetchAvailableAvatarsList(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    .line 886
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 888
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getAvailableAvatarsList(II)V

    .line 889
    const/4 v0, 0x1

    .line 892
    :goto_0
    return v0

    .line 891
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "fetchAvailableAvatarsList:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 481
    monitor-enter p0

    if-nez p1, :cond_0

    .line 493
    :goto_0
    monitor-exit p0

    return v0

    .line 484
    :cond_0
    :try_start_0
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v1

    .line 485
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 486
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

    .line 488
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 489
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v0, p1, p2, v2, v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;II)V

    .line 490
    const/4 v0, 0x1

    goto :goto_0

    .line 492
    :cond_2
    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "fetchResource:: service is not available"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public fetchSurvey(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 3

    .prologue
    .line 530
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 532
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->fetchSurvey(II)V

    .line 536
    :goto_0
    return-void

    .line 534
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

    .prologue
    .line 815
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getAllProfiles()Ljava/util/List;

    move-result-object v0

    .line 819
    :goto_0
    return-object v0

    .line 818
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getAllProfiles:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mBrowseManager:Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    return-object v0
.end method

.method public getClientId()I
    .locals 1

    .prologue
    .line 2162
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    return v0
.end method

.method public getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    .line 377
    if-eqz v0, :cond_0

    .line 378
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    .line 381
    :goto_0
    return-object v0

    .line 380
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getClientLogging:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    .line 288
    if-eqz v0, :cond_0

    .line 289
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    .line 292
    :goto_0
    return-object v0

    .line 291
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getConfiguration: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentAppLocale()Ljava/lang/String;
    .locals 2

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getCurrentAppLocale()Ljava/lang/String;

    move-result-object v0

    .line 561
    :goto_0
    return-object v0

    .line 560
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getCurrentAppLocale:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;
    .locals 2

    .prologue
    .line 801
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    .line 805
    :goto_0
    return-object v0

    .line 804
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getCurrentProfile:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentProfileGuidOrNull()Ljava/lang/String;
    .locals 1

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    .line 811
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

    .prologue
    .line 617
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    .line 621
    :goto_0
    return-object v0

    .line 620
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getDeviceCategory:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDiagnosis()Lcom/netflix/mediaclient/servicemgr/IDiagnosis;
    .locals 1

    .prologue
    .line 919
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getDiagnosis()Lcom/netflix/mediaclient/servicemgr/IDiagnosis;

    move-result-object v0

    .line 922
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getESNProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    .line 349
    if-eqz v0, :cond_0

    .line 350
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getESN()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    .line 353
    :goto_0
    return-object v0

    .line 352
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getESNProvider:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEndOfGrandfatheringAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;
    .locals 2

    .prologue
    .line 733
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getEndOfGrandfatheringAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    .line 737
    :goto_0
    return-object v0

    .line 736
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getEndOfGrandfatheringAlert:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    .line 390
    if-eqz v0, :cond_0

    .line 391
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    .line 394
    :goto_0
    return-object v0

    .line 393
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getErrorHandler:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;
    .locals 2

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mLocalService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    .line 227
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getImageLoader:: Netflix service is not available or not ready, return null."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    .line 309
    if-eqz v0, :cond_0

    .line 310
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    .line 312
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getMdx:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNrdDeviceModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getNrdDeviceModel()Ljava/lang/String;

    move-result-object v0

    .line 629
    :goto_0
    return-object v0

    .line 628
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getNrdDeviceModel:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNrdpComponentVersion(Lcom/netflix/mediaclient/servicemgr/NrdpComponent;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getNrdpComponentVersion(Lcom/netflix/mediaclient/servicemgr/NrdpComponent;)Ljava/lang/String;

    move-result-object v0

    .line 646
    :goto_0
    return-object v0

    .line 645
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getNrdpComponentVersion:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 413
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    .line 414
    if-nez v1, :cond_0

    .line 415
    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "getOfflineAgent:: service is not available"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :goto_0
    return-object v0

    .line 419
    :cond_0
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v1

    .line 420
    if-nez v1, :cond_1

    .line 421
    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "getOfflineAgent:: is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 425
    :cond_1
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->isOfflineFeatureEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 426
    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "getOfflineAgent:: not available "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 429
    goto :goto_0
.end method

.method public getOfflinePlayableData(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;
    .locals 1

    .prologue
    .line 2223
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2224
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 2226
    if-eqz v0, :cond_0

    .line 2227
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getOfflinePlayableViewData(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v0

    .line 2230
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayer(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)Lcom/netflix/mediaclient/servicemgr/IPlayer;
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    .line 268
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 269
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->OfflinePlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-ne p1, v1, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getOfflinePlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    .line 273
    :goto_0
    return-object v0

    .line 270
    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getNflxPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    goto :goto_0

    .line 272
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

    .line 273
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPushNotification()Lcom/netflix/mediaclient/servicemgr/IPushNotification;
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    .line 363
    if-eqz v0, :cond_0

    .line 364
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getPushNotification()Lcom/netflix/mediaclient/servicemgr/IPushNotification;

    move-result-object v0

    .line 367
    :goto_0
    return-object v0

    .line 366
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getPushNotification:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I
    .locals 1

    .prologue
    .line 2146
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    return v0
.end method

.method public getService()Lcom/netflix/mediaclient/servicemgr/INetflixService;
    .locals 1

    .prologue
    .line 2156
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    .line 2157
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    return-object v0
.end method

.method public getSignUpParams()Lcom/netflix/mediaclient/servicemgr/SignUpParams;
    .locals 2

    .prologue
    .line 685
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getSignUpParams()Lcom/netflix/mediaclient/servicemgr/SignUpParams;

    move-result-object v0

    .line 689
    :goto_0
    return-object v0

    .line 688
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getSignUpParams:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    .line 637
    :goto_0
    return-object v0

    .line 636
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getSoftwareVersion:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserEmail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 724
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getUserEmail()Ljava/lang/String;

    move-result-object v0

    .line 728
    :goto_0
    return-object v0

    .line 727
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getUserEmail:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
    .locals 2

    .prologue
    .line 754
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    .line 758
    :goto_0
    return-object v0

    .line 757
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getUserMessageAlert:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    .line 329
    if-eqz v0, :cond_0

    .line 330
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    .line 333
    :goto_0
    return-object v0

    .line 332
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "getVoip:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWrappedRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 2151
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->wrapForAddToList(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    return v0
.end method

.method public isCurrentProfileIQEnabled()Z
    .locals 2

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->isCurrentProfileIQEnabled()Z

    move-result v0

    .line 796
    :goto_0
    return v0

    .line 795
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "isCurrentProfileIQEnabled:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceHd()Z
    .locals 2

    .prologue
    .line 668
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->isDeviceHd()Z

    move-result v0

    .line 672
    :goto_0
    return v0

    .line 671
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "isDeviceHd:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDolbyDigitalPlus51Supported()Z
    .locals 1

    .prologue
    .line 677
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isDolbyDigitalPlus51Supported()Z

    move-result v0

    .line 680
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNonMemberPlayback()Z
    .locals 2

    .prologue
    .line 586
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->isNonMemberPlayback()Z

    move-result v0

    .line 590
    :goto_0
    return v0

    .line 589
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "isNonMemberPlayback:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOfflineFeatureAvailable()Z
    .locals 1

    .prologue
    .line 403
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

    .prologue
    .line 595
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->isProfileSwitchingDisabled()Z

    move-result v0

    .line 599
    :goto_0
    return v0

    .line 598
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "isProfileSwitchingDisabled:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 2088
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

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->isTablet()Z

    move-result v0

    .line 660
    :goto_0
    return v0

    .line 659
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "isTablet:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserAgeVerified()Z
    .locals 2

    .prologue
    .line 715
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->isUserAgeVerified()Z

    move-result v0

    .line 719
    :goto_0
    return v0

    .line 718
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "isUserAgeVerified:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserLoggedIn()Z
    .locals 2

    .prologue
    .line 706
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->isUserLoggedIn()Z

    move-result v0

    .line 710
    :goto_0
    return v0

    .line 709
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "isUserLoggedIn:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loginUser(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    .line 934
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 936
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->loginUser(Ljava/lang/String;Ljava/lang/String;II)V

    .line 937
    const/4 v0, 0x1

    .line 940
    :goto_0
    return v0

    .line 939
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "loginUser:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loginUserByTokens(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    .line 962
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 964
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->loginUserByTokens(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;II)V

    .line 965
    const/4 v0, 0x1

    .line 968
    :goto_0
    return v0

    .line 967
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "loginUserByTokens:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logoutUser(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    .line 950
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 952
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->logoutUser(II)V

    .line 953
    const/4 v0, 0x1

    .line 956
    :goto_0
    return v0

    .line 955
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "logoutUser:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markSurveysAsRead()V
    .locals 2

    .prologue
    .line 539
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->markSurveysAsRead()V

    .line 544
    :goto_0
    return-void

    .line 542
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "markSurveysAsRead:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public recordPlanSelection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 782
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->recordPlanSelection(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    :goto_0
    return-void

    .line 785
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "recordPlanSelection:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public recordUserMessageImpression(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 774
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->recordUserMessageImpression(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    :goto_0
    return-void

    .line 777
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "recordUserMessageImpression:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshCurrentUserMessageArea()V
    .locals 2

    .prologue
    .line 742
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->refreshCurrentUserMessageArea()V

    .line 747
    :goto_0
    return-void

    .line 745
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "refreshUserMessage:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshProfileSwitchingStatus()V
    .locals 2

    .prologue
    .line 604
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->refreshProfileSwitchingStatus()V

    .line 609
    :goto_0
    return-void

    .line 607
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "refreshProfileSwitchingStatus:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V
    .locals 1

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    .line 1983
    if-eqz v0, :cond_0

    .line 1984
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->register(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    .line 1986
    :cond_0
    return-void
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mServiceListener:Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;

    if-eqz v0, :cond_0

    .line 191
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "ServiceManager unregisterCallback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mServiceListener:Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->unregisterCallback(Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;)V

    .line 194
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "ServiceManager unbindService"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallbackMuxer:Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mCallbackMuxer:Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;->reset()V

    .line 201
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_2
    monitor-exit p0

    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeProfile(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 3

    .prologue
    .line 876
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 878
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->removeProfile(Ljava/lang/String;II)V

    .line 882
    :goto_0
    return-void

    .line 880
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "removeProfile:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public selectProfile(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 823
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->selectProfile(Ljava/lang/String;)V

    .line 828
    :goto_0
    return-void

    .line 826
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "selectProfile:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCurrentAppLocale(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->setCurrentAppLocale(Ljava/lang/String;)V

    .line 568
    const/4 v0, 0x1

    .line 571
    :goto_0
    return v0

    .line 570
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "setCurrentAppLocale:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNonMemberPlayback(Z)Z
    .locals 2

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->setNonMemberPlayback(Z)V

    .line 578
    const/4 v0, 0x1

    .line 581
    :goto_0
    return v0

    .line 580
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "setNonMemberPlayback:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldAlertForMissingLocale()Z
    .locals 2

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->shouldAlertForMissingLocale()Z

    move-result v0

    .line 698
    :goto_0
    return v0

    .line 697
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "shouldAlertForMissingLocale:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 1

    .prologue
    .line 2172
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2173
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->startJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 2175
    :cond_0
    return-void
.end method

.method public stopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 1

    .prologue
    .line 2178
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2179
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->stopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 2181
    :cond_0
    return-void
.end method

.method public uiComingFromBackground()V
    .locals 1

    .prologue
    .line 2166
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    if-eqz v0, :cond_0

    .line 2167
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->uiComingFromBackground()V

    .line 2169
    :cond_0
    return-void
.end method

.method public unregisterAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V
    .locals 1

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    .line 1990
    if-eqz v0, :cond_0

    .line 1991
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->unregister(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    .line 1993
    :cond_0
    return-void
.end method

.method public updateMyListState(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    if-eqz v0, :cond_0

    .line 2003
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->updateState(Ljava/lang/String;Z)V

    .line 2005
    :cond_0
    return-void
.end method

.method public verifyAge(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    .line 908
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 910
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->verifyAge(II)V

    .line 911
    const/4 v0, 0x1

    .line 914
    :goto_0
    return v0

    .line 913
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "verifyAge:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public verifyPin(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z
    .locals 3

    .prologue
    .line 897
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->validateService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->addCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I

    move-result v0

    .line 899
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->mClientId:I

    invoke-interface {v1, p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->verifyPin(Ljava/lang/String;II)V

    .line 900
    const/4 v0, 0x1

    .line 903
    :goto_0
    return v0

    .line 902
    :cond_0
    const-string/jumbo v0, "ServiceManager"

    const-string/jumbo v1, "verifyPin:: service is not available"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willPlayOffline(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 2241
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflinePlayableData(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v0

    .line 2242
    if-eqz v0, :cond_0

    .line 2243
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2242
    :goto_0
    return v0

    .line 2243
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
