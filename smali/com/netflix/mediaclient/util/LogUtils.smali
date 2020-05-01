.class public final Lcom/netflix/mediaclient/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static final CLIENT_CODE_STACK_INDEX:I

.field private static final TAG:Ljava/lang/String; = "nf_log"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/netflix/mediaclient/util/LogUtils;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    :cond_0
    sput v0, Lcom/netflix/mediaclient/util/LogUtils;->CLIENT_CODE_STACK_INDEX:I

    .line 57
    return-void

    .line 50
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static getCurrMethodName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/util/LogUtils;->CLIENT_CODE_STACK_INDEX:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getErrorCodeForServerLogs(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    instance-of v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;

    if-eqz v1, :cond_0

    .line 173
    check-cast p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;

    .line 174
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->getErrorCodeForLogging()Ljava/lang/String;

    move-result-object v0

    .line 176
    :cond_0
    return-object v0
.end method

.method public static getErrorMessageForServerLogs(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    invoke-interface {p0}, Lcom/netflix/mediaclient/android/app/Status;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 186
    instance-of v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;

    if-eqz v1, :cond_0

    .line 187
    check-cast p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;

    .line 188
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->getErrorMessageForLogging()Ljava/lang/String;

    move-result-object v0

    .line 190
    :cond_0
    return-object v0
.end method

.method public static logCurrentThreadName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Current thread name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    return-void
.end method

.method public static logEmptySeasonId(Lcom/netflix/mediaclient/servicemgr/IClientLogging;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;)V
    .locals 4

    .prologue
    .line 156
    if-nez p2, :cond_0

    .line 157
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "No season details"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    const-string/jumbo v0, "For Show Id %s, the Current Season Details Id is empty - %s, see SPY-7455"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static reportErrorSafely(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    return-void
.end method

.method public static reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 133
    if-nez p0, :cond_0

    .line 134
    const-string/jumbo p0, ""

    .line 136
    :cond_0
    if-eqz p1, :cond_1

    .line 137
    const-string/jumbo v0, "nf_log"

    invoke-static {v0, p0, p1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    :goto_0
    invoke-static {p1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    .line 148
    return-void

    .line 139
    :cond_1
    const-string/jumbo v0, "nf_log"

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static reportPresentationTracking(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;Lcom/netflix/mediaclient/servicemgr/interface_/Video;I)V
    .locals 6

    .prologue
    .line 74
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    :cond_0
    const-string/jumbo v0, "nf_presentation"

    const-string/jumbo v1, "Manager not ready - can\'t report presentation tracking"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->isPresentationTrackingType(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    const-string/jumbo v0, "nf_presentation"

    const-string/jumbo v1, "Video is not presentation-trackable"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    :cond_2
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->FLAT_GENRE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v0, v1, :cond_4

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/UiLocation;->GENRE_LOLOMO:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 85
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    const-string/jumbo v0, "nf_presentation"

    const-string/jumbo v1, "%s, %s, offset %d, id: %s, boxartImageTypeIdentifier: %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 87
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v5, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getBoxartImageTypeIdentifier()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getPresentationTracking()Lcom/netflix/mediaclient/servicemgr/PresentationTracking;

    move-result-object v0

    .line 90
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getBoxartImageTypeIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v1, p1

    move v4, p3

    .line 89
    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/PresentationTracking;->reportPresentation(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;Ljava/util/List;Ljava/util/List;ILcom/netflix/mediaclient/servicemgr/UiLocation;)V

    goto :goto_0

    .line 84
    :cond_4
    sget-object v5, Lcom/netflix/mediaclient/servicemgr/UiLocation;->HOME_LOLOMO:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    goto :goto_1
.end method

.method public static reportSignUpOnDevice(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.ONSIGNUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 71
    return-void
.end method

.method protected static validateArgument(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 102
    if-nez p0, :cond_0

    .line 103
    const-string/jumbo v0, "nf_log"

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    return-void
.end method
