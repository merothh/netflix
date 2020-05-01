.class Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;
.super Ljava/lang/Object;
.source "ApmLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_log_apm"


# instance fields
.field private mApplicationSession:Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;

.field private final mAssetRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/logging/apm/UIAssetRequestSession;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

.field private mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

.field private final mDataRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mDialogSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/logging/apm/UIModelessViewSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

.field private mLogoutInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mNetworkConnectionSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/logging/apm/NetworkConnectionSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkStatusMonitor:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;

.field private mNrdpLogSessionId:Ljava/lang/String;

.field private mSharedContextSession:Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;

.field private mUIBrowseStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;

.field private mUIStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;

.field private mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataRequests:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mAssetRequests:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDialogSessions:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mNetworkConnectionSessions:Ljava/util/Map;

    .line 96
    new-instance v0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;-><init>(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mNetworkStatusMonitor:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mLogoutInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    .line 112
    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;ZLjava/lang/String;J)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->doStartApplicationSession(ZLjava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endWifiNetworkConnectivitySession()V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endMobileNetworkConnectivitySession()V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startWifiNetworkConnectivitySession()V

    return-void
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startMobileNetworkConnectivitySession()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)Lcom/netflix/mediaclient/service/logging/EventHandler;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)Lcom/netflix/mediaclient/service/logging/apm/UserSession;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    return-object v0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;Lcom/netflix/mediaclient/service/logging/apm/UserSession;)Lcom/netflix/mediaclient/service/logging/apm/UserSession;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    return-object p1
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mNrdpLogSessionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)Lcom/netflix/mediaclient/service/logging/client/model/DataContext;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->sendUserSessionEvent(Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startWiredNetworkConnectivitySession()V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endWiredNetworkConnectivitySession()V

    return-void
.end method

.method private doStartApplicationSession(ZLjava/lang/String;J)V
    .locals 3

    .prologue
    .line 150
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 151
    new-instance v2, Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;-><init>()V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mApplicationSession:Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;

    .line 152
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mApplicationSession:Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;->setId(J)V

    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mApplicationSession:Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 154
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Application session start event posting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mApplicationSession:Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;->createStartEvent(Z)Lcom/netflix/mediaclient/service/logging/apm/model/AppSessionStartedEvent;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 157
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 158
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Application session start event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method

.method private endMobileNetworkConnectivitySession()V
    .locals 3

    .prologue
    .line 1010
    const-string/jumbo v0, "mobileNetworkConnection"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleEndedNetworkConnectionSession(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1011
    return-void
.end method

.method private endWifiNetworkConnectivitySession()V
    .locals 3

    .prologue
    .line 1002
    const-string/jumbo v0, "wifiNetworkConnection"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleEndedNetworkConnectionSession(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1003
    return-void
.end method

.method private endWiredNetworkConnectivitySession()V
    .locals 3

    .prologue
    .line 994
    const-string/jumbo v0, "wiredNetworkConnection"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleEndedNetworkConnectionSession(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 995
    return-void
.end method

.method private handleABConfigDataLoadedEvent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 936
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "AB_CONFIG_DATA_LOADED_EVENT"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->reportABConfigDataLoadedEvent()V

    .line 938
    return-void
.end method

.method private handleABConfigDataReceivedEvent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 931
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "AB_CONFIG_DATA_RECEIVED_EVENT"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->reportABConfigDataReceivedEvent()V

    .line 933
    return-void
.end method

.method private handleABTestLoadedEvent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 915
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "AB_TEST_LOADED_EVENT"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const-string/jumbo v0, "ABTestID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 918
    const-string/jumbo v1, "ABTestCellID"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 919
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->reportABTestLoadedEvent(Ljava/lang/String;I)V

    .line 920
    return-void
.end method

.method private handleABTestReceivedEvent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 923
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "AB_TEST_RECEIVED_EVENT"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const-string/jumbo v0, "ABTestID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 926
    const-string/jumbo v1, "ABTestCellID"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 927
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->reportABTestReceivedEvent(Ljava/lang/String;I)V

    .line 928
    return-void
.end method

.method private handleAssetRequestEnded(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 832
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "Handle asset request ended intent. Running it on main thread."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 835
    const-string/jumbo v1, "reason"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v4

    .line 840
    :try_start_0
    const-string/jumbo v1, "error"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 841
    :try_start_1
    const-string/jumbo v2, "http_response"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 845
    :goto_0
    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endAssetRequestSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 846
    return-void

    .line 842
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    .line 843
    :goto_1
    const-string/jumbo v5, "nf_log_apm"

    const-string/jumbo v6, "Failed to parse properties"

    invoke-static {v5, v6, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 842
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private handleAssetRequestStarted(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 823
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Handle asset request started intent. Running it on main thread."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 826
    const-string/jumbo v1, "asset_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    move-result-object v1

    .line 827
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startAssetRequestSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;)Ljava/lang/String;

    .line 828
    return-void
.end method

.method private handleDataRequestEnded(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 859
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Handle data request ended intent. Running it on main thread."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const-string/jumbo v0, "request_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 862
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v3

    .line 868
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 869
    :try_start_1
    const-string/jumbo v0, "http_response"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 870
    :try_start_2
    const-string/jumbo v0, "falkorPathResults"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/FalkorPathResult;->createList(Ljava/lang/String;)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    :goto_0
    move-object v0, p0

    .line 874
    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endDataRequestSession(Ljava/lang/String;Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 875
    return-void

    .line 871
    :catch_0
    move-exception v0

    move-object v4, v2

    move-object v5, v2

    .line 872
    :goto_1
    const-string/jumbo v6, "nf_log_apm"

    const-string/jumbo v7, "Failed to parse properties"

    invoke-static {v6, v7, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 871
    :catch_1
    move-exception v0

    move-object v4, v2

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private handleDataRequestStarted(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 850
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Handle data request started intent. Running it on main thread."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 853
    const-string/jumbo v1, "request_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 854
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startDataRequestSession(Ljava/lang/String;Ljava/lang/String;)Z

    .line 855
    return-void
.end method

.method private handleDialogDisplayed(Landroid/content/Intent;Z)V
    .locals 2

    .prologue
    .line 808
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "DIALOG_DISPLAYED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const-string/jumbo v0, "dialog_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    .line 810
    const-string/jumbo v1, "dialog_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 811
    invoke-virtual {p0, p2, v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startUiModelessViewSession(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V

    .line 812
    return-void
.end method

.method private handleDialogRemoved(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 816
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "DIALOG_REMOVED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const-string/jumbo v0, "dialog_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 818
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endUiModelessViewSession(Ljava/lang/String;)V

    .line 819
    return-void
.end method

.method private handleEndedNetworkConnectionSession(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 4

    .prologue
    .line 976
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mNetworkConnectionSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/apm/NetworkConnectionSession;

    .line 977
    if-eqz v0, :cond_2

    .line 978
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 979
    const-string/jumbo v1, "nf_log_apm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Terminated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " networking sessio!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 991
    :cond_1
    :goto_0
    return-void

    .line 987
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 988
    const-string/jumbo v0, "nf_log_apm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Trying to terminate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " networking session that does not exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleLocalSettingsChange(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 908
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "LOCAL_SETTINGS_CHANGE_BANDWIDTH"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const-string/jumbo v0, "localSettingData"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 911
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->localSettingsChange(Ljava/lang/String;)V

    .line 912
    return-void
.end method

.method private handlePreappAddWidget(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 891
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "PREAPP_ADD_WIDGET"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const-string/jumbo v0, "widgetData"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 894
    const-string/jumbo v1, "eventTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 895
    invoke-virtual {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->preappAddWidget(Ljava/lang/String;J)V

    .line 896
    return-void
.end method

.method private handlePreappDeleteWidget(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 899
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "PREAPP_DELETE_WIDGET"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const-string/jumbo v0, "widgetData"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 902
    const-string/jumbo v1, "eventTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 903
    invoke-virtual {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->preappDeleteWidget(Ljava/lang/String;J)V

    .line 904
    return-void
.end method

.method private handleSharedContextEnded(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 802
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "SHARED_CONTEXT_SESSION_ENDED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endSharedContextSession()V

    .line 804
    return-void
.end method

.method private handleSharedContextStarted(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 795
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "SHARED_CONTEXT_SESSION_STARTED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const-string/jumbo v0, "uuid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 797
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startSharedContextSession(Ljava/lang/String;)V

    .line 798
    return-void
.end method

.method private handleStartNetworkConnectionSession(Lcom/netflix/mediaclient/service/logging/apm/NetworkConnectionSession;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 4

    .prologue
    .line 955
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mNetworkConnectionSessions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/apm/NetworkConnectionSession;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/apm/NetworkConnectionSession;

    .line 956
    if-eqz v0, :cond_0

    .line 957
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mNetworkConnectionSessions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/apm/NetworkConnectionSession;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 966
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/apm/NetworkConnectionSession;->createStartEvent()Lcom/netflix/mediaclient/service/logging/client/model/Event;

    move-result-object v0

    .line 967
    invoke-direct {p0, v0, p2, p3}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 968
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 969
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 970
    const-string/jumbo v1, "nf_log_apm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Started network connection session, event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_2

    const-string/jumbo v0, "n/a"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_1
    return-void

    .line 970
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleViewChanged(Landroid/content/Intent;Z)V
    .locals 2

    .prologue
    .line 879
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI_MODAL_VIEW_CHANGED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const-string/jumbo v0, "view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    .line 881
    invoke-virtual {p0, p2, v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->uiViewChanged(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 882
    return-void
.end method

.method private handleViewImpressionEvent(Landroid/content/Intent;Z)V
    .locals 2

    .prologue
    .line 885
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI_MODAL_VIEW_IMPRESSION_EVENT"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const-string/jumbo v0, "view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    .line 887
    invoke-virtual {p0, p2, v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->uiViewImpressionEvent(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 888
    return-void
.end method

.method private populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 699
    if-nez p1, :cond_0

    .line 705
    :goto_0
    return-void

    .line 703
    :cond_0
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 704
    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setModalView(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    goto :goto_0
.end method

.method private sendUserSessionEvent(Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 288
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 289
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 290
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "User session start event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void
.end method

.method private startMobileNetworkConnectivitySession()V
    .locals 3

    .prologue
    .line 1006
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/MobileNetworkConnectionSession;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/apm/MobileNetworkConnectionSession;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleStartNetworkConnectionSession(Lcom/netflix/mediaclient/service/logging/apm/NetworkConnectionSession;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1007
    return-void
.end method

.method private startWifiNetworkConnectivitySession()V
    .locals 3

    .prologue
    .line 998
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/WifiNetworkConnectionSession;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/apm/WifiNetworkConnectionSession;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleStartNetworkConnectionSession(Lcom/netflix/mediaclient/service/logging/apm/NetworkConnectionSession;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 999
    return-void
.end method

.method private startWiredNetworkConnectivitySession()V
    .locals 3

    .prologue
    .line 950
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/WiredNetworkConnectionSession;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/apm/WiredNetworkConnectionSession;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleStartNetworkConnectionSession(Lcom/netflix/mediaclient/service/logging/apm/NetworkConnectionSession;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 951
    return-void
.end method


# virtual methods
.method public declared-synchronized endAllActiveSessions()V
    .locals 7

    .prologue
    .line 1201
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mLogoutInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1203
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endMobileNetworkConnectivitySession()V

    .line 1204
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endWifiNetworkConnectivitySession()V

    .line 1205
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endWiredNetworkConnectivitySession()V

    .line 1206
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endSharedContextSession()V

    .line 1207
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endUiBrowseStartupSession(JZLcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1208
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endUiStartupSession(ZLcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/media/PlayerType;)V

    .line 1210
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 1211
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1212
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1213
    const/4 v2, 0x0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endDataRequestSession(Ljava/lang/String;Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1216
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mAssetRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 1217
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mAssetRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1218
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1219
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endAssetRequestSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    goto :goto_1

    .line 1222
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDialogSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 1223
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDialogSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1224
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1225
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endUiModelessViewSession(Ljava/lang/String;)V

    goto :goto_2

    .line 1228
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1229
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mAssetRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1230
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mNetworkConnectionSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1231
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDialogSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1233
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;->logout:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;J)V

    .line 1234
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endApplicationSession()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1235
    monitor-exit p0

    return-void
.end method

.method public endApplicationSession()V
    .locals 3

    .prologue
    .line 164
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Application session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mApplicationSession:Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;

    if-nez v0, :cond_0

    .line 166
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Application session does NOT exist!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mApplicationSession:Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 170
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Application session end event posting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mApplicationSession:Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/apm/model/AppSessionEndedEvent;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 173
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mApplicationSession:Lcom/netflix/mediaclient/service/logging/apm/ApplicationSession;

    .line 175
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Application session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endAssetRequestSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 3

    .prologue
    .line 593
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mAssetRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/apm/UIAssetRequestSession;

    .line 594
    if-nez v0, :cond_0

    .line 605
    :goto_0
    return-void

    .line 598
    :cond_0
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "Asset request session ended"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 600
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "Asset request session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-virtual {v0, p2, p3, p4}, Lcom/netflix/mediaclient/service/logging/apm/UIAssetRequestSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;Lcom/netflix/mediaclient/service/logging/client/model/Error;)Lcom/netflix/mediaclient/service/logging/apm/model/UIAssetRequestSessionEndedEvent;

    move-result-object v0

    .line 602
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 603
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 604
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Asset request session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endDataRequestSession(Ljava/lang/String;Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/model/FalkorPathResult;",
            ">;",
            "Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;",
            "Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;",
            "Lcom/netflix/mediaclient/service/logging/client/model/Error;",
            ")V"
        }
    .end annotation

    .prologue
    .line 550
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;

    .line 551
    if-nez v0, :cond_0

    .line 562
    :goto_0
    return-void

    .line 555
    :cond_0
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "Data request session ended"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 557
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "Data request session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-virtual {v0, p3, p4, p5}, Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/HttpResponse;Lcom/netflix/mediaclient/service/logging/client/model/Error;)Lcom/netflix/mediaclient/service/logging/apm/model/UIDataRequestSessionEndedEvent;

    move-result-object v0

    .line 559
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 560
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 561
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Data request session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endPerformanceSession(Lcom/netflix/mediaclient/service/logging/perf/PerfSession;)V
    .locals 3

    .prologue
    .line 635
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getEndEvent()Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;

    move-result-object v0

    .line 636
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 637
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, p1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 638
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 639
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    const-string/jumbo v0, "nf_log_apm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": session end event posted."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_0
    return-void
.end method

.method public endSharedContextSession()V
    .locals 3

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mSharedContextSession:Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;

    if-nez v0, :cond_0

    .line 1192
    :goto_0
    return-void

    .line 1184
    :cond_0
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Shared context session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mSharedContextSession:Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/apm/model/SharedContextSessionEndedEvent;

    move-result-object v0

    .line 1186
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "Shared context session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 1188
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mSharedContextSession:Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 1189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mSharedContextSession:Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;

    .line 1191
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Shared context session end done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endUiBrowseStartupSession(JZLcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIBrowseStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;

    if-nez v0, :cond_0

    .line 388
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI browse startup session is null - bailing early"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :goto_0
    return-void

    .line 392
    :cond_0
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI browse startup session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIBrowseStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 394
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI browse startup session end event posting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIBrowseStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;->createEndedEvent(JZLcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionEndedEvent;

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 398
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIBrowseStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;

    .line 401
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI browse startup session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endUiModelessViewSession(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDialogSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/apm/UIModelessViewSession;

    .line 426
    if-nez v0, :cond_1

    .line 427
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    const-string/jumbo v0, "nf_log_apm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UI modeless session does NOT exist for request ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "UI modeless session ended"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 435
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "UI modeless session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/apm/UIModelessViewSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionEndedEvent;

    move-result-object v0

    .line 437
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 438
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 439
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI modeless session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endUiStartupSession(ZLcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/media/PlayerType;)V
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;

    if-nez v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 361
    :cond_0
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI startup session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 363
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI startup session end event posting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->createEndedEvent(ZLcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/media/PlayerType;)Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 366
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;

    .line 369
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI startup session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;J)V
    .locals 6

    .prologue
    .line 296
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "User session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    if-nez v0, :cond_0

    .line 298
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "User session does NOT exist!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/apm/UserSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;JLcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;

    move-result-object v0

    .line 303
    if-nez v0, :cond_1

    .line 304
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "User session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 308
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 309
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "User session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    .line 312
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "User session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getCurrentUiView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method public handleConnectivityChange(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mNetworkStatusMonitor:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$NetworkStatusMonitor;->handleConnectivityChange(Landroid/content/Context;)V

    .line 1021
    return-void
.end method

.method public handleIntent(Landroid/content/Intent;Z)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 710
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 713
    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 783
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 784
    const-string/jumbo v0, "nf_log_apm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "We do not support action "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    .line 790
    :goto_1
    return v0

    .line 713
    :sswitch_0
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_ASSET_REQUEST_STARTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_ASSET_REQUEST_ENDED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_DATA_REQUEST_STARTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_DATA_REQUEST_ENDED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_DIALOG_DISPLAYED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_DIALOG_REMOVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_UI_MODAL_VIEW_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_UI_MODAL_VIEW_IMPRESSION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_PREAPP_ADD_WIDGET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_PREAPP_DELETE_WIDGET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_DATA_SHARED_CONTEXT_SESSION_STARTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_DATA_SHARED_CONTEXT_SESSION_ENDED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_LOCAL_SETTINGS_BW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_AB_TEST_LOADED_EVENT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_AB_TEST_RECEIVED_EVENT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_AB_CONFIG_DATA_LOADED_EVENT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.LOG_APM_AB_CONFIG_DATA_RECEIVED_EVENT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_0

    .line 715
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleAssetRequestStarted(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 719
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleAssetRequestEnded(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 723
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleDataRequestStarted(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 727
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleDataRequestEnded(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 731
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleDialogDisplayed(Landroid/content/Intent;Z)V

    goto/16 :goto_1

    .line 735
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleDialogRemoved(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 739
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleViewChanged(Landroid/content/Intent;Z)V

    goto/16 :goto_1

    .line 743
    :pswitch_7
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleViewImpressionEvent(Landroid/content/Intent;Z)V

    goto/16 :goto_1

    .line 747
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handlePreappAddWidget(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 751
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handlePreappDeleteWidget(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 755
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleSharedContextStarted(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 759
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleSharedContextEnded(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 763
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleLocalSettingsChange(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 767
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleABTestLoadedEvent(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 771
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleABTestReceivedEvent(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 775
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleABConfigDataLoadedEvent(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 779
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleABConfigDataReceivedEvent(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 713
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4b72bf07 -> :sswitch_d
        -0x1ce3b4ef -> :sswitch_1
        -0x102e62ba -> :sswitch_2
        -0xfd2c86b -> :sswitch_e
        0x65f86c1 -> :sswitch_9
        0xddc70f9 -> :sswitch_8
        0x1e25fe4c -> :sswitch_f
        0x1e499513 -> :sswitch_5
        0x29b289f3 -> :sswitch_c
        0x43b8dfb9 -> :sswitch_a
        0x48b12710 -> :sswitch_7
        0x568bec28 -> :sswitch_10
        0x67e498bf -> :sswitch_3
        0x70353aed -> :sswitch_6
        0x748b14d4 -> :sswitch_4
        0x798fdbf2 -> :sswitch_b
        0x7be60318 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public isLogoutInProgress()Z
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mLogoutInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isUserSessionExist()Z
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public localSettingsChange(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 469
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "local setting log data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/android/settings/model/LocalSettingsChangeEvent;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/android/settings/model/LocalSettingsChangeEvent;-><init>(Ljava/lang/String;)V

    .line 474
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 475
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "local setting event done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return-void
.end method

.method public logoutCompleted()V
    .locals 2

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mLogoutInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1243
    return-void
.end method

.method public preappAddWidget(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 445
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "preapp add widget"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;->ADD:Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent;-><init>(Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;Ljava/lang/String;J)V

    .line 450
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 451
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "preapp add widget done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-void
.end method

.method public preappDeleteWidget(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 457
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "preapp delete widget"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;->DELETE:Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent;-><init>(Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;Ljava/lang/String;J)V

    .line 462
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 463
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "preapp delete widget done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    return-void
.end method

.method public reportABConfigDataLoadedEvent()V
    .locals 2

    .prologue
    .line 671
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "All AB config data loaded event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/abconfig/ABConfigDataLoadedEvent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/abconfig/ABConfigDataLoadedEvent;-><init>()V

    .line 676
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 677
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "All AB config data loaded event done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return-void
.end method

.method public reportABConfigDataReceivedEvent()V
    .locals 2

    .prologue
    .line 683
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "All AB config data received event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/abconfig/ABConfigDataReceivedEvent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/abconfig/ABConfigDataReceivedEvent;-><init>()V

    .line 688
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 689
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "All AB config data received event done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    return-void
.end method

.method public reportABTestLoadedEvent(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 647
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "AB test loaded event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/abconfig/ABTestLoadedEvent;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/abconfig/ABTestLoadedEvent;-><init>(Ljava/lang/String;I)V

    .line 652
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 653
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "AB test loaded event done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    return-void
.end method

.method public reportABTestReceivedEvent(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 659
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "AB test received event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/abconfig/ABTestReceivedEvent;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/abconfig/ABTestReceivedEvent;-><init>(Ljava/lang/String;I)V

    .line 664
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 665
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "AB test received event done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    return-void
.end method

.method public reportPerformanceEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V
    .locals 3

    .prologue
    .line 614
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 615
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 616
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    const-string/jumbo v0, "nf_log_apm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": event posted."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_0
    return-void
.end method

.method public setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V
    .locals 0

    .prologue
    .line 694
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    .line 695
    return-void
.end method

.method public startApplicationSession(Z)V
    .locals 5

    .prologue
    .line 117
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Application session created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const-string/jumbo v1, "nf_log_apm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startApplicationSession: Application id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 125
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v4, "Application ID is ready, start application session..."

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->doStartApplicationSession(ZLjava/lang/String;J)V

    .line 147
    :goto_0
    return-void

    .line 129
    :cond_1
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Application ID is not received from NRDLIb yet, postpone application session start..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    new-instance v1, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$1;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$1;-><init>(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;ZJ)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->setAppIdSetListener(Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;)V

    goto :goto_0
.end method

.method public startAssetRequestSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 568
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mAssetRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/apm/UIAssetRequestSession;

    .line 569
    if-eqz v0, :cond_1

    .line 570
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    const-string/jumbo v0, "nf_log_apm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UI Asset request session already in progress for URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object p1, v1

    .line 587
    :goto_0
    return-object p1

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    const-string/jumbo v2, "uiQOE"

    const-string/jumbo v3, "uiAssetRequest"

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/EventHandler;->canSendEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 577
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v2, "Asset request started. Asset request tracking is not enabled. Done."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v1

    .line 578
    goto :goto_0

    .line 581
    :cond_2
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Asset request session created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/UIAssetRequestSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/apm/UIAssetRequestSession;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;)V

    .line 584
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 585
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mAssetRequests:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Asset session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startDataRequestSession(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 519
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "Data request session: url is empty, can not create session!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :goto_0
    return v0

    .line 524
    :cond_0
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 525
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "Data request session: requestId is empty, can not create session!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 529
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    const-string/jumbo v2, "uiQOE"

    const-string/jumbo v3, "uiDataRequest"

    invoke-interface {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/EventHandler;->canSendEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 530
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "Data request started. Data request tracking is not enabled. Done."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 535
    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/apm/UIDataRequestSession;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 537
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataRequests:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 540
    const-string/jumbo v0, "nf_log_apm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UI data request session added for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_3
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Data session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startPerformanceSession(Lcom/netflix/mediaclient/service/logging/perf/PerfSession;)V
    .locals 3

    .prologue
    .line 623
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getStartEvent()Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;

    move-result-object v0

    .line 624
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mNrdpLogSessionId:Ljava/lang/String;

    .line 625
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, p1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 626
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 627
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 628
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    const-string/jumbo v0, "nf_log_apm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": session start event posted."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_0
    return-void
.end method

.method public startSharedContextSession(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1154
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1155
    const-string/jumbo v0, "nf_log_apm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Shared context session started with uuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :cond_0
    if-nez p1, :cond_1

    .line 1159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "UUID can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1161
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mSharedContextSession:Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;

    if-eqz v0, :cond_2

    .line 1162
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Shared context session already exist, we do not recreate it!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    :goto_0
    return-void

    .line 1165
    :cond_2
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Shared context session created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mSharedContextSession:Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;

    .line 1167
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mSharedContextSession:Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 1168
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mSharedContextSession:Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/apm/SharedContextSession;->createStartEvent()Lcom/netflix/mediaclient/service/logging/apm/model/SharedContextSessionStartedEvent;

    move-result-object v0

    .line 1169
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 1171
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "Shared context start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startUiBrowseStartupSession(J)V
    .locals 3

    .prologue
    .line 375
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI browse startup session started."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;-><init>()V

    .line 377
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;->setStarted(J)V

    .line 380
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIBrowseStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 381
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 382
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIBrowseStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIBrowseStartupSession;

    .line 383
    return-void
.end method

.method public startUiModelessViewSession(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 407
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    const-string/jumbo v0, "nf_log_apm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UI modeless session created for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". In portrait "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Dialog ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/UIModelessViewSession;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/apm/UIModelessViewSession;-><init>()V

    .line 411
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDialogSessions:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 413
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "UI modeless session start event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/apm/UIModelessViewSession;->createStartEvent(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/apm/model/UIModelessViewSessionStartedEvent;

    move-result-object v0

    .line 416
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 417
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 419
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI modeless session start event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-void
.end method

.method public startUiStartupSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;ILjava/lang/String;Ljava/util/Map;Ljava/lang/Long;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;",
            "Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Long;",
            "Lcom/netflix/mediaclient/service/logging/apm/model/Display;",
            "Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;",
            "Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 341
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI startup session created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;-><init>(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;ILjava/lang/String;Ljava/util/Map;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V

    .line 344
    if-eqz p6, :cond_0

    .line 345
    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->setStarted(J)V

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 351
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;

    .line 352
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 353
    return-void
.end method

.method public startUiStartupSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/Long;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V
    .locals 6

    .prologue
    .line 319
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;

    if-eqz v0, :cond_0

    .line 320
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI startup session already exist, we do not recreate it!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_0
    return-void

    .line 324
    :cond_0
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI startup session created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;-><init>(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V

    .line 327
    if-eqz p3, :cond_1

    .line 328
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->setStarted(J)V

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 333
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUIStartupSession:Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;

    .line 334
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    goto :goto_0
.end method

.method public startUserSession()V
    .locals 6

    .prologue
    .line 264
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    if-eqz v0, :cond_0

    .line 265
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "User session already exist"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_0
    return-void

    .line 268
    :cond_0
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "User session started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->getUserSessionId()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    const-string/jumbo v1, "nf_log_apm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startUserSession: Current nrdp.log.sessionid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_1
    new-instance v1, Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/apm/UserSession;-><init>()V

    .line 277
    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    .line 278
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/apm/UserSession;->setId(J)V

    .line 279
    const-string/jumbo v2, "nf_log_apm"

    const-string/jumbo v3, "User session start event posting..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->logout:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/netflix/mediaclient/service/logging/apm/UserSession;->createStartEvent(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;J)Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;

    move-result-object v1

    .line 281
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mNrdpLogSessionId:Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 283
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v1, v0, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->sendUserSessionEvent(Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    goto :goto_0
.end method

.method public startUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;)V
    .locals 2

    .prologue
    .line 180
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;J)V

    .line 181
    return-void
.end method

.method public startUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;J)V
    .locals 6

    .prologue
    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    if-eqz v0, :cond_0

    .line 187
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "User session already exist"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_0
    return-void

    .line 190
    :cond_0
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "User session started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/apm/UserSession;-><init>()V

    .line 194
    const-string/jumbo v1, "nf_log_apm"

    const-string/jumbo v2, "User session start event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/apm/UserSession;->createStartEvent(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;J)Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;

    move-result-object v1

    .line 197
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->getUserSessionId()Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    const-string/jumbo v3, "nf_log_apm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startUserSession: Current nrdp.log.sessionid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string/jumbo v3, "nf_log_apm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startUserSession: Last used nrdp.log.sessionid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mNrdpLogSessionId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_1
    new-instance v3, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl$2;-><init>(Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;Lcom/netflix/mediaclient/service/logging/apm/UserSession;Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;)V

    .line 235
    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mNrdpLogSessionId:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 236
    const-string/jumbo v4, "nf_log_apm"

    const-string/jumbo v5, "We never used nrdp.log.sessionid, use it now if user session exist in nrdp"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 238
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "User session is not yet created. This should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v3}, Lcom/netflix/mediaclient/service/logging/EventHandler;->createUserSession(Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;)V

    goto/16 :goto_0

    .line 242
    :cond_2
    const-string/jumbo v3, "nf_log_apm"

    const-string/jumbo v4, "User session is created. Set it to event and post event"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    invoke-interface {v3, v4}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 244
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    .line 245
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/netflix/mediaclient/service/logging/apm/UserSession;->setId(J)V

    .line 246
    iput-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mNrdpLogSessionId:Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 248
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mUserSession:Lcom/netflix/mediaclient/service/logging/apm/UserSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/apm/UserSession;->getId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v1, v0, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->sendUserSessionEvent(Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    goto/16 :goto_0

    .line 254
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v3}, Lcom/netflix/mediaclient/service/logging/EventHandler;->createUserSession(Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;)V

    goto/16 :goto_0
.end method

.method public uiViewChanged(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 3

    .prologue
    .line 494
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    const-string/jumbo v0, "nf_log_apm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UI view changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_0
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 498
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewChangedEvent;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewChangedEvent;-><init>(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 499
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 500
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 501
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI view changed event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void
.end method

.method public uiViewChanged(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;J)V
    .locals 3

    .prologue
    .line 505
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    const-string/jumbo v0, "nf_log_apm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UI view changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 509
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewChangedEvent;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewChangedEvent;-><init>(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 510
    invoke-virtual {v0, p3, p4}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setTime(J)V

    .line 511
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 512
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 513
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI view changed event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return-void
.end method

.method public uiViewImpressionEvent(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 3

    .prologue
    .line 481
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    const-string/jumbo v0, "nf_log_apm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UI view impression "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_0
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 485
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewImpressionEvent;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/apm/model/UIModalViewImpressionEvent;-><init>(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 486
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mCurrentUiView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 487
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 488
    const-string/jumbo v0, "nf_log_apm"

    const-string/jumbo v1, "UI impression event event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return-void
.end method
