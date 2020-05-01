.class final Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;
.super Ljava/lang/Object;
.source "UserActionLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/UserActionLogging;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_log"

.field private static final excludedViewsSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAcknowledgeSignup:Lcom/netflix/mediaclient/service/logging/uiaction/AcknowledgeSignupSession;

.field private mAddProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddProfileSession;

.field private mAddToPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddToPlaylistSession;

.field private mChangeValueSession:Lcom/netflix/mediaclient/service/logging/uiaction/model/ChangeValueSession;

.field private mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

.field private mDeleteProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;

.field private mDeserializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeserializeLolomoSession;

.field private mEditProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/EditProfileSession;

.field private mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

.field private mLoginSession:Lcom/netflix/mediaclient/service/logging/uiaction/LoginSession;

.field private mNavigationSession:Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;

.field private mNewLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/NewLolomoSession;

.field private mPostPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;

.field private mPreAppWidgetActionSession:Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;

.field private mPrefetchLolomoJobSession:Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;

.field private mRateTitleSession:Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;

.field private mRegisterSession:Lcom/netflix/mediaclient/service/logging/uiaction/RegisterSession;

.field private mRemoveFromPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;

.field private mSearchSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/netflix/mediaclient/service/logging/uiaction/SearchSession;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;

.field private mSerializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;

.field private mShareSheetOpenSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;

.field private mShareSheetSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;

.field private mStartPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;

.field private mSubmitPaymentSession:Lcom/netflix/mediaclient/service/logging/uiaction/SubmitPaymentSession;

.field private mSurveyQuestionSession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveyQuestionSession;

.field private mSurveySession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveySession;

.field private mUpgradeStreamsSession:Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;

.field private mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 121
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v2, 0x0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->movieDetails:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->excludedViewsSet:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/service/logging/EventHandler;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V
    .locals 2

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSearchSessions:Ljava/util/Map;

    .line 126
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    .line 127
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    .line 128
    return-void
.end method

.method private handleAcknowledgeSignupEnded(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1501
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1502
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1503
    const-string/jumbo v3, "view"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1508
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1515
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1516
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v2

    .line 1518
    :goto_1
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1519
    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1521
    :cond_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endAcknowledgeSignupSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1522
    return-void

    .line 1509
    :catch_0
    move-exception v0

    .line 1510
    const-string/jumbo v4, "nf_log"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v2, v1

    goto :goto_1
.end method

.method private handleAcknowledgeSignupStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1487
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1489
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1490
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1492
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1494
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1495
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1497
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startAcknowledgeSignupSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1498
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleAddProfileEnded(Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 2061
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2062
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2063
    const-string/jumbo v0, "view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2065
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2066
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    .line 2072
    :goto_0
    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2078
    :goto_1
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2079
    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 2081
    :cond_0
    new-instance v3, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;

    const-string/jumbo v4, "profile_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "profile_name"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "profile_age"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "profile_is_kids"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 2082
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endAddProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)V

    .line 2083
    return-void

    .line 2073
    :catch_0
    move-exception v2

    .line 2074
    const-string/jumbo v4, "nf_log"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleAddProfileStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2046
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2048
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2049
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 2051
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2053
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2054
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 2056
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startAddProfileSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 2057
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleAddToPlaylistEnded(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1540
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1541
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1542
    const-string/jumbo v3, "title_rank"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1546
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1552
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1553
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 1555
    :cond_0
    invoke-virtual {p0, v1, v0, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endAddToPlaylistSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;I)V

    .line 1556
    return-void

    .line 1547
    :catch_0
    move-exception v0

    .line 1548
    const-string/jumbo v4, "nf_log"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleAddToPlaylistStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1526
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1528
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1529
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1531
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1533
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1534
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1536
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startAddToPlaylistSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1537
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleChangeValueEnded(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1645
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1646
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1647
    const-string/jumbo v3, "new_value"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1651
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1657
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1658
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 1660
    :cond_0
    invoke-virtual {p0, v1, v0, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endChangeValueSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V

    .line 1661
    return-void

    .line 1652
    :catch_0
    move-exception v0

    .line 1653
    const-string/jumbo v4, "nf_log"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleChangeValueStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1631
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1633
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1634
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1636
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1638
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1639
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1641
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startChangeValueSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1642
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleDeleteProfileEnded(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2103
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2104
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2105
    const-string/jumbo v0, "view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2107
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2108
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    .line 2114
    :goto_0
    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2120
    :goto_1
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2121
    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 2124
    :cond_0
    invoke-virtual {p0, v1, v0, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endDeleteProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 2125
    return-void

    .line 2115
    :catch_0
    move-exception v2

    .line 2116
    const-string/jumbo v4, "nf_log"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleDeleteProfileStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2087
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2089
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2090
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 2092
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2094
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2095
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 2097
    :cond_0
    const-string/jumbo v2, "profile_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2098
    invoke-virtual {p0, v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startDeleteProfileSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 2099
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleDeserializeLolomoEnded(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2258
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2259
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2264
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2270
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2271
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 2274
    :cond_0
    const-string/jumbo v2, "lolomoTtl"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2275
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endDeserializeLolomoSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V

    .line 2276
    return-void

    .line 2265
    :catch_0
    move-exception v0

    .line 2266
    const-string/jumbo v3, "nf_log"

    const-string/jumbo v4, "Failed JSON"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleDeserializeLolomoStarted(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2244
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2246
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2247
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 2249
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2251
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2252
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 2254
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startDeserializeLolomoSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 2255
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleEditProfileEnded(Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 2144
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2145
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2146
    const-string/jumbo v0, "view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2148
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2149
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    .line 2155
    :goto_0
    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2161
    :goto_1
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2162
    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 2165
    :cond_0
    new-instance v3, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;

    const-string/jumbo v4, "profile_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "profile_name"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "profile_age"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "profile_is_kids"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 2166
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endEditProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)V

    .line 2167
    return-void

    .line 2156
    :catch_0
    move-exception v2

    .line 2157
    const-string/jumbo v4, "nf_log"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleEditProfileStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2129
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2131
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2132
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 2134
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2136
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2137
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 2139
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startEditProfileSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 2140
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleLoginEnded(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1678
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1679
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1683
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1689
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1690
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 1692
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endLoginSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1693
    return-void

    .line 1684
    :catch_0
    move-exception v0

    .line 1685
    const-string/jumbo v3, "nf_log"

    const-string/jumbo v4, "Failed JSON"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleLoginStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1664
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1666
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1667
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1669
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1671
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1672
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1674
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startLoginSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1675
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleNavigationEnded(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1712
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1713
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1716
    const-string/jumbo v0, "view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1718
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1719
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    move-object v2, v0

    .line 1723
    :goto_0
    :try_start_0
    invoke-static {v4}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1729
    :goto_1
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1730
    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 1732
    :cond_0
    invoke-virtual {p0, v2, v1, v0}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endNavigationSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1733
    return-void

    .line 1724
    :catch_0
    move-exception v0

    .line 1725
    const-string/jumbo v4, "nf_log"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v2, v1

    goto :goto_0
.end method

.method private handleNavigationStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1697
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1699
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1700
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1702
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1704
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1705
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1707
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startNavigationSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1708
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleNewLolomoEnded(Landroid/content/Intent;)V
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 1377
    const-string/jumbo v1, "reason"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1378
    const-string/jumbo v2, "error"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1379
    const-string/jumbo v3, "view"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1380
    const-string/jumbo v3, "renoCause"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1381
    const-string/jumbo v3, "renoMessageGuid"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1382
    const-string/jumbo v3, "renoCreationTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p1, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1383
    const-string/jumbo v3, "mercuryMessageGuid"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1384
    const-string/jumbo v3, "mercuryEventGuid"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1389
    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1396
    :goto_0
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1397
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 1399
    :goto_1
    invoke-static {v10}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1400
    invoke-static {v10}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    :goto_2
    move-object v0, p0

    .line 1402
    invoke-virtual/range {v0 .. v9}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endNewLolomoSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1403
    return-void

    .line 1390
    :catch_0
    move-exception v2

    .line 1391
    const-string/jumbo v3, "nf_log"

    const-string/jumbo v11, "Failed JSON"

    invoke-static {v3, v11, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v2, v0

    goto :goto_2

    :cond_1
    move-object v1, v0

    goto :goto_1
.end method

.method private handleNewLolomoStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1363
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1365
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1366
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1368
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1370
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1371
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1373
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startNewLolomoSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1374
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handlePostPlayEnded(Landroid/content/Intent;)V
    .locals 11

    .prologue
    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 1330
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "POSTPLAY_START_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    const-string/jumbo v1, "reason"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1332
    const-string/jumbo v2, "error"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1333
    const-string/jumbo v3, "view"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1334
    const-string/jumbo v3, "wasAutoPlayCountdownInterrupted"

    invoke-virtual {p1, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1335
    const-string/jumbo v3, "didUserContinueWatching"

    invoke-virtual {p1, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 1336
    const-string/jumbo v3, "chosenVideoId"

    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1337
    if-gez v3, :cond_0

    move-object v6, v0

    .line 1338
    :goto_0
    const-string/jumbo v3, "chosenIndex"

    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1339
    if-gez v3, :cond_1

    move-object v7, v0

    .line 1340
    :goto_1
    const-string/jumbo v3, "trackId"

    invoke-virtual {p1, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 1345
    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1352
    :goto_2
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1353
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 1355
    :goto_3
    invoke-static {v9}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1356
    invoke-static {v9}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    :goto_4
    move-object v0, p0

    .line 1358
    invoke-virtual/range {v0 .. v8}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endPostPlaySession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;ZZLjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 1359
    return-void

    .line 1337
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 1339
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_1

    .line 1346
    :catch_0
    move-exception v2

    .line 1347
    const-string/jumbo v3, "nf_log"

    const-string/jumbo v10, "Failed JSON"

    invoke-static {v3, v10, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v0

    goto :goto_2

    :cond_2
    move-object v2, v0

    goto :goto_4

    :cond_3
    move-object v1, v0

    goto :goto_3
.end method

.method private handlePostPlayStart(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1315
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "POSTPLAY_START_START"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const-string/jumbo v0, "isAutoPlayCountdownEnabled"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1318
    const-string/jumbo v0, "lengthOfAutoPlayCountdown"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1319
    const-string/jumbo v0, "postPlayExperience"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1320
    const/4 v0, 0x0

    .line 1321
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1322
    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

    move-result-object v0

    .line 1325
    :cond_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startPostPlaySession(ZILcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;)V

    .line 1326
    return-void
.end method

.method private handlePreAppWidgetActionEnded(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2193
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2194
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2198
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2204
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2205
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 2207
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endPreAppWidgetActionSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 2208
    return-void

    .line 2199
    :catch_0
    move-exception v0

    .line 2200
    const-string/jumbo v3, "nf_log"

    const-string/jumbo v4, "Failed JSON"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handlePreAppWidgetActionStart(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 2182
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2183
    const/4 v0, 0x0

    .line 2184
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2185
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 2187
    :cond_0
    const-string/jumbo v1, "logData"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2188
    const-string/jumbo v2, "widgetActionData"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2189
    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startPreAppWidgetActionSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    return-void
.end method

.method private handlePrefetchLolomoJobEnded(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2225
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2226
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2231
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2237
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2238
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 2240
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endPrefetchLolomoJobSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 2241
    return-void

    .line 2232
    :catch_0
    move-exception v0

    .line 2233
    const-string/jumbo v3, "nf_log"

    const-string/jumbo v4, "Failed JSON"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handlePrefetchLolomoJobStarted(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2211
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2213
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2214
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 2216
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2218
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2219
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 2221
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startPrefetchLolomoJobSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 2222
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleRateTitleEnded(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/high16 v7, -0x80000000

    const/4 v1, 0x0

    .line 1750
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1751
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1752
    const-string/jumbo v3, "rating"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1753
    const-string/jumbo v4, "rank"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1757
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1763
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1764
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v2

    .line 1766
    :goto_1
    if-ne v4, v7, :cond_0

    :goto_2
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endRateTitleSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;I)V

    .line 1767
    return-void

    .line 1758
    :catch_0
    move-exception v0

    .line 1759
    const-string/jumbo v5, "nf_log"

    const-string/jumbo v6, "Failed JSON"

    invoke-static {v5, v6, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    .line 1766
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_1
    move-object v2, v1

    goto :goto_1
.end method

.method private handleRateTitleStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1736
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1738
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1739
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1741
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1743
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1744
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1746
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startRateTitleSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1747
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleRegisterEnded(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1784
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1785
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1789
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1795
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1796
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 1798
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endRegisterSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1799
    return-void

    .line 1790
    :catch_0
    move-exception v0

    .line 1791
    const-string/jumbo v3, "nf_log"

    const-string/jumbo v4, "Failed JSON"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleRegisterStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1770
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1772
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1773
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1775
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1777
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1778
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1780
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startRegisterSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1781
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleRemoveFromPlaylistEnded(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1816
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1817
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1821
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1827
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1828
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 1830
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endRemoveFromPlaylistSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1831
    return-void

    .line 1822
    :catch_0
    move-exception v0

    .line 1823
    const-string/jumbo v3, "nf_log"

    const-string/jumbo v4, "Failed JSON"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleRemoveFromPlaylistStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1802
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1804
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1805
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1807
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1809
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1810
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1812
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startRemoveFromPlaylistSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1813
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleSearchEnded(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1850
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1851
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1852
    const-string/jumbo v3, "id"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1856
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1862
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1863
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 1865
    :cond_0
    invoke-virtual {p0, v4, v5, v1, v0}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endSearchSession(JLcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1866
    return-void

    .line 1857
    :catch_0
    move-exception v0

    .line 1858
    const-string/jumbo v3, "nf_log"

    const-string/jumbo v6, "Failed JSON"

    invoke-static {v3, v6, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleSearchStart(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1834
    const-string/jumbo v1, "cmd"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1836
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1837
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v4

    .line 1839
    :goto_0
    const-string/jumbo v1, "term"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1840
    const-string/jumbo v1, "view"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1842
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1843
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v5

    .line 1845
    :goto_1
    const-string/jumbo v0, "id"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    move-object v1, p0

    .line 1846
    invoke-virtual/range {v1 .. v6}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startSearchSession(JLcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V

    .line 1847
    return-void

    :cond_0
    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v4, v0

    goto :goto_0
.end method

.method private handleSelectProfileEnded(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2020
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2021
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2022
    const-string/jumbo v0, "view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2024
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2025
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    .line 2031
    :goto_0
    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2037
    :goto_1
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2038
    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 2041
    :cond_0
    invoke-virtual {p0, v1, v0, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endSelectProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 2042
    return-void

    .line 2032
    :catch_0
    move-exception v2

    .line 2033
    const-string/jumbo v4, "nf_log"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleSelectProfileStart(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1999
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2001
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2002
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 2004
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2006
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2007
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    .line 2009
    :goto_1
    const-string/jumbo v3, "profile_id"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2011
    const-string/jumbo v4, "remember_profile"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2012
    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2013
    invoke-static {v4}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

    move-result-object v1

    .line 2015
    :cond_0
    invoke-virtual {p0, v3, v1, v0, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startSelectProfileSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 2016
    return-void

    :cond_1
    move-object v2, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private handleSerializeLolomoEnded(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2293
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2294
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2299
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2305
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2306
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 2308
    :cond_0
    const-string/jumbo v2, "lolomoFetchedTime"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2309
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endSerializeLolomoSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V

    .line 2310
    return-void

    .line 2300
    :catch_0
    move-exception v0

    .line 2301
    const-string/jumbo v3, "nf_log"

    const-string/jumbo v4, "Failed JSON"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleSerializeLolomoStarted(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2279
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2281
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2282
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 2284
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2286
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2287
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 2289
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startSerializeLolomoSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 2290
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleShareSheetEnded(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1422
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1423
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1424
    const-string/jumbo v3, "view"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1429
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1436
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1437
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v2

    .line 1439
    :goto_1
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1440
    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1442
    :cond_0
    invoke-virtual {p0, v2, v1, v0}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endShareSheetSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1443
    return-void

    .line 1430
    :catch_0
    move-exception v0

    .line 1431
    const-string/jumbo v4, "nf_log"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v2, v1

    goto :goto_1
.end method

.method private handleShareSheetOpenEnded(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1462
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1463
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1464
    const-string/jumbo v3, "view"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1469
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1476
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1477
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v2

    .line 1479
    :goto_1
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1480
    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1482
    :cond_0
    invoke-virtual {p0, v2, v1, v0}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endShareSheetOpenSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1483
    return-void

    .line 1470
    :catch_0
    move-exception v0

    .line 1471
    const-string/jumbo v4, "nf_log"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v2, v1

    goto :goto_1
.end method

.method private handleShareSheetOpenStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1447
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1449
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1450
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1452
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1454
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1455
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1457
    :cond_0
    const-string/jumbo v2, "url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1458
    invoke-virtual {p0, v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startShareSheetOpenSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1459
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleShareSheetStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1407
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1409
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1410
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1412
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1414
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1415
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1417
    :cond_0
    const-string/jumbo v2, "url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1418
    invoke-virtual {p0, v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startShareSheetSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1419
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleStartPlayEnded(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/high16 v6, -0x80000000

    const/4 v0, 0x0

    .line 1884
    const-string/jumbo v1, "reason"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1885
    const-string/jumbo v2, "error"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1886
    const-string/jumbo v3, "rank"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1890
    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1896
    :goto_0
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1897
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 1899
    :goto_1
    if-ne v3, v6, :cond_0

    move-object v3, v0

    .line 1900
    :goto_2
    const-string/jumbo v0, "playerType"

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1901
    invoke-static {v0}, Lcom/netflix/mediaclient/media/PlayerType;->toPlayerType(I)Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v4

    .line 1902
    const-string/jumbo v0, "playLocation"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1903
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v5

    move-object v0, p0

    .line 1904
    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endStartPlaySession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/PlayerType;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V

    .line 1905
    return-void

    .line 1891
    :catch_0
    move-exception v2

    .line 1892
    const-string/jumbo v4, "nf_log"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v0

    goto :goto_0

    .line 1899
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_1
    move-object v1, v0

    goto :goto_1
.end method

.method private handleStartPlayStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1870
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1872
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1873
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1875
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1877
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1878
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1880
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startStartPlaySession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1881
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleSubmitPaymentEnded(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 1923
    const-string/jumbo v1, "reason"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1924
    const-string/jumbo v2, "sucess"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1925
    const-string/jumbo v2, "error_code"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1926
    const-string/jumbo v2, "payment_type"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1927
    const-string/jumbo v2, "error"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1932
    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1939
    :goto_0
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1940
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 1942
    :goto_1
    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1943
    invoke-static {v4}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    move-result-object v4

    .line 1947
    :goto_2
    invoke-static {v6}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1949
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move-object v0, p0

    .line 1954
    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endSubmitPaymentSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;ZLcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;Lorg/json/JSONObject;)V

    .line 1955
    return-void

    .line 1933
    :catch_0
    move-exception v2

    .line 1934
    const-string/jumbo v5, "nf_log"

    const-string/jumbo v7, "Failed JSON"

    invoke-static {v5, v7, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v0

    goto :goto_0

    .line 1950
    :catch_1
    move-exception v5

    .line 1951
    const-string/jumbo v6, "nf_log"

    const-string/jumbo v7, "Failed JSON"

    invoke-static {v6, v7, v5}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object v5, v0

    goto :goto_3

    :cond_1
    move-object v4, v0

    goto :goto_2

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method private handleSubmitPaymentStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1908
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1910
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1911
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1913
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1915
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1916
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1918
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startSubmitPaymentSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1919
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleSurveyEnded(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1574
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1575
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1577
    const-string/jumbo v3, "surveyType"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1581
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1587
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1588
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 1590
    :cond_0
    invoke-virtual {p0, v1, v0, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endSurveySession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V

    .line 1591
    return-void

    .line 1582
    :catch_0
    move-exception v0

    .line 1583
    const-string/jumbo v4, "nf_log"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleSurveyQuestionEnded(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1609
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1610
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1612
    const-string/jumbo v3, "question"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1613
    const-string/jumbo v4, "response"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1617
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1623
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1624
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 1626
    :cond_0
    invoke-virtual {p0, v1, v0, v3, v4}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endSurveyQuestionSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    return-void

    .line 1618
    :catch_0
    move-exception v0

    .line 1619
    const-string/jumbo v5, "nf_log"

    const-string/jumbo v6, "Failed JSON"

    invoke-static {v5, v6, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleSurveyQuestionStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1595
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1597
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1598
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1600
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1602
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1603
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1605
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startSurveyQuestionSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1606
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleSurveyStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1560
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1562
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1563
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1565
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1567
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1568
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1570
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startSurveySession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1571
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleUpgradeStreamsEnded(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1978
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1979
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1980
    const-string/jumbo v3, "streams"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1982
    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;->find(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    move-result-object v3

    .line 1985
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1991
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1992
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 1994
    :cond_0
    invoke-virtual {p0, v1, v0, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endUpgradeStreamsSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;)V

    .line 1995
    return-void

    .line 1986
    :catch_0
    move-exception v0

    .line 1987
    const-string/jumbo v4, "nf_log"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleUpgradeStreamsStart(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1959
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1961
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1962
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1964
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1966
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1967
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    .line 1970
    :goto_1
    const-string/jumbo v3, "streams"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1971
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1972
    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;->find(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    move-result-object v1

    .line 1974
    :cond_0
    invoke-virtual {p0, v0, v2, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startUpgradeStreamsSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;)V

    .line 1975
    return-void

    :cond_1
    move-object v2, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 2171
    if-nez p1, :cond_0

    .line 2177
    :goto_0
    return-void

    .line 2175
    :cond_0
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 2176
    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setModalView(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    goto :goto_0
.end method

.method private validateTermForPrivacy(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 527
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Query is empty, skip privacy check"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_0
    :goto_0
    return-object p1

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    if-nez v0, :cond_2

    .line 531
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "User agent is NULL, this should NOT happen, we can not check for privacy violation!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 p1, 0x0

    goto :goto_0

    .line 534
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->isPotentialPrivacyViolationFoundForLogging(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Security violation found, do NOT log query"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-string/jumbo p1, "PRIVACY_VIOLATION"

    goto :goto_0
.end method


# virtual methods
.method public endAcknowledgeSignupSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAcknowledgeSignup:Lcom/netflix/mediaclient/service/logging/uiaction/AcknowledgeSignupSession;

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 152
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "User session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAcknowledgeSignup:Lcom/netflix/mediaclient/service/logging/uiaction/AcknowledgeSignupSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/uiaction/AcknowledgeSignupSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/uiaction/model/AcknowledgeSignupEndedEvent;

    move-result-object v0

    .line 154
    if-nez v0, :cond_1

    .line 155
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "AcknowledgeSignup session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-direct {p0, v0, v1, p3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 160
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAcknowledgeSignup:Lcom/netflix/mediaclient/service/logging/uiaction/AcknowledgeSignupSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 161
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "AcknowledgeSignup session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAcknowledgeSignup:Lcom/netflix/mediaclient/service/logging/uiaction/AcknowledgeSignupSession;

    .line 164
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "AcknowledgeSignup session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endAddProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)V
    .locals 3

    .prologue
    .line 732
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddProfileSession;

    if-nez v0, :cond_0

    .line 749
    :goto_0
    return-void

    .line 736
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Add profile session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddProfileSession;

    invoke-virtual {v0, p1, p3, p2, p4}, Lcom/netflix/mediaclient/service/logging/uiaction/AddProfileSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)Lcom/netflix/mediaclient/service/logging/uiaction/model/AddProfileEndedEvent;

    move-result-object v0

    .line 738
    if-nez v0, :cond_1

    .line 739
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Add profile session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 743
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddProfileSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/AddProfileSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 744
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddProfileSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 745
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Add profile session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 747
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddProfileSession;

    .line 748
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Add profile session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endAddToPlaylistSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;I)V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddToPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddToPlaylistSession;

    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 189
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "AddToPlaylist session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddToPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddToPlaylistSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/uiaction/AddToPlaylistSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;I)Lcom/netflix/mediaclient/service/logging/uiaction/model/AddToPlaylistEndedEvent;

    move-result-object v0

    .line 191
    if-nez v0, :cond_1

    .line 192
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "AddToPlaylist session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddToPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddToPlaylistSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/AddToPlaylistSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 197
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddToPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddToPlaylistSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 198
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "AddToPlaylist session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddToPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddToPlaylistSession;

    .line 201
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "AddToPlaylist session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized endAllActiveSessions()V
    .locals 10

    .prologue
    .line 1112
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->logout:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endAcknowledgeSignupSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1113
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->logout:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endAddProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)V

    .line 1114
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endAddToPlaylistSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;I)V

    .line 1115
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->logout:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endDeleteProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1116
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->logout:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endEditProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)V

    .line 1117
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endLoginSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1118
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->logout:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endNavigationSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1119
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->logout:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endNewLolomoSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1120
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endRateTitleSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;I)V

    .line 1121
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endRegisterSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1122
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endRemoveFromPlaylistSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1123
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->logout:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endSelectProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1124
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endStartPlaySession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/PlayerType;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V

    .line 1125
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endSubmitPaymentSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;ZLcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;Lorg/json/JSONObject;)V

    .line 1126
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endUpgradeStreamsSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;)V

    .line 1127
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->logout:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endShareSheetOpenSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1128
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->logout:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endShareSheetSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1129
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->logout:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endPostPlaySession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;ZZLjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 1130
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endPreAppWidgetActionSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1131
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endSurveySession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V

    .line 1132
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endSurveyQuestionSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endPrefetchLolomoJobSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1134
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endDeserializeLolomoSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V

    .line 1135
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endSerializeLolomoSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V

    .line 1137
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSearchSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 1138
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSearchSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1139
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1140
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endSearchSession(JLcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1142
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public endChangeValueSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mChangeValueSession:Lcom/netflix/mediaclient/service/logging/uiaction/model/ChangeValueSession;

    if-nez v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 300
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "changeValue session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mChangeValueSession:Lcom/netflix/mediaclient/service/logging/uiaction/model/ChangeValueSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/uiaction/model/ChangeValueSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/uiaction/model/ChangeValueEndedEvent;

    move-result-object v0

    .line 302
    if-nez v0, :cond_1

    .line 303
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ChangeValue session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mChangeValueSession:Lcom/netflix/mediaclient/service/logging/uiaction/model/ChangeValueSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/model/ChangeValueSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 308
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mChangeValueSession:Lcom/netflix/mediaclient/service/logging/uiaction/model/ChangeValueSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 309
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "changeValue session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mChangeValueSession:Lcom/netflix/mediaclient/service/logging/uiaction/model/ChangeValueSession;

    .line 312
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "changeValue session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endDeleteProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 3

    .prologue
    .line 808
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeleteProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;

    if-nez v0, :cond_0

    .line 825
    :goto_0
    return-void

    .line 812
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Delete profile session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeleteProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;

    invoke-virtual {v0, p1, p3, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/uiaction/model/DeleteProfileEndedEvent;

    move-result-object v0

    .line 814
    if-nez v0, :cond_1

    .line 815
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Delete profile session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 819
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeleteProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 820
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeleteProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 821
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Delete profile session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 823
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeleteProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;

    .line 824
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Delete profile session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endDeserializeLolomoSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V
    .locals 3

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeserializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeserializeLolomoSession;

    if-nez v0, :cond_0

    .line 1066
    :goto_0
    return-void

    .line 1053
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "DeserializeLolomoSession session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeserializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeserializeLolomoSession;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/logging/uiaction/DeserializeLolomoSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)Lcom/netflix/mediaclient/service/logging/uiaction/model/DeserializeLolomoEndedEvent;

    move-result-object v0

    .line 1055
    if-nez v0, :cond_1

    .line 1056
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "DeserializeLolomoSession still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1060
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeserializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeserializeLolomoSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/DeserializeLolomoSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1061
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeserializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeserializeLolomoSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 1062
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "DeserializeLolomoSession end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 1064
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeserializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeserializeLolomoSession;

    .line 1065
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "DeserializeLolomoSession session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endEditProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)V
    .locals 3

    .prologue
    .line 769
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEditProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/EditProfileSession;

    if-nez v0, :cond_0

    .line 788
    :goto_0
    return-void

    .line 773
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Edit profile session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEditProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/EditProfileSession;

    invoke-virtual {v0, p1, p3, p2, p4}, Lcom/netflix/mediaclient/service/logging/uiaction/EditProfileSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)Lcom/netflix/mediaclient/service/logging/uiaction/model/EditProfileEndedEvent;

    move-result-object v0

    .line 775
    if-nez v0, :cond_1

    .line 776
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Edit profile session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 780
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEditProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/EditProfileSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/EditProfileSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 781
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEditProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/EditProfileSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 782
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Edit profile session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 784
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEditProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/EditProfileSession;

    .line 785
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Edit profile session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Edit profile session end done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endLoginSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mLoginSession:Lcom/netflix/mediaclient/service/logging/uiaction/LoginSession;

    if-nez v0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 336
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Login session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mLoginSession:Lcom/netflix/mediaclient/service/logging/uiaction/LoginSession;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/LoginSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/uiaction/model/LoginEndedEvent;

    move-result-object v0

    .line 338
    if-nez v0, :cond_1

    .line 339
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Login session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mLoginSession:Lcom/netflix/mediaclient/service/logging/uiaction/LoginSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/LoginSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 344
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mLoginSession:Lcom/netflix/mediaclient/service/logging/uiaction/LoginSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 345
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Login session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mLoginSession:Lcom/netflix/mediaclient/service/logging/uiaction/LoginSession;

    .line 348
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Login session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endNavigationSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 4

    .prologue
    .line 370
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNavigationSession:Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;

    .line 371
    if-nez v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 377
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->excludedViewsSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNavigationSession:Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 378
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;->getStartingView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    if-nez v1, :cond_1

    .line 381
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;->setStartingView(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    goto :goto_0

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNavigationSession:Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    if-eq v1, p1, :cond_2

    .line 385
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;->setStartingView(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 389
    :cond_2
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Navigation session ended"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/uiaction/model/NavigationEndedEvent;

    move-result-object v1

    .line 391
    if-nez v1, :cond_3

    .line 392
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "We stayed in same view, cancel session."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNavigationSession:Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;

    goto :goto_0

    .line 394
    :cond_3
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Navigation session end event posting..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNavigationSession:Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 396
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v2, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 397
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Navigation session end event posted."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public endNewLolomoSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 907
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNewLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/NewLolomoSession;

    if-nez v0, :cond_0

    .line 925
    :goto_0
    return-void

    .line 911
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "NewLolomoSession ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNewLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/NewLolomoSession;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/netflix/mediaclient/service/logging/uiaction/NewLolomoSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/uiaction/model/NewLolomoEndedEvent;

    move-result-object v0

    .line 914
    if-nez v0, :cond_1

    .line 915
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "NewLolomoSession still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 919
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-direct {p0, v0, v1, p2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 920
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNewLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/NewLolomoSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 921
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "NewLolomoSession end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 923
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNewLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/NewLolomoSession;

    .line 924
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "NewLolomoSession end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endPostPlaySession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;ZZLjava/lang/Integer;Ljava/lang/Integer;I)V
    .locals 9

    .prologue
    .line 979
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPostPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;

    if-nez v0, :cond_0

    .line 995
    :goto_0
    return-void

    .line 983
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PostPlaySession session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPostPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;ZZLjava/lang/Integer;Ljava/lang/Integer;I)Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;

    move-result-object v0

    .line 985
    if-nez v0, :cond_1

    .line 986
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PostPlaySession still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 990
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPostPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 991
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "PostPlaySession end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 993
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPostPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;

    .line 994
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PostPlaySession end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endPreAppWidgetActionSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 3

    .prologue
    .line 943
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPreAppWidgetActionSession:Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;

    if-nez v0, :cond_0

    .line 959
    :goto_0
    return-void

    .line 947
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PreAppWidgetActionSession session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPreAppWidgetActionSession:Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetActionEndedEvent;

    move-result-object v0

    .line 949
    if-nez v0, :cond_1

    .line 950
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PreAppWidgetActionSession still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 954
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPreAppWidgetActionSession:Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 955
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "PreAppWidgetActionSession end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 957
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPreAppWidgetActionSession:Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;

    .line 958
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PreAppWidgetActionSession end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endPrefetchLolomoJobSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 3

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPrefetchLolomoJobSession:Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;

    if-nez v0, :cond_0

    .line 1030
    :goto_0
    return-void

    .line 1017
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PrefetchLolomoJobSession session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPrefetchLolomoJobSession:Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/uiaction/model/PrefetchLolomoJobEndedEvent;

    move-result-object v0

    .line 1019
    if-nez v0, :cond_1

    .line 1020
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PrefetchLolomoJobSession still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1024
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPrefetchLolomoJobSession:Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1025
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPrefetchLolomoJobSession:Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 1026
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "PrefetchLolomoJobSession end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 1028
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPrefetchLolomoJobSession:Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;

    .line 1029
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PrefetchLolomoJob session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endRateTitleSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;I)V
    .locals 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRateTitleSession:Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;

    if-nez v0, :cond_0

    .line 439
    :goto_0
    return-void

    .line 426
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RateTitle  session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRateTitleSession:Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;I)Lcom/netflix/mediaclient/service/logging/uiaction/model/RateTitleEndedEvent;

    move-result-object v0

    .line 428
    if-nez v0, :cond_1

    .line 429
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RateTitle  session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 433
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRateTitleSession:Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 434
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRateTitleSession:Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 435
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "RateTitle session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRateTitleSession:Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;

    .line 438
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RateTitle session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endRegisterSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 3

    .prologue
    .line 459
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRegisterSession:Lcom/netflix/mediaclient/service/logging/uiaction/RegisterSession;

    if-nez v0, :cond_0

    .line 475
    :goto_0
    return-void

    .line 462
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Register session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRegisterSession:Lcom/netflix/mediaclient/service/logging/uiaction/RegisterSession;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/RegisterSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/uiaction/model/RegisterEndedEvent;

    move-result-object v0

    .line 464
    if-nez v0, :cond_1

    .line 465
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Register session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRegisterSession:Lcom/netflix/mediaclient/service/logging/uiaction/RegisterSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/RegisterSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 470
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRegisterSession:Lcom/netflix/mediaclient/service/logging/uiaction/RegisterSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 471
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Register session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRegisterSession:Lcom/netflix/mediaclient/service/logging/uiaction/RegisterSession;

    .line 474
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Register session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endRemoveFromPlaylistSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 3

    .prologue
    .line 495
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRemoveFromPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;

    if-nez v0, :cond_0

    .line 512
    :goto_0
    return-void

    .line 499
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RemoveFromPlaylist session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRemoveFromPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/uiaction/model/RemoveFromPlaylistEndedEvent;

    move-result-object v0

    .line 501
    if-nez v0, :cond_1

    .line 502
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RemoveFromPlaylist session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 506
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRemoveFromPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 507
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRemoveFromPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 508
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "RemoveFromPlaylist session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRemoveFromPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;

    .line 511
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RemoveFromPlaylist session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized endSearchSession(JLcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 5

    .prologue
    .line 547
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSearchSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/uiaction/SearchSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    if-nez v0, :cond_0

    .line 564
    :goto_0
    monitor-exit p0

    return-void

    .line 552
    :cond_0
    :try_start_1
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Search session ended"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-virtual {v0, p3, p4}, Lcom/netflix/mediaclient/service/logging/uiaction/SearchSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/uiaction/model/SearchEndedEvent;

    move-result-object v1

    .line 554
    if-nez v1, :cond_1

    .line 555
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Search session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 547
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 559
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/uiaction/SearchSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 560
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v2, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 561
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "Search session end event posting..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 563
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Search session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public endSelectProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 3

    .prologue
    .line 695
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSelectProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;

    if-nez v0, :cond_0

    .line 712
    :goto_0
    return-void

    .line 699
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Select profile session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSelectProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;

    invoke-virtual {v0, p1, p3, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/uiaction/model/SelectProfileEndedEvent;

    move-result-object v0

    .line 701
    if-nez v0, :cond_1

    .line 702
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Select profile session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 706
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSelectProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 707
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSelectProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 708
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Select profile session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 710
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSelectProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;

    .line 711
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Select profile session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endSerializeLolomoSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V
    .locals 3

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSerializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;

    if-nez v0, :cond_0

    .line 1102
    :goto_0
    return-void

    .line 1089
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SerializeLolomoSession session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSerializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)Lcom/netflix/mediaclient/service/logging/uiaction/model/SerializeLolomoEndedEvent;

    move-result-object v0

    .line 1091
    if-nez v0, :cond_1

    .line 1092
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SerializeLolomoSession still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1096
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSerializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1097
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSerializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 1098
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SerializeLolomoSession end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 1100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSerializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;

    .line 1101
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SerializeLolomoSession session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endShareSheetOpenSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 3

    .prologue
    .line 875
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetOpenSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;

    if-nez v0, :cond_0

    .line 887
    :goto_0
    return-void

    .line 879
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ShareSheetOpenSession ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetOpenSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;

    invoke-virtual {v0, p1, p3, p2}, Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/android/model/ShareSheetOpenEndedEvent;

    move-result-object v0

    .line 881
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-direct {p0, v0, v1, p2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 882
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetOpenSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 883
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "ShareSheetOpenSession end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 885
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetOpenSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;

    .line 886
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ShareSheetOpenSession end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endShareSheetSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 3

    .prologue
    .line 844
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;

    if-nez v0, :cond_0

    .line 856
    :goto_0
    return-void

    .line 848
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ShareSheetSession ended and posted to executor"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;

    invoke-virtual {v0, p1, p3, p2}, Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/android/model/ShareSheetEndedEvent;

    move-result-object v0

    .line 850
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-direct {p0, v0, v1, p2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 851
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 852
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "ShareSheetSession end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 854
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;

    .line 855
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ShareSheetSession end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endStartPlaySession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/PlayerType;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V
    .locals 6

    .prologue
    .line 584
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mStartPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;

    if-nez v0, :cond_0

    .line 600
    :goto_0
    return-void

    .line 587
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "StartPlay session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mStartPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/PlayerType;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)Lcom/netflix/mediaclient/service/logging/uiaction/model/StartPlayEndedEvent;

    move-result-object v0

    .line 589
    if-nez v0, :cond_1

    .line 590
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "StartPlay session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 594
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mStartPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 595
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mStartPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 596
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "StartPlay session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 598
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mStartPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;

    .line 599
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "StartPlay session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endSubmitPaymentSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;ZLcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 621
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSubmitPaymentSession:Lcom/netflix/mediaclient/service/logging/uiaction/SubmitPaymentSession;

    if-nez v0, :cond_0

    .line 638
    :goto_0
    return-void

    .line 625
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SubmitPayment session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSubmitPaymentSession:Lcom/netflix/mediaclient/service/logging/uiaction/SubmitPaymentSession;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/uiaction/SubmitPaymentSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;ZLcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/uiaction/model/SubmitPaymentEndedEvent;

    move-result-object v0

    .line 627
    if-nez v0, :cond_1

    .line 628
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SubmitPayment session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 632
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSubmitPaymentSession:Lcom/netflix/mediaclient/service/logging/uiaction/SubmitPaymentSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/SubmitPaymentSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 633
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSubmitPaymentSession:Lcom/netflix/mediaclient/service/logging/uiaction/SubmitPaymentSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 634
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SubmitPayment session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 636
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSubmitPaymentSession:Lcom/netflix/mediaclient/service/logging/uiaction/SubmitPaymentSession;

    .line 637
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SubmitPayment session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endSurveyQuestionSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveyQuestionSession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveyQuestionSession;

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 263
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SurveyQuestionSession session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveyQuestionSession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveyQuestionSession;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/logging/uiaction/SurveyQuestionSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/uiaction/model/SurveyQuestionEndedEvent;

    move-result-object v0

    .line 265
    if-nez v0, :cond_1

    .line 266
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SurveyQuestionSession session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveyQuestionSession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveyQuestionSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/SurveyQuestionSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 271
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveyQuestionSession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveyQuestionSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 272
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SurveyQuestionSession session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveyQuestionSession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveyQuestionSession;

    .line 275
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SurveyQuestionSession session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endSurveySession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveySession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveySession;

    if-nez v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 226
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SurveySession session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveySession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveySession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/uiaction/SurveySession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/uiaction/model/SurveyEndedEvent;

    move-result-object v0

    .line 228
    if-nez v0, :cond_1

    .line 229
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SurveySession session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveySession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveySession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/SurveySession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 234
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveySession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveySession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 235
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SurveySession session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveySession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveySession;

    .line 238
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SurveySession session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endUpgradeStreamsSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;)V
    .locals 3

    .prologue
    .line 658
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mUpgradeStreamsSession:Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;

    if-nez v0, :cond_0

    .line 675
    :goto_0
    return-void

    .line 662
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "UpgradeStreams session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mUpgradeStreamsSession:Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;)Lcom/netflix/mediaclient/service/logging/uiaction/model/UpgradeStreamsEndedEvent;

    move-result-object v0

    .line 664
    if-nez v0, :cond_1

    .line 665
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "User session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 669
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mUpgradeStreamsSession:Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 670
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mUpgradeStreamsSession:Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 671
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "UpgradeStreams session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 673
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mUpgradeStreamsSession:Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;

    .line 674
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "UpgradeStreams session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleIntent(Landroid/content/Intent;Z)Z
    .locals 4

    .prologue
    .line 1147
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1148
    const/4 v0, 0x1

    .line 1149
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_ADD_TO_PLAYLIST_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1150
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "ADD_TO_PLAYLIST_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleAddToPlaylistStart(Landroid/content/Intent;)V

    .line 1310
    :goto_0
    return v0

    .line 1152
    :cond_0
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_ADD_TO_PLAYLIST_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1153
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "ADD_TO_PLAYLIST_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleAddToPlaylistEnded(Landroid/content/Intent;)V

    goto :goto_0

    .line 1155
    :cond_1
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SURVEY_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1156
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SURVEY_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleSurveyStart(Landroid/content/Intent;)V

    goto :goto_0

    .line 1158
    :cond_2
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SURVEY_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1159
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SURVEY_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleSurveyEnded(Landroid/content/Intent;)V

    goto :goto_0

    .line 1161
    :cond_3
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SURVEY_QUESTION_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1162
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SURVEY_QUESTION_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleSurveyQuestionStart(Landroid/content/Intent;)V

    goto :goto_0

    .line 1164
    :cond_4
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SURVEY_QUESTION_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1165
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SURVEY_QUESTION_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleSurveyQuestionEnded(Landroid/content/Intent;)V

    goto :goto_0

    .line 1167
    :cond_5
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_CHANGE_VALUE_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1168
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "CHANGE_VALUE_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleChangeValueStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1170
    :cond_6
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_CHANGE_VALUE_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1171
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "CHANGE_VALUE_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleChangeValueEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1173
    :cond_7
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_LOGIN_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1174
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "LOGIN_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleLoginStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1176
    :cond_8
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_LOGIN_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1177
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "LOGIN_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleLoginEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1179
    :cond_9
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SIGNUP_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1180
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SIGNUP_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleAcknowledgeSignupStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1182
    :cond_a
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SIGNUP_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1183
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SIGNUP_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleAcknowledgeSignupEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1185
    :cond_b
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_NAVIGATION_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1186
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "NAVIGATION_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleNavigationStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1188
    :cond_c
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_NAVIGATION_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1189
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "NAVIGATION_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleNavigationEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1191
    :cond_d
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_RATE_TITLE_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1192
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "RATE_TITLE_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleRateTitleStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1194
    :cond_e
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_RATE_TITLE_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1195
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "RATE_TITLE_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleRateTitleEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1197
    :cond_f
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_REGISTER_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1198
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "REGISTER_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleRegisterStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1200
    :cond_10
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_REGISTER_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1201
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "REGISTER_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleRegisterEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1203
    :cond_11
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_REMOVE_FROM_PLAYLIST_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1204
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "REMOVE_FROM_PLAYLIST_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleRemoveFromPlaylistStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1206
    :cond_12
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_REMOVE_FROM_PLAYLIST_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1207
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "REMOVE_FROM_PLAYLIST_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleRemoveFromPlaylistEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1209
    :cond_13
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SEARCH_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1210
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SEARCH_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleSearchStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1212
    :cond_14
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SEARCH_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1213
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SEARCH_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleSearchEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1215
    :cond_15
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_START_PLAY_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1216
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "START_PLAY_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleStartPlayStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1218
    :cond_16
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_START_PLAY_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1219
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "START_PLAY_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleStartPlayEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1221
    :cond_17
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SUBMIT_PAYMENT_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1222
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SUBMIT_PAYMENT_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleSubmitPaymentStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1224
    :cond_18
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SUBMIT_PAYMENT_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1225
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SUBMIT_PAYMENT_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleSubmitPaymentEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1227
    :cond_19
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_UPGRADE_STREAMS_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1228
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "UPGRADE_STREAMS_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleUpgradeStreamsStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1230
    :cond_1a
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_UPGRADE_STREAMS_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1231
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "UPGRADE_STREAMS_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleUpgradeStreamsEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1233
    :cond_1b
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SELECT_PROFILE_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1234
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SELECT_PROFILE_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleSelectProfileStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1236
    :cond_1c
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SELECT_PROFILE_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1237
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SELECT_PROFILE_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleSelectProfileEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1239
    :cond_1d
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_ADD_PROFILE_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1240
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "ADD_PROFILE_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleAddProfileStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1242
    :cond_1e
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_ADD_PROFILE_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1243
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "ADD_PROFILE_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleAddProfileEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1245
    :cond_1f
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_EDIT_PROFILE_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1246
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "EDIT_PROFILE_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleEditProfileStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1248
    :cond_20
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_EDIT_PROFILE_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1249
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "EDIT_PROFILE_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleEditProfileEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1251
    :cond_21
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_DELETE_PROFILE_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1252
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "DELETE_PROFILE_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleDeleteProfileStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1254
    :cond_22
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_DELETE_PROFILE_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1255
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "DELETE_PROFILE_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleDeleteProfileEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1257
    :cond_23
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SHARE_SHEET_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1258
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SHARE_SHEET_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleShareSheetStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1260
    :cond_24
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SHARE_SHEET_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1261
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SHARE_SHEET_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleShareSheetEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1263
    :cond_25
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SHARE_SHEET_OPEN_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1264
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SHARE_SHEET_OPEN_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleShareSheetOpenStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1266
    :cond_26
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SHARE_SHEET_OPEN_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1267
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SHARE_SHEET_OPEN_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleShareSheetOpenEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1269
    :cond_27
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_NEW_LOLOMO_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1270
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "NEW_LOLOMO_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleNewLolomoStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1272
    :cond_28
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_NEW_LOLOMO_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1273
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "NEW_LOLOMO_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleNewLolomoEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1275
    :cond_29
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.PREAPP_WIDGET_ACTION_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1276
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "PREAPP_WIDGET_ACTION_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handlePreAppWidgetActionStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1278
    :cond_2a
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.PREAPP_WIDGET_ACTION_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1279
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "PREAPP_WIDGET_ACTION_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handlePreAppWidgetActionEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1281
    :cond_2b
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_POSTPLAY_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1282
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handlePostPlayStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1283
    :cond_2c
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_POSTPLAY_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1284
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handlePostPlayEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1285
    :cond_2d
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_PREFETCH_LOLOMO_JOB_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1286
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "PREFETCH_LOLOMO_JOB_STARTED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handlePrefetchLolomoJobStarted(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1288
    :cond_2e
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_PREFETCH_LOLOMO_JOB_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1289
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "PREFETCH_LOLOMO_JOB_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handlePrefetchLolomoJobEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1291
    :cond_2f
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_DESERIALIZE_LOLOMO_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1292
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "DESERIALIZE_LOLOMO_STARTED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleDeserializeLolomoStarted(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1294
    :cond_30
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_DESERIALIZE_LOLOMO_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1295
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "DESERIALIZE_LOLOMO_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleDeserializeLolomoEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1297
    :cond_31
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SERIALIZE_LOLOMO_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1298
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SERIALIZE_LOLOMO_STARTED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleSerializeLolomoStarted(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1300
    :cond_32
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SERIALIZE_LOLOMO_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1301
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SERIALIZE_LOLOMO_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleSerializeLolomoEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1304
    :cond_33
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1305
    const-string/jumbo v0, "nf_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "We do not support action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_34
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V
    .locals 0

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    .line 1107
    return-void
.end method

.method public startAcknowledgeSignupSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAcknowledgeSignup:Lcom/netflix/mediaclient/service/logging/uiaction/AcknowledgeSignupSession;

    if-eqz v0, :cond_0

    .line 134
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "AcknowledgeSignup session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return-void

    .line 138
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "AcknowledgeSignup session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/AcknowledgeSignupSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/AcknowledgeSignupSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 140
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 141
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAcknowledgeSignup:Lcom/netflix/mediaclient/service/logging/uiaction/AcknowledgeSignupSession;

    .line 142
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "AcknowledgeSignup session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startAddProfileSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddProfileSession;

    if-eqz v0, :cond_0

    .line 718
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Add profile session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :goto_0
    return-void

    .line 722
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Add profile session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/AddProfileSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/AddProfileSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 724
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 725
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddProfileSession;

    .line 726
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Add profile session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startAddToPlaylistSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddToPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddToPlaylistSession;

    if-eqz v0, :cond_0

    .line 171
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "AddToPlaylist session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_0
    return-void

    .line 175
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "AddToPlaylist session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/AddToPlaylistSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/AddToPlaylistSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 177
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 178
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddToPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddToPlaylistSession;

    .line 179
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "AddToPlaylist session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startChangeValueSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mChangeValueSession:Lcom/netflix/mediaclient/service/logging/uiaction/model/ChangeValueSession;

    if-eqz v0, :cond_0

    .line 282
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "changeValue session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_0
    return-void

    .line 286
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "changeValue session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/model/ChangeValueSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/model/ChangeValueSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 288
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 289
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mChangeValueSession:Lcom/netflix/mediaclient/service/logging/uiaction/model/ChangeValueSession;

    .line 290
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "changeValue session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startDeleteProfileSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeleteProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;

    if-eqz v0, :cond_0

    .line 794
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Delete profile session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :goto_0
    return-void

    .line 798
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Delete profile session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 800
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 801
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeleteProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;

    .line 802
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Delete profile session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startDeserializeLolomoSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeserializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeserializeLolomoSession;

    if-eqz v0, :cond_0

    .line 1036
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "DeserializeLolomoSession already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :goto_0
    return-void

    .line 1040
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "DeserializeLolomoSession starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/DeserializeLolomoSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/DeserializeLolomoSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1042
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 1043
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeserializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeserializeLolomoSession;

    .line 1044
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PrefetchLolomoJobSession start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startEditProfileSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 754
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEditProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/EditProfileSession;

    if-eqz v0, :cond_0

    .line 755
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Edit profile session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :goto_0
    return-void

    .line 759
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Edit profile session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/EditProfileSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/EditProfileSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 761
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 762
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEditProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/EditProfileSession;

    .line 763
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Edit profile session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startLoginSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mLoginSession:Lcom/netflix/mediaclient/service/logging/uiaction/LoginSession;

    if-eqz v0, :cond_0

    .line 318
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Login session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_0
    return-void

    .line 321
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Login session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/LoginSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/LoginSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 325
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 326
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mLoginSession:Lcom/netflix/mediaclient/service/logging/uiaction/LoginSession;

    .line 327
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Login session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startNavigationSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNavigationSession:Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;

    if-eqz v0, :cond_0

    .line 355
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Navigation session existed before, overwrite"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNavigationSession:Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 361
    :goto_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 362
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 363
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNavigationSession:Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;

    .line 364
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Navigation session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-void

    .line 358
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Navigation session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startNewLolomoSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 892
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNewLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/NewLolomoSession;

    if-eqz v0, :cond_0

    .line 893
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "NewLolomoSession session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :goto_0
    return-void

    .line 897
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "NewLolomoSession session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/NewLolomoSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/NewLolomoSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNewLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/NewLolomoSession;

    .line 899
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNewLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/NewLolomoSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 900
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "NewLolomoSession session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startPostPlaySession(ZILcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;)V
    .locals 6

    .prologue
    .line 964
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPostPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;

    if-eqz v0, :cond_0

    .line 965
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PostPlaySession already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :goto_0
    return-void

    .line 969
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PostPlaySession starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->postPlay:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;ZILcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;)V

    .line 971
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 972
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPostPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;

    .line 973
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PostPlaySession start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startPreAppWidgetActionSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 929
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPreAppWidgetActionSession:Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;

    if-eqz v0, :cond_0

    .line 930
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PreAppWidgetActionSession already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :goto_0
    return-void

    .line 934
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PreAppWidgetActionSessionstarting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    new-instance v0, Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 937
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPreAppWidgetActionSession:Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;

    .line 938
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PreAppWidgetActionSession start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startPrefetchLolomoJobSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 999
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPrefetchLolomoJobSession:Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;

    if-eqz v0, :cond_0

    .line 1000
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PrefetchLolomoJobSession already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :goto_0
    return-void

    .line 1004
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PrefetchLolomoJobSession starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1006
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 1007
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPrefetchLolomoJobSession:Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;

    .line 1008
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PrefetchLolomoJobSession start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startRateTitleSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRateTitleSession:Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;

    if-eqz v0, :cond_0

    .line 408
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RateTitle session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :goto_0
    return-void

    .line 412
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RateTitle session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 414
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 415
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRateTitleSession:Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;

    .line 416
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RateTitle session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startRegisterSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRegisterSession:Lcom/netflix/mediaclient/service/logging/uiaction/RegisterSession;

    if-eqz v0, :cond_0

    .line 445
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Register session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :goto_0
    return-void

    .line 449
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Register session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/RegisterSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/RegisterSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 451
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 452
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRegisterSession:Lcom/netflix/mediaclient/service/logging/uiaction/RegisterSession;

    .line 453
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Register session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startRemoveFromPlaylistSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRemoveFromPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;

    if-eqz v0, :cond_0

    .line 481
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RemoveFromPlaylist session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :goto_0
    return-void

    .line 485
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RemoveFromPlaylist session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 487
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 488
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRemoveFromPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;

    .line 489
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RemoveFromPlaylist session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized startSearchSession(JLcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 517
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Search session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-direct {p0, p5}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->validateTermForPrivacy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 519
    new-instance v1, Lcom/netflix/mediaclient/service/logging/uiaction/SearchSession;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/service/logging/uiaction/SearchSession;-><init>(JLcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 521
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSearchSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Search session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    monitor-exit p0

    return-void

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startSelectProfileSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSelectProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;

    if-eqz v0, :cond_0

    .line 681
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Select profile session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :goto_0
    return-void

    .line 685
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Select profile session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 687
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 688
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSelectProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;

    .line 689
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Select profile session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startSerializeLolomoSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSerializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;

    if-eqz v0, :cond_0

    .line 1072
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SerializeLolomoSession already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :goto_0
    return-void

    .line 1076
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SerializeLolomoSession starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1078
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 1079
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSerializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;

    .line 1080
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PrefetchLolomoJobSession start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startShareSheetOpenSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 861
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetOpenSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;

    if-eqz v0, :cond_0

    .line 862
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ShareSheetOpenSession session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :goto_0
    return-void

    .line 866
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ShareSheetOpenSession session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    new-instance v0, Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetOpenSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;

    .line 868
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetOpenSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 869
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ShareSheetOpenSession  session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startShareSheetSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 830
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;

    if-eqz v0, :cond_0

    .line 831
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ShareSheetSession session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :goto_0
    return-void

    .line 835
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ShareSheetSession session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    new-instance v0, Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;

    .line 837
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 838
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ShareSheetSession  session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startStartPlaySession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mStartPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;

    if-eqz v0, :cond_0

    .line 570
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "StartPlay session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :goto_0
    return-void

    .line 574
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "StartPlay session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 576
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 577
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mStartPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;

    .line 578
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "StartPlay session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startSubmitPaymentSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSubmitPaymentSession:Lcom/netflix/mediaclient/service/logging/uiaction/SubmitPaymentSession;

    if-eqz v0, :cond_0

    .line 606
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SubmitPayment session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :goto_0
    return-void

    .line 610
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SubmitPayment session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/SubmitPaymentSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/SubmitPaymentSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 612
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 613
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSubmitPaymentSession:Lcom/netflix/mediaclient/service/logging/uiaction/SubmitPaymentSession;

    .line 614
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SubmitPayment session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startSurveyQuestionSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveyQuestionSession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveyQuestionSession;

    if-eqz v0, :cond_0

    .line 245
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SurveyQuestionSession session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_0
    return-void

    .line 249
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SurveyQuestionSession session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/SurveyQuestionSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/SurveyQuestionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 251
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 252
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveyQuestionSession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveyQuestionSession;

    .line 253
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SurveyQuestionSession session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startSurveySession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveySession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveySession;

    if-eqz v0, :cond_0

    .line 208
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SurveySession session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_0
    return-void

    .line 212
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SurveySession session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/SurveySession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/SurveySession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 214
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 215
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveySession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveySession;

    .line 216
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SurveySession session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startUpgradeStreamsSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;)V
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mUpgradeStreamsSession:Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;

    if-eqz v0, :cond_0

    .line 644
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "UpgradeStreams session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :goto_0
    return-void

    .line 648
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "UpgradeStreams session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;)V

    .line 650
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 651
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mUpgradeStreamsSession:Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;

    .line 652
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "UpgradeStreams session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
