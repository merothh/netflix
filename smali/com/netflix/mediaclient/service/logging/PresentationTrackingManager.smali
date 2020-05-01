.class Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;
.super Ljava/lang/Object;
.source "PresentationTrackingManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/PresentationTracking;


# static fields
.field private static final PT_MAX_TIME_EVENT_CAN_STAY_IN_QUEUE_MS:I = 0x493e0

.field private static final PT_MIN_NUMBER_OF_PAGES_TO_POST:I = 0x32

.field static final REPOSITORY_DIR:Ljava/lang/String; = "ptevents"

.field public static final TAG:Ljava/lang/String; = "nf_presentation"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

.field private mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

.field private final mPendingCachedLogPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPresentationEventQueue:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;

.field private mPresentationWebClient:Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebClient;

.field private mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/LoggingAgent;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPendingCachedLogPayloads:Ljava/util/List;

    .line 93
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    .line 94
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mContext:Landroid/content/Context;

    .line 95
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;)Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPresentationEventQueue:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->sendPresentationEvents(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;[Lcom/netflix/mediaclient/util/data/DataRepository$Entry;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->deliverSavedPayloads([Lcom/netflix/mediaclient/util/data/DataRepository$Entry;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;)Lcom/netflix/mediaclient/util/data/DataRepository;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->loadAndSendEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->removeSavedEvents(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;)Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebClient;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPresentationWebClient:Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebClient;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;)Lcom/netflix/mediaclient/service/logging/LoggingAgent;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private deliverSavedPayloads([Lcom/netflix/mediaclient/util/data/DataRepository$Entry;)V
    .locals 8

    .prologue
    .line 243
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 244
    :cond_0
    const-string/jumbo v0, "nf_presentation"

    const-string/jumbo v1, "No saved events found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_1
    return-void

    .line 248
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    const-string/jumbo v0, "nf_presentation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " payloads waiting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_3
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 254
    invoke-interface {v2}, Lcom/netflix/mediaclient/util/data/DataRepository$Entry;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 256
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPendingCachedLogPayloads:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 257
    const-string/jumbo v2, "nf_presentation"

    const-string/jumbo v3, "We are already trying to deliver %s deliveryRequestId, skip"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_4
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPendingCachedLogPayloads:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$3;

    invoke-direct {v4, p0, v2}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$3;-><init>(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    .line 267
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getNextTimeToDeliverAfterFailure()J

    move-result-wide v6

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 262
    invoke-interface {v3, v4, v6, v7, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1
.end method

.method private initDataRepository()V
    .locals 3

    .prologue
    .line 182
    const-string/jumbo v0, "nf_presentation"

    const-string/jumbo v1, "PtManager::init data repository started "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "ptevents"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 187
    new-instance v0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    .line 189
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$2;-><init>(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 208
    const-string/jumbo v0, "nf_presentation"

    const-string/jumbo v1, "PtManager::init data repository done "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void
.end method

.method private initPresentationQueue()V
    .locals 3

    .prologue
    .line 107
    const/16 v1, 0x32

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getPresentationTrackingAggregationSize()I

    move-result v0

    .line 110
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 113
    :goto_0
    new-instance v1, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;-><init>(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;I)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPresentationEventQueue:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;

    .line 114
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private loadAndSendEvent(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 273
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const-string/jumbo v0, "nf_presentation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Load event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    new-instance v1, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$4;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$4;-><init>(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/util/data/DataRepository;->load(Ljava/lang/String;Lcom/netflix/mediaclient/util/data/DataRepository$DataLoadedCallback;)V

    .line 297
    return-void
.end method

.method private removeSavedEvents(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPendingCachedLogPayloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/util/data/DataRepository;->remove(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    const-string/jumbo v1, "nf_presentation"

    const-string/jumbo v2, "Failed to remove payload from repository"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private saveEvents(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/data/DataRepository;->save(Ljava/lang/String;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    const-string/jumbo v1, "nf_presentation"

    const-string/jumbo v2, "Failed to save payload to repository"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendPresentationEvents(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string/jumbo v0, "nf_presentation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Send events "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 154
    const-string/jumbo v0, "nf_presentation"

    const-string/jumbo v1, "Dropping presentation message - 0 events"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_0
    return-void

    .line 158
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    .line 159
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->addAllEvent(Ljava/util/List;)V

    .line 162
    :try_start_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    const-string/jumbo v2, "nf_presentation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Payload for presentation request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_2
    if-eqz p2, :cond_3

    .line 168
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->saveEvents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPendingCachedLogPayloads:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPresentationWebClient:Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebClient;

    new-instance v4, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationWebCallbackImpl;

    invoke-direct {v4, p0, v1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationWebCallbackImpl;-><init>(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;Ljava/lang/String;)V

    invoke-interface {v3, v2, v0, v4}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebClient;->sendPresentationEvents(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    const-string/jumbo v1, "nf_presentation"

    const-string/jumbo v2, "Failed to create JSON object for presentation request"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 172
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPresentationWebClient:Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebClient;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebClient;->sendPresentationEvents(Lcom/netflix/mediaclient/service/logging/presentation/PresentationRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method checkState()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPresentationEventQueue:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;->flushIfCriteriaIsFulfilled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const-string/jumbo v0, "nf_presentation"

    const-string/jumbo v1, "Presentation tracking events were send recently ms. We reached timeout, force send"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    return-void
.end method

.method flush(Z)V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPresentationEventQueue:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;->flushEvents(Z)V

    .line 309
    return-void
.end method

.method public handleConnectivityChange(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    const-string/jumbo v0, "nf_presentation"

    const-string/jumbo v1, "Device is connected, lets see if we need to deliver cached events..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    invoke-interface {v0}, Lcom/netflix/mediaclient/util/data/DataRepository;->getEntries()[Lcom/netflix/mediaclient/util/data/DataRepository$Entry;

    move-result-object v0

    .line 369
    if-nez v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_1

    .line 370
    :cond_0
    const-string/jumbo v1, "nf_presentation"

    const-string/jumbo v2, "We found %d cached log entries, network is connected, lets try to deliver them"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->deliverSavedPayloads([Lcom/netflix/mediaclient/util/data/DataRepository$Entry;)V

    .line 374
    :cond_1
    return-void
.end method

.method init(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .prologue
    .line 100
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 101
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->initPresentationQueue()V

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getApiNextWebClient()Lcom/netflix/mediaclient/service/webclient/WebClient;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebClientFactory;->create(Lcom/netflix/mediaclient/service/webclient/WebClient;)Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebClient;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPresentationWebClient:Lcom/netflix/mediaclient/service/logging/presentation/PresentationWebClient;

    .line 103
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->initDataRepository()V

    .line 104
    return-void
.end method

.method pauseDelivery()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPresentationEventQueue:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;->pauseDelivery()V

    .line 301
    return-void
.end method

.method public reportPresentation(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;Ljava/util/List;Ljava/util/List;ILcom/netflix/mediaclient/servicemgr/UiLocation;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/netflix/mediaclient/servicemgr/UiLocation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v7, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$1;-><init>(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;Ljava/util/List;Ljava/util/List;ILcom/netflix/mediaclient/servicemgr/UiLocation;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method resumeDelivery(Z)V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->mPresentationEventQueue:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;->resumeDelivery(Z)V

    .line 305
    return-void
.end method
