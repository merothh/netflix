.class public final enum Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;
.super Ljava/lang/Enum;
.source "CryptoErrorManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

.field private static DELTA_MS:J

.field public static final enum INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mActionToExecuteOnExitFromContentRemoval:Ljava/lang/Runnable;

.field private mAppStartupTime:J

.field private mConfiguration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field private mContext:Landroid/content/Context;

.field private mErrorHandler:Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

.field private mErrorLogger:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

.field private mFatalErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;",
            ">;"
        }
    .end annotation
.end field

.field private mIgnoreFatalError:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

.field private mRemovingOfflineContentInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->$VALUES:[Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    const-string/jumbo v0, "nf_crypto_error"

    sput-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->TAG:Ljava/lang/String;

    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->DELTA_MS:J

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mIgnoreFatalError:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mRemovingOfflineContentInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mFatalErrors:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mRemovingOfflineContentInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mActionToExecuteOnExitFromContentRemoval:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mActionToExecuteOnExitFromContentRemoval:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400()J
    .locals 2

    sget-wide v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->DELTA_MS:J

    return-wide v0
.end method

.method static createMediaDrmErrorMessage(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MediaDrm failure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/StatusCode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string/jumbo v1, " init failure: security level changed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private dumpErrorState()V
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Found %d fatal errors: "

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mFatalErrors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mFatalErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;

    sget-object v5, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "%d, %s: "

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v5, v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized getLastFatalCryptoError()Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mFatalErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mFatalErrors:Ljava/util/List;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mFatalErrors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isOfflineContentPresent()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getTitleCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeOfflineContent()V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->isOfflineContentPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    new-instance v1, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$1;-><init>(Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->addOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mRemovingOfflineContentInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->deleteAllOfflineContent()V

    invoke-static {}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->clearPreQueued()V

    :cond_0
    return-void
.end method

.method private resetErrorCounter()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mFatalErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "prefs_crypto_fatal_errors"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->removePref(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method private restoreErrorState()V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "prefs_crypto_fatal_errors"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v2

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    new-instance v4, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mFatalErrors:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Ignore, occured to long ago: %s: "

    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    add-int/lit8 v1, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v0

    invoke-static {v5, v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Fail to restore crypto error state."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->dumpErrorState()V

    goto :goto_0
.end method

.method private save()V
    .locals 4

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mFatalErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Fail to save crypto error state!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "prefs_crypto_fatal_errors"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->$VALUES:[Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    return-object v0
.end method


# virtual methods
.method getErrorLogger()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mErrorLogger:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    return-object v0
.end method

.method declared-synchronized getErrorMessageForFatalError(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;)I
    .locals 6

    const v1, 0x7f08016e

    const/4 v4, 0x1

    const v0, 0x7f08016d

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mIgnoreFatalError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Crypto fallback in progress. We should not see this. Do not add error. Return crypto failback message. Next app start will see different crypto..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v0, 0x7f08016a

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->getLastFatalCryptoError()Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->isValid()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Did not had previous valid fatal error, just tell user to start app again"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mFatalErrors:Ljava/util/List;

    new-instance v2, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mAppStartupTime:J

    invoke-direct {v2, p1, p2, v4, v5}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;-><init>(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;J)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->save()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mFatalErrors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v4, :cond_4

    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Did not had previous valid fatal error, just tell user to start app again"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mFatalErrors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_6

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mAppStartupTime:J

    invoke-virtual {v2, v4, v5}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->belongToApplicationInstance(J)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Found previous valid fatal error, but it from this same app instance, do not add it again. It should NOT happen. Return message to start app again."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Found previous valid fatal error, app was restarted and we failed again, Tell user to restart device."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mFatalErrors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mAppStartupTime:J

    invoke-virtual {v2, v4, v5}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager$FatalCryptoError;->belongToApplicationInstance(J)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Found previous valid fatal error, but it from this same app instance, do not add it again. It should NOT happen. Return message to start app again."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Found previous valid fatal error, app was restarted and than rebooted and each time we failed again, Fallback..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->handleCryptoFallback()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failback to legacy crypto..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f08016b

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failback to Widevine L3."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const v0, 0x7f08016c

    goto/16 :goto_0
.end method

.method getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    return-object v0
.end method

.method public handleCryptoFallback()Z
    .locals 5

    const/4 v0, 0x1

    const-string/jumbo v1, ""

    const/4 v1, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L1:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v2, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MediaDrm failed for Widevine L1, fail back to legacy crypto scheme "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mConfiguration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->shouldForceLegacyCrypto()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "disable_widevine"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->resetErrorCounter()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mConfiguration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->shouldForceLegacyCrypto()Z

    move-result v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->removeOfflineContent()V

    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mErrorLogger:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    invoke-interface {v2, v1}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    return v0

    :cond_0
    sget-object v3, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L3:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v2, v3, :cond_1

    const-string/jumbo v1, "MediaDrm failed for Widevine L3, fail back to legacy crypto scheme "

    sget-object v2, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "disable_widevine_l3"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->resetErrorCounter()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->removeOfflineContent()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Crypto provider was not supported for this error "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0
.end method

.method public declared-synchronized init(Landroid/content/Context;JLcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;Lcom/netflix/mediaclient/servicemgr/IErrorHandler;Lcom/netflix/mediaclient/servicemgr/ErrorLogging;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "CryptoErrorManager can not be initialized with null context!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    if-nez p4, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "CryptoErrorManager can not be initialized with null user agent!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p5, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "CryptoErrorManager can not be initialized with null configuration!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p6, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "CryptoErrorManager can not be initialized with null offline agent!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p7, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "CryptoErrorManager can not be initialized with null error handler!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-nez p8, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "CryptoErrorManager can not be initialized with null error logger!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput-object p1, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    iput-object p5, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mConfiguration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    iput-object p7, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mErrorHandler:Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    iput-object p8, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mErrorLogger:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    iput-wide p2, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mAppStartupTime:J

    iput-object p6, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->restoreErrorState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public isRemovingOfflineContentInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mRemovingOfflineContentInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized mediaDrmFailure(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorHandlerFactory;->getCryptoErrorHandler(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;)Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorHandler;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unhandled failure type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for error source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mErrorLogger:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    invoke-static {p2, p3}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->createMediaDrmErrorMessage(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p3}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorHandler;->handle(Landroid/content/Context;Ljava/lang/Throwable;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Handled failure type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for error source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", but no need to report to user..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mErrorHandler:Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mErrorHandler:Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->addError(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)Z

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Handled failure type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for error source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", but unable to report to user because error handler is null! It should NOT happen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method setActionToExecuteOnExitIfContentRemovalIsInProgress(Ljava/lang/Runnable;)Z
    .locals 2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mRemovingOfflineContentInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mRemovingOfflineContentInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mActionToExecuteOnExitFromContentRemoval:Ljava/lang/Runnable;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->mRemovingOfflineContentInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
