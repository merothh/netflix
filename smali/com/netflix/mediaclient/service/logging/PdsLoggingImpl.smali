.class public Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;
.super Ljava/lang/Object;
.source "PdsLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/IPdsLogging;


# static fields
.field private static final MAX_TIME_THAN_EVENT_CAN_STAY_IN_QUEUE_MS:I = 0x1d4c0

.field private static final MIN_NUMBER_OF_EVENTS_TO_POST:I = 0x6

.field private static final REPOSITORY_DIR:Ljava/lang/String; = "pdsevents"

.field private static final TAG:Ljava/lang/String; = "nf_pds_logs"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

.field private mEventQueue:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventQueue;

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


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventQueue;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventQueue;-><init>(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mEventQueue:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventQueue;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mPendingCachedLogPayloads:Ljava/util/List;

    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Owner is null?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;[Lcom/netflix/mediaclient/util/data/DataRepository$Entry;Z)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->deliverSavedPayloads([Lcom/netflix/mediaclient/util/data/DataRepository$Entry;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;)Lcom/netflix/mediaclient/util/data/DataRepository;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->loadAndSendSavedPdsEvents(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->removeSavedPdsEvents(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallback;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->sendSavedPdsEventBundle(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallback;)V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mPendingCachedLogPayloads:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->flushEventsInQueue(Ljava/util/List;Z)V

    return-void
.end method

.method private deliverSavedPayloads([Lcom/netflix/mediaclient/util/data/DataRepository$Entry;Z)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 137
    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, v8, :cond_2

    .line 138
    :cond_0
    const-string/jumbo v0, "nf_pds_logs"

    const-string/jumbo v1, "No saved events found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_1
    return-void

    .line 142
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    const-string/jumbo v0, "nf_pds_logs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " payloads waiting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_3
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 149
    invoke-interface {v3}, Lcom/netflix/mediaclient/util/data/DataRepository$Entry;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 151
    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mPendingCachedLogPayloads:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 152
    const-string/jumbo v4, "nf_pds_logs"

    const-string/jumbo v5, "We are already trying to deliver %s deliveryRequestId, skip"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v1

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 147
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_4
    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mPendingCachedLogPayloads:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    if-eqz p2, :cond_5

    .line 158
    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$2;

    invoke-direct {v5, p0, v3}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$2;-><init>(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    .line 163
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getNextTimeToDeliverAfterFailure()J

    move-result-wide v6

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 158
    invoke-interface {v4, v5, v6, v7, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    .line 165
    :cond_5
    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$3;

    invoke-direct {v5, p0, v3}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$3;-><init>(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private flushEventsInQueue(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 251
    const-string/jumbo v0, "nf_pds_logs"

    const-string/jumbo v1, "flushing events in queue (%d)"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 252
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 253
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, v5, :cond_1

    .line 254
    :cond_0
    const-string/jumbo v0, "nf_pds_logs"

    const-string/jumbo v1, "dropping bad pds event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_0
    return-void

    .line 259
    :cond_1
    const/4 v1, 0x0

    .line 260
    if-eqz p2, :cond_2

    .line 261
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->toJsonString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->saveEvents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 262
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mPendingCachedLogPayloads:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v1, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallbackImpl;

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallbackImpl;-><init>(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;Ljava/lang/String;)V

    .line 267
    :cond_2
    new-instance v2, Lcom/netflix/mediaclient/service/logging/logpds/volley/SendPdsEventsMSLRequest;

    invoke-direct {v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/logpds/volley/SendPdsEventsMSLRequest;-><init>([Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallback;)V

    .line 268
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->addRequest(Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    const-string/jumbo v1, "nf_pds_logs"

    const-string/jumbo v2, "Failed to create JSON object for logging request"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initDataRepository()V
    .locals 3

    .prologue
    .line 106
    const-string/jumbo v0, "nf_pds_logs"

    const-string/jumbo v1, "::init data repository started "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 109
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "pdsevents"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 111
    new-instance v0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$1;-><init>(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 132
    const-string/jumbo v0, "nf_pds_logs"

    const-string/jumbo v1, "::init data repository done "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method private loadAndSendSavedPdsEvents(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 177
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string/jumbo v0, "nf_pds_logs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Load pdsEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    new-instance v1, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$4;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$4;-><init>(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/util/data/DataRepository;->load(Ljava/lang/String;Lcom/netflix/mediaclient/util/data/DataRepository$DataLoadedCallback;)V

    .line 199
    return-void
.end method

.method private removeSavedPdsEvents(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mPendingCachedLogPayloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/util/data/DataRepository;->remove(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    const-string/jumbo v1, "nf_pds_logs"

    const-string/jumbo v2, "Failed to remove payload from repository"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private saveEvents(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

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

    .line 235
    :goto_0
    return-object v0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    const-string/jumbo v1, "nf_pds_logs"

    const-string/jumbo v2, "Failed to save payload to repository"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendSavedPdsEventBundle(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallback;)V
    .locals 3

    .prologue
    .line 209
    const-string/jumbo v0, "nf_pds_logs"

    const-string/jumbo v1, "sendSavedPdsEventBundle start..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->toPdsEvents(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 213
    :cond_0
    const-string/jumbo v0, "nf_pds_logs"

    const-string/jumbo v1, "Nothing to sent, array is null. sendSavedPdsEventBundle done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p2, v0}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallback;->onPdsEventsSent(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 221
    :goto_0
    return-void

    .line 218
    :cond_1
    new-instance v1, Lcom/netflix/mediaclient/service/logging/logpds/volley/SendPdsEventsMSLRequest;

    invoke-direct {v1, v0, p2}, Lcom/netflix/mediaclient/service/logging/logpds/volley/SendPdsEventsMSLRequest;-><init>([Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallback;)V

    .line 219
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->addRequest(Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;)Z

    .line 220
    const-string/jumbo v0, "nf_pds_logs"

    const-string/jumbo v1, "sendSavedPdsEventBundle done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private toJsonString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 320
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 321
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 322
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toPdsEvents(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 332
    const/4 v1, 0x0

    .line 335
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 337
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 338
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 339
    const-string/jumbo v2, "nf_pds_logs"

    const-string/jumbo v4, "toPdsEvents: %d : %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aget-object v7, v0, v1

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 343
    :goto_1
    const-string/jumbo v2, "nf_pds_logs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to create JSON array from payload "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    :cond_0
    return-object v0

    .line 342
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public checkState()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mEventQueue:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventQueue;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventQueue;->flushIfCriteriaIsFulfilled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string/jumbo v0, "nf_pds_logs"

    const-string/jumbo v1, "PdsLog events were sent recently. We reached timeout, force send"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    return-void
.end method

.method destroy()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public flushEventsInLogging()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mEventQueue:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventQueue;->flushEvents(Z)V

    .line 283
    return-void
.end method

.method public handleConnectivityChange(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 350
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    const-string/jumbo v0, "nf_pds_logs"

    const-string/jumbo v1, "Device is connected, lets see if we need to deliver cached events..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    invoke-interface {v0}, Lcom/netflix/mediaclient/util/data/DataRepository;->getEntries()[Lcom/netflix/mediaclient/util/data/DataRepository$Entry;

    move-result-object v0

    .line 354
    if-nez v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_1

    .line 355
    :cond_0
    const-string/jumbo v1, "nf_pds_logs"

    const-string/jumbo v2, "We found %d cached log entries, network is connected, lets try to deliver them"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 356
    invoke-direct {p0, v0, v5}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->deliverSavedPayloads([Lcom/netflix/mediaclient/util/data/DataRepository$Entry;Z)V

    .line 359
    :cond_1
    return-void
.end method

.method init(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .prologue
    .line 95
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mContext:Landroid/content/Context;

    .line 97
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->initDataRepository()V

    .line 98
    return-void
.end method

.method public sendPdsEventViaLogging(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->mEventQueue:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventQueue;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventQueue;->post(Ljava/lang/Object;)Z

    .line 278
    return-void
.end method
