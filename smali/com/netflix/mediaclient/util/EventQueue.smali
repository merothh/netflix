.class public abstract Lcom/netflix/mediaclient/util/EventQueue;
.super Ljava/lang/Object;
.source "EventQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final MAX_TIME_THAN_EVENT_CAN_STAY_IN_QUEUE_MS:I = 0x493e0

.field public static final MIN_NUMBER_OF_EVENTS_TO_POST:I = 0x64


# instance fields
.field private TAG:Ljava/lang/String;

.field private mEventQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mFlushCriteria:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/EventQueue$FlushCriterion;",
            ">;"
        }
    .end annotation
.end field

.field private mLastTimeEventAddedInMs:J

.field private mMaxNumberOfEvents:I

.field private mMaxTimeToStayInQueueInMs:J

.field private mPaused:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 80
    invoke-direct {p0, p1, v0, v0}, Lcom/netflix/mediaclient/util/EventQueue;-><init>(Ljava/lang/String;ZZ)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string/jumbo v0, "nf_event"

    iput-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->TAG:Ljava/lang/String;

    .line 49
    const/16 v0, 0x64

    iput v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->mMaxNumberOfEvents:I

    .line 59
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->mMaxTimeToStayInQueueInMs:J

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->mEventQueue:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->mFlushCriteria:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->mPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iput-object p1, p0, Lcom/netflix/mediaclient/util/EventQueue;->TAG:Ljava/lang/String;

    .line 117
    :cond_0
    if-gtz p2, :cond_1

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number of events must be higher than 0!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_2

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Stay time in queue must be higher than 0!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_2
    iput p2, p0, Lcom/netflix/mediaclient/util/EventQueue;->mMaxNumberOfEvents:I

    .line 124
    iput-wide p3, p0, Lcom/netflix/mediaclient/util/EventQueue;->mMaxTimeToStayInQueueInMs:J

    .line 125
    if-eqz p5, :cond_3

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->mFlushCriteria:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/EventQueue$QueueSizeFlushCriterion;

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/util/EventQueue$QueueSizeFlushCriterion;-><init>(Lcom/netflix/mediaclient/util/EventQueue;Lcom/netflix/mediaclient/util/EventQueue$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_3
    if-eqz p6, :cond_4

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->mFlushCriteria:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/EventQueue$TimeInQueueFlushCriterion;

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/util/EventQueue$TimeInQueueFlushCriterion;-><init>(Lcom/netflix/mediaclient/util/EventQueue;Lcom/netflix/mediaclient/util/EventQueue$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string/jumbo v0, "nf_event"

    iput-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->TAG:Ljava/lang/String;

    .line 49
    const/16 v0, 0x64

    iput v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->mMaxNumberOfEvents:I

    .line 59
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->mMaxTimeToStayInQueueInMs:J

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->mEventQueue:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->mFlushCriteria:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->mPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iput-object p1, p0, Lcom/netflix/mediaclient/util/EventQueue;->TAG:Ljava/lang/String;

    .line 96
    :cond_0
    if-eqz p2, :cond_1

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->mFlushCriteria:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/EventQueue$QueueSizeFlushCriterion;

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/util/EventQueue$QueueSizeFlushCriterion;-><init>(Lcom/netflix/mediaclient/util/EventQueue;Lcom/netflix/mediaclient/util/EventQueue$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_1
    if-eqz p3, :cond_2

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->mFlushCriteria:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/util/EventQueue$TimeInQueueFlushCriterion;

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/util/EventQueue$TimeInQueueFlushCriterion;-><init>(Lcom/netflix/mediaclient/util/EventQueue;Lcom/netflix/mediaclient/util/EventQueue$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_2
    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/util/EventQueue;)Ljava/util/List;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->mEventQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/util/EventQueue;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->mMaxNumberOfEvents:I

    return v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/util/EventQueue;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/util/EventQueue;)J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->mMaxTimeToStayInQueueInMs:J

    return-wide v0
.end method


# virtual methods
.method public addFlushCriterion(Lcom/netflix/mediaclient/util/EventQueue$FlushCriterion;)V
    .locals 1

    .prologue
    .line 230
    if-nez p1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->mFlushCriteria:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected abstract doFlush(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;Z)V"
        }
    .end annotation
.end method

.method public declared-synchronized flushEvents(Z)V
    .locals 4

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    iget-object v1, p0, Lcom/netflix/mediaclient/util/EventQueue;->mEventQueue:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 185
    :try_start_1
    iget-object v2, p0, Lcom/netflix/mediaclient/util/EventQueue;->mEventQueue:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    iget-object v2, p0, Lcom/netflix/mediaclient/util/EventQueue;->mEventQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 187
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/netflix/mediaclient/util/EventQueue;->mLastTimeEventAddedInMs:J

    .line 188
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :try_start_2
    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/util/EventQueue;->doFlush(Ljava/util/List;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 190
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 183
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public flushIfCriteriaIsFulfilled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 167
    const/4 v1, 0x0

    .line 168
    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/EventQueue;->shouldFlushQueue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/util/EventQueue;->flushEvents(Z)V

    .line 173
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public pauseDelivery()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->mPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 252
    return-void
.end method

.method public final declared-synchronized post(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 141
    monitor-enter p0

    if-nez p1, :cond_1

    .line 156
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 145
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/util/EventQueue;->mEventQueue:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 146
    :try_start_1
    iget-object v3, p0, Lcom/netflix/mediaclient/util/EventQueue;->mEventQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/mediaclient/util/EventQueue;->mLastTimeEventAddedInMs:J

    .line 149
    :cond_2
    iget-object v3, p0, Lcom/netflix/mediaclient/util/EventQueue;->mEventQueue:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :try_start_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/EventQueue;->shouldFlushQueue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/util/EventQueue;->flushEvents(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v0, v1

    .line 154
    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 141
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeFlushCriterion(Lcom/netflix/mediaclient/util/EventQueue$FlushCriterion;)Z
    .locals 1

    .prologue
    .line 239
    if-nez p1, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 243
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->mFlushCriteria:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public resumeDelivery(Z)V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->mPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 261
    if-eqz p1, :cond_0

    .line 262
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/util/EventQueue;->flushEvents(Z)V

    .line 264
    :cond_0
    return-void
.end method

.method public shouldFlushQueue()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->mPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Paused state:: we can not flash events"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 225
    :goto_0
    return v0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->mFlushCriteria:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 212
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Custom rules to flush queue found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/util/EventQueue;->mFlushCriteria:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->mFlushCriteria:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/EventQueue$FlushCriterion;

    .line 216
    iget-object v4, p0, Lcom/netflix/mediaclient/util/EventQueue;->mEventQueue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-wide v6, p0, Lcom/netflix/mediaclient/util/EventQueue;->mLastTimeEventAddedInMs:J

    invoke-interface {v0, v4, v6, v7}, Lcom/netflix/mediaclient/util/EventQueue$FlushCriterion;->shouldFlushQueue(IJ)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 217
    goto :goto_0

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/util/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "No rules to flush queue, go and flush queue"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 222
    goto :goto_0

    :cond_4
    move v0, v1

    .line 225
    goto :goto_0
.end method
