.class public final enum Lcom/netflix/cl/Logger;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/cl/Logger$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/cl/Logger;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/cl/Logger;

.field public static final enum INSTANCE:Lcom/netflix/cl/Logger;


# instance fields
.field private currentDelta:Lcom/netflix/cl/model/envelope/ReverseDelta;

.field private currentState:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Lcom/netflix/cl/model/ContextType;",
            ">;"
        }
    .end annotation
.end field

.field private eventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/cl/util/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private eventSender:Lcom/netflix/cl/EventSender;

.field private exclusiveContexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/cl/model/context/CLContext;",
            ">;"
        }
    .end annotation
.end field

.field private exclusiveSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/cl/model/event/session/Session;",
            ">;"
        }
    .end annotation
.end field

.field private logSessionId:Ljava/lang/Long;

.field private pendingContexts:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Lcom/netflix/cl/model/context/CLContext;",
            ">;"
        }
    .end annotation
.end field

.field public final sessionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/cl/util/SessionListener;",
            ">;"
        }
    .end annotation
.end field

.field private snapshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/cl/model/envelope/ReverseDelta;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/netflix/cl/Logger$State;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Lcom/netflix/cl/Logger;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/netflix/cl/Logger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/cl/Logger;

    .line 41
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/cl/Logger;->$VALUES:[Lcom/netflix/cl/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    sget-object p1, Lcom/netflix/cl/Logger$State;->not_initialized:Lcom/netflix/cl/Logger$State;

    iput-object p1, p0, Lcom/netflix/cl/Logger;->state:Lcom/netflix/cl/Logger$State;

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/cl/Logger;->eventListeners:Ljava/util/List;

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/cl/Logger;->sessionListeners:Ljava/util/List;

    .line 70
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/cl/Logger;->currentState:Ljava/util/SortedMap;

    .line 76
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/cl/Logger;->pendingContexts:Ljava/util/SortedMap;

    .line 82
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/netflix/cl/Logger;->exclusiveContexts:Ljava/util/Map;

    .line 88
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/netflix/cl/Logger;->exclusiveSessions:Ljava/util/Map;

    .line 93
    new-instance p1, Lcom/netflix/cl/model/envelope/ReverseDelta;

    invoke-direct {p1}, Lcom/netflix/cl/model/envelope/ReverseDelta;-><init>()V

    iput-object p1, p0, Lcom/netflix/cl/Logger;->currentDelta:Lcom/netflix/cl/model/envelope/ReverseDelta;

    .line 98
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/netflix/cl/Logger;->snapshots:Ljava/util/List;

    return-void
.end method

.method private addPendingContexts()I
    .locals 7

    .line 625
    iget-object v0, p0, Lcom/netflix/cl/Logger;->pendingContexts:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/cl/model/context/CLContext;

    .line 626
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addPendingContexts:: Pending context: ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/netflix/cl/model/context/CLContext;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", context: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;)V

    .line 627
    iget-object v3, p0, Lcom/netflix/cl/Logger;->currentState:Ljava/util/SortedMap;

    invoke-virtual {v2}, Lcom/netflix/cl/model/context/CLContext;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 631
    :cond_0
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPendingContexts::Count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/netflix/cl/Logger;->currentDelta:Lcom/netflix/cl/model/envelope/ReverseDelta;

    new-instance v2, Lcom/netflix/cl/model/envelope/AddedMultipleContexs;

    invoke-direct {v2, v1}, Lcom/netflix/cl/model/envelope/AddedMultipleContexs;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/netflix/cl/model/envelope/ReverseDelta;->add(Lcom/netflix/cl/model/envelope/Operation;)V

    .line 634
    iget-object v0, p0, Lcom/netflix/cl/Logger;->pendingContexts:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    return v1
.end method

.method private alertSender()V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/netflix/cl/Logger;->eventSender:Lcom/netflix/cl/EventSender;

    if-eqz v0, :cond_0

    .line 608
    iget-object v1, p0, Lcom/netflix/cl/Logger;->snapshots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/netflix/cl/EventSender;->eventAdded(I)V

    goto :goto_0

    .line 610
    :cond_0
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v0

    const-string v1, "Event sender not set yet!"

    invoke-interface {v0, v1}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private removeIfExclusiveContext(Lcom/netflix/cl/model/context/CLContext;)V
    .locals 1

    .line 276
    instance-of v0, p1, Lcom/netflix/cl/model/Exclusive;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/netflix/cl/Logger;->exclusiveContexts:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private snapshot()V
    .locals 2

    .line 643
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v0

    const-string v1, "Create snapshot for season start..."

    invoke-interface {v0, v1}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;)V

    .line 644
    invoke-direct {p0}, Lcom/netflix/cl/Logger;->addPendingContexts()I

    .line 645
    new-instance v0, Lcom/netflix/cl/model/envelope/ReverseDelta;

    invoke-direct {v0}, Lcom/netflix/cl/model/envelope/ReverseDelta;-><init>()V

    iput-object v0, p0, Lcom/netflix/cl/Logger;->currentDelta:Lcom/netflix/cl/model/envelope/ReverseDelta;

    .line 646
    iget-object v0, p0, Lcom/netflix/cl/Logger;->snapshots:Ljava/util/List;

    iget-object v1, p0, Lcom/netflix/cl/Logger;->currentDelta:Lcom/netflix/cl/model/envelope/ReverseDelta;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    invoke-direct {p0}, Lcom/netflix/cl/Logger;->alertSender()V

    return-void
.end method

.method private snapshot(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V
    .locals 4

    .line 658
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;->getEventName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Create snapshot for discrete event %s..."

    invoke-interface {v0, v2, v1}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    invoke-direct {p0}, Lcom/netflix/cl/Logger;->addPendingContexts()I

    .line 660
    new-instance v0, Lcom/netflix/cl/model/envelope/ReverseDelta;

    invoke-direct {v0}, Lcom/netflix/cl/model/envelope/ReverseDelta;-><init>()V

    iput-object v0, p0, Lcom/netflix/cl/Logger;->currentDelta:Lcom/netflix/cl/model/envelope/ReverseDelta;

    .line 661
    iget-object v0, p0, Lcom/netflix/cl/Logger;->snapshots:Ljava/util/List;

    iget-object v1, p0, Lcom/netflix/cl/Logger;->currentDelta:Lcom/netflix/cl/model/envelope/ReverseDelta;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    iget-object v0, p0, Lcom/netflix/cl/Logger;->currentDelta:Lcom/netflix/cl/model/envelope/ReverseDelta;

    new-instance v1, Lcom/netflix/cl/model/envelope/RemovedContext;

    invoke-direct {v1, p1}, Lcom/netflix/cl/model/envelope/RemovedContext;-><init>(Lcom/netflix/cl/model/ContextType;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/model/envelope/ReverseDelta;->add(Lcom/netflix/cl/model/envelope/Operation;)V

    .line 665
    invoke-direct {p0}, Lcom/netflix/cl/Logger;->alertSender()V

    return-void
.end method

.method private snapshot(Lcom/netflix/cl/model/event/session/Session;Lcom/netflix/cl/model/event/session/SessionEnded;)V
    .locals 2

    .line 676
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v0

    const-string v1, "Create snapshot for season end..."

    invoke-interface {v0, v1}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;)V

    .line 677
    invoke-direct {p0}, Lcom/netflix/cl/Logger;->addPendingContexts()I

    .line 678
    new-instance v0, Lcom/netflix/cl/model/envelope/ReverseDelta;

    invoke-direct {v0}, Lcom/netflix/cl/model/envelope/ReverseDelta;-><init>()V

    iput-object v0, p0, Lcom/netflix/cl/Logger;->currentDelta:Lcom/netflix/cl/model/envelope/ReverseDelta;

    .line 679
    iget-object v0, p0, Lcom/netflix/cl/Logger;->snapshots:Ljava/util/List;

    iget-object v1, p0, Lcom/netflix/cl/Logger;->currentDelta:Lcom/netflix/cl/model/envelope/ReverseDelta;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    iget-object v0, p0, Lcom/netflix/cl/Logger;->currentDelta:Lcom/netflix/cl/model/envelope/ReverseDelta;

    new-instance v1, Lcom/netflix/cl/model/envelope/RemovedContext;

    invoke-direct {v1, p2}, Lcom/netflix/cl/model/envelope/RemovedContext;-><init>(Lcom/netflix/cl/model/ContextType;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/model/envelope/ReverseDelta;->add(Lcom/netflix/cl/model/envelope/Operation;)V

    .line 682
    iget-object p2, p0, Lcom/netflix/cl/Logger;->currentDelta:Lcom/netflix/cl/model/envelope/ReverseDelta;

    new-instance v0, Lcom/netflix/cl/model/envelope/RemovedContext;

    invoke-direct {v0, p1}, Lcom/netflix/cl/model/envelope/RemovedContext;-><init>(Lcom/netflix/cl/model/ContextType;)V

    invoke-virtual {p2, v0}, Lcom/netflix/cl/model/envelope/ReverseDelta;->add(Lcom/netflix/cl/model/envelope/Operation;)V

    .line 684
    invoke-direct {p0}, Lcom/netflix/cl/Logger;->alertSender()V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/cl/Logger;
    .locals 1

    .line 41
    const-class v0, Lcom/netflix/cl/Logger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/cl/Logger;

    return-object p0
.end method

.method public static values()[Lcom/netflix/cl/Logger;
    .locals 1

    .line 41
    sget-object v0, Lcom/netflix/cl/Logger;->$VALUES:[Lcom/netflix/cl/Logger;

    invoke-virtual {v0}, [Lcom/netflix/cl/Logger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/cl/Logger;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addContext(Lcom/netflix/cl/model/context/CLContext;)J
    .locals 6

    monitor-enter p0

    .line 161
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/cl/Logger;->isDisabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    .line 162
    monitor-exit p0

    return-wide v0

    :cond_0
    if-eqz p1, :cond_4

    .line 169
    :try_start_1
    invoke-virtual {p1}, Lcom/netflix/cl/model/context/CLContext;->prepareForSending()V

    .line 170
    iget-object v0, p0, Lcom/netflix/cl/Logger;->pendingContexts:Ljava/util/SortedMap;

    invoke-virtual {p1}, Lcom/netflix/cl/model/context/CLContext;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 173
    instance-of v1, p1, Lcom/netflix/cl/model/Exclusive;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 174
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v1

    const-string v4, "addContext:: Context %s is exclusive. Added"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-interface {v1, v4, v5}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iget-object v1, p0, Lcom/netflix/cl/Logger;->exclusiveContexts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/cl/model/context/CLContext;

    if-ne v1, p1, :cond_1

    .line 178
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v1

    const-string v4, "addContext:: Old context for %s same as new, do nothing"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-interface {v1, v4, v3}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-virtual {p1}, Lcom/netflix/cl/model/context/CLContext;->getId()J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :cond_1
    if-eqz v1, :cond_2

    .line 183
    :try_start_2
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v4

    const-string v5, "addContext:: Old context for %s found and removed"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-interface {v4, v5, v3}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    invoke-virtual {v1}, Lcom/netflix/cl/model/context/CLContext;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    .line 187
    :cond_2
    iget-object v1, p0, Lcom/netflix/cl/Logger;->exclusiveContexts:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 190
    :cond_3
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v1

    const-string v4, "addContext:: Context %s is NON exclusive. Added"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-interface {v1, v4, v3}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    :goto_0
    invoke-virtual {p1}, Lcom/netflix/cl/model/context/CLContext;->getId()J

    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 166
    :cond_4
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context can not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addSessionListeners(Lcom/netflix/cl/util/SessionListener;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/netflix/cl/Logger;->sessionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/netflix/cl/Logger;->sessionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized cancelSession(Ljava/lang/Long;)Z
    .locals 2

    monitor-enter p0

    .line 480
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/cl/Logger;->isDisabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 481
    monitor-exit p0

    return v1

    :cond_0
    if-nez p1, :cond_1

    .line 485
    monitor-exit p0

    return v1

    .line 488
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/netflix/cl/model/event/session/Session;->createSessionCanceledEvent(Ljava/lang/Long;)Lcom/netflix/cl/model/event/session/SessionCanceled;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    .line 490
    monitor-exit p0

    return v1

    .line 493
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z
    .locals 9

    monitor-enter p0

    .line 430
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/cl/Logger;->isDisabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 431
    monitor-exit p0

    return v1

    :cond_0
    if-nez p1, :cond_1

    .line 435
    monitor-exit p0

    return v1

    .line 438
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/SessionEnded;->prepareForSending()V

    .line 440
    iget-object v0, p0, Lcom/netflix/cl/Logger;->eventSender:Lcom/netflix/cl/EventSender;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 441
    iget-object v0, p0, Lcom/netflix/cl/Logger;->eventSender:Lcom/netflix/cl/EventSender;

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/SessionEnded;->getSessionName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/netflix/cl/EventSender;->canSendEvent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 442
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v0

    const-string v3, "Sampling event %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/SessionEnded;->getSessionName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-interface {v0, v3, v2}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 443
    monitor-exit p0

    return v1

    .line 447
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/netflix/cl/Logger;->currentState:Ljava/util/SortedMap;

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/SessionEnded;->getSessionId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/cl/model/event/session/Session;

    if-nez v0, :cond_3

    .line 449
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v0

    const-string v3, "endSession:: session can not be found for id %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/SessionEnded;->getSessionId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-interface {v0, v3, v2}, Lcom/netflix/cl/Platform$LocalLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 450
    monitor-exit p0

    return v1

    .line 452
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v3

    const-string v4, "endSession:: for id %d removing session %s "

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/SessionEnded;->getSessionId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v0}, Lcom/netflix/cl/model/event/session/Session;->getSessionName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-interface {v3, v4, v6}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    iget-object v3, p0, Lcom/netflix/cl/Logger;->sessionListeners:Ljava/util/List;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 456
    :try_start_4
    iget-object v4, p0, Lcom/netflix/cl/Logger;->sessionListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netflix/cl/util/SessionListener;

    .line 457
    invoke-interface {v6, v0}, Lcom/netflix/cl/util/SessionListener;->onEndSession(Lcom/netflix/cl/model/event/session/Session;)V

    goto :goto_0

    .line 459
    :cond_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 461
    :try_start_5
    instance-of v3, v0, Lcom/netflix/cl/model/Exclusive;

    if-eqz v3, :cond_5

    .line 462
    iget-object v3, p0, Lcom/netflix/cl/Logger;->exclusiveSessions:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/cl/model/event/session/Session;->getSessionName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :cond_5
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v3

    const-string v4, "Ending session %s id %d, with event id %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/netflix/cl/model/event/session/Session;->getSessionName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v0}, Lcom/netflix/cl/model/event/session/Session;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/SessionEnded;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v5

    invoke-interface {v3, v4, v6}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    invoke-direct {p0, v0, p1}, Lcom/netflix/cl/Logger;->snapshot(Lcom/netflix/cl/model/event/session/Session;Lcom/netflix/cl/model/event/session/SessionEnded;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 466
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 459
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized endSession(Ljava/lang/Long;)Z
    .locals 2

    monitor-enter p0

    .line 506
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/cl/Logger;->isDisabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 507
    monitor-exit p0

    return v1

    :cond_0
    if-nez p1, :cond_1

    .line 511
    monitor-exit p0

    return v1

    .line 514
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/netflix/cl/model/event/session/Session;->createSessionEndedEvent(Ljava/lang/Long;)Lcom/netflix/cl/model/event/session/SessionEnded;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    .line 516
    monitor-exit p0

    return v1

    .line 519
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized existExclusiveSession(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/netflix/cl/Logger;->exclusiveSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1
.end method

.method public declared-synchronized flush()V
    .locals 7

    monitor-enter p0

    .line 568
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/cl/Logger;->isDisabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 569
    monitor-exit p0

    return-void

    .line 572
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/cl/Logger;->eventSender:Lcom/netflix/cl/EventSender;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 573
    :goto_0
    iget-object v3, p0, Lcom/netflix/cl/Logger;->snapshots:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v0, :cond_3

    if-ge v3, v2, :cond_2

    goto :goto_1

    .line 579
    :cond_2
    new-instance v0, Lcom/netflix/cl/model/envelope/CompactConsolidatedLoggingEnvelope;

    iget-object v1, p0, Lcom/netflix/cl/Logger;->currentState:Ljava/util/SortedMap;

    iget-object v2, p0, Lcom/netflix/cl/Logger;->snapshots:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/netflix/cl/model/envelope/CompactConsolidatedLoggingEnvelope;-><init>(Ljava/util/Map;Ljava/util/List;)V

    .line 580
    iget-object v1, p0, Lcom/netflix/cl/Logger;->snapshots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 581
    new-instance v1, Lcom/netflix/cl/model/envelope/ReverseDelta;

    invoke-direct {v1}, Lcom/netflix/cl/model/envelope/ReverseDelta;-><init>()V

    iput-object v1, p0, Lcom/netflix/cl/Logger;->currentDelta:Lcom/netflix/cl/model/envelope/ReverseDelta;

    .line 582
    iget-object v1, p0, Lcom/netflix/cl/Logger;->eventSender:Lcom/netflix/cl/EventSender;

    invoke-interface {v1, v0}, Lcom/netflix/cl/EventSender;->send(Lcom/netflix/cl/model/envelope/LoggingEnvelope;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 583
    monitor-exit p0

    return-void

    .line 575
    :cond_3
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v4

    const-string v5, "Unable to flush, evet send is missing %b and/or snapshot size %d is less than 1!"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-interface {v4, v5, v6}, Lcom/netflix/cl/Platform$LocalLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 576
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getExclusiveSession(Ljava/lang/String;)Lcom/netflix/cl/model/event/session/Session;
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 691
    monitor-exit p0

    return-object p1

    .line 694
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/cl/Logger;->exclusiveSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/cl/model/event/session/Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSession(Ljava/lang/Long;)Lcom/netflix/cl/model/event/session/Session;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 290
    monitor-exit p0

    return-object v0

    .line 293
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/cl/Logger;->isDisabled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 294
    monitor-exit p0

    return-object v0

    .line 297
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/netflix/cl/Logger;->currentState:Ljava/util/SortedMap;

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/cl/model/ContextType;

    .line 298
    instance-of v1, p1, Lcom/netflix/cl/model/event/session/Session;

    if-eqz v1, :cond_2

    .line 299
    check-cast p1, Lcom/netflix/cl/model/event/session/Session;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 302
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method init()V
    .locals 1

    .line 148
    new-instance v0, Lcom/netflix/cl/model/event/session/Log;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/Log;-><init>()V

    invoke-virtual {p0, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/cl/Logger;->logSessionId:Ljava/lang/Long;

    .line 149
    new-instance v0, Lcom/netflix/cl/model/event/discrete/LoggerInitialized;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/discrete/LoggerInitialized;-><init>()V

    invoke-virtual {p0, v0}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    return-void
.end method

.method public isDisabled()Z
    .locals 2

    .line 715
    iget-object v0, p0, Lcom/netflix/cl/Logger;->state:Lcom/netflix/cl/Logger$State;

    sget-object v1, Lcom/netflix/cl/Logger$State;->disabled:Lcom/netflix/cl/Logger$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V
    .locals 8

    monitor-enter p0

    .line 314
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/cl/Logger;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 318
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;->prepareForSending()V

    .line 320
    iget-object v0, p0, Lcom/netflix/cl/Logger;->eventSender:Lcom/netflix/cl/EventSender;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/netflix/cl/Logger;->eventSender:Lcom/netflix/cl/EventSender;

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;->getEventName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/netflix/cl/EventSender;->canSendEvent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v0

    const-string v3, "Sampling event %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;->getEventName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-interface {v0, v3, v2}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    monitor-exit p0

    return-void

    .line 327
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/cl/Logger;->eventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/netflix/cl/Logger;->eventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/cl/util/EventListener;

    .line 329
    invoke-interface {v3, p1}, Lcom/netflix/cl/util/EventListener;->onDiscreteEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    goto :goto_0

    .line 333
    :cond_2
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/cl/Platform$LocalLogger;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    .line 335
    instance-of v3, p1, Lcom/netflix/cl/model/Tracked;

    if-eqz v3, :cond_3

    .line 336
    move-object v0, p1

    check-cast v0, Lcom/netflix/cl/model/Tracked;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trackingInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/netflix/cl/model/Tracked;->trackingInfo()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/cl/model/TrackingInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 340
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trackingInfo=error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    :cond_3
    :goto_1
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v3

    const-string v4, "Added discrete event %s id %d, %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;->getEventName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    aput-object v0, v5, v1

    invoke-interface {v3, v4, v5}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    :cond_4
    invoke-direct {p0, p1}, Lcom/netflix/cl/Logger;->snapshot(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 346
    monitor-exit p0

    return-void

    .line 315
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeContext(Ljava/lang/Long;)Z
    .locals 6

    monitor-enter p0

    .line 243
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/cl/Logger;->isDisabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 244
    monitor-exit p0

    return v1

    :cond_0
    if-nez p1, :cond_1

    .line 248
    monitor-exit p0

    return v1

    .line 251
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/cl/Logger;->pendingContexts:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/cl/model/context/CLContext;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 253
    invoke-direct {p0, v0}, Lcom/netflix/cl/Logger;->removeIfExclusiveContext(Lcom/netflix/cl/model/context/CLContext;)V

    .line 254
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v0

    const-string v3, "Context found in pending contexts for ID:  %d"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    monitor-exit p0

    return v2

    .line 258
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/netflix/cl/Logger;->currentState:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/cl/model/ContextType;

    .line 259
    instance-of v0, v0, Lcom/netflix/cl/model/event/session/Session;

    if-nez v0, :cond_4

    .line 263
    iget-object v0, p0, Lcom/netflix/cl/Logger;->currentState:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/cl/model/context/CLContext;

    if-eqz v0, :cond_3

    .line 265
    invoke-direct {p0, v0}, Lcom/netflix/cl/Logger;->removeIfExclusiveContext(Lcom/netflix/cl/model/context/CLContext;)V

    .line 266
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v3

    const-string v4, "Context found in current contexts for ID:  %d"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-interface {v3, v4, v5}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    iget-object p1, p0, Lcom/netflix/cl/Logger;->currentDelta:Lcom/netflix/cl/model/envelope/ReverseDelta;

    new-instance v1, Lcom/netflix/cl/model/envelope/RemovedContext;

    invoke-direct {v1, v0}, Lcom/netflix/cl/model/envelope/RemovedContext;-><init>(Lcom/netflix/cl/model/ContextType;)V

    invoke-virtual {p1, v1}, Lcom/netflix/cl/model/envelope/ReverseDelta;->add(Lcom/netflix/cl/model/envelope/Operation;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    monitor-exit p0

    return v2

    .line 271
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v0

    const-string v3, "Context not found for ID %d."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-interface {v0, v3, v2}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 272
    monitor-exit p0

    return v1

    .line 260
    :cond_4
    :try_start_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "removeContext:: id is session. We are trying to remove session, instead of context!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeExclusiveContext(Ljava/lang/Class;)Z
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 205
    monitor-exit p0

    return p1

    .line 207
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/cl/Logger;->removeExclusiveContext(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeExclusiveContext(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    .line 219
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/cl/Logger;->isDisabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 220
    monitor-exit p0

    return v1

    :cond_0
    if-nez p1, :cond_1

    .line 224
    monitor-exit p0

    return v1

    .line 227
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/cl/Logger;->exclusiveContexts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/cl/model/context/CLContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    .line 229
    monitor-exit p0

    return v1

    .line 231
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcom/netflix/cl/model/context/CLContext;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method resetState()V
    .locals 7

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 528
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 530
    iget-object v2, p0, Lcom/netflix/cl/Logger;->pendingContexts:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/cl/model/context/CLContext;

    .line 531
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetState:: add pendingContexts to pending removal "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;)V

    .line 532
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 535
    :cond_0
    iget-object v2, p0, Lcom/netflix/cl/Logger;->currentState:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/cl/model/ContextType;

    .line 537
    instance-of v4, v3, Lcom/netflix/cl/model/context/CLContext;

    if-eqz v4, :cond_1

    .line 538
    check-cast v3, Lcom/netflix/cl/model/context/CLContext;

    .line 539
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetState:: add currentState to pending removal "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;)V

    .line 540
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 541
    :cond_1
    instance-of v4, v3, Lcom/netflix/cl/model/event/session/Session;

    if-eqz v4, :cond_2

    .line 542
    check-cast v3, Lcom/netflix/cl/model/event/session/Session;

    .line 543
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetState:: add currentState to pending removal session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;)V

    .line 544
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 546
    :cond_2
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetState:: uknown state which is not removed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/netflix/cl/Platform$LocalLogger;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 550
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/cl/model/event/session/Session;

    .line 551
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetState:: cancel session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v2}, Lcom/netflix/cl/model/event/session/Session;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    goto :goto_2

    .line 555
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/cl/model/context/CLContext;

    .line 556
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetState:: removing context "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v1}, Lcom/netflix/cl/model/context/CLContext;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    goto :goto_3

    :cond_5
    return-void
.end method

.method public declared-synchronized setEventSender(Lcom/netflix/cl/EventSender;)V
    .locals 1

    monitor-enter p0

    .line 592
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/cl/Logger;->isDisabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 593
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 600
    :try_start_1
    iput-object p1, p0, Lcom/netflix/cl/Logger;->eventSender:Lcom/netflix/cl/EventSender;

    .line 601
    sget-object p1, Lcom/netflix/cl/Logger$State;->ready_to_deliver:Lcom/netflix/cl/Logger$State;

    iput-object p1, p0, Lcom/netflix/cl/Logger;->state:Lcom/netflix/cl/Logger$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 602
    monitor-exit p0

    return-void

    .line 597
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Event sender can not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start(Lcom/netflix/cl/Platform$PlatformImpl;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/netflix/cl/Logger;->state:Lcom/netflix/cl/Logger$State;

    sget-object v1, Lcom/netflix/cl/Logger$State;->not_initialized:Lcom/netflix/cl/Logger$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    .line 135
    monitor-exit p0

    return-void

    .line 138
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/netflix/cl/Platform;->setImp(Lcom/netflix/cl/Platform$PlatformImpl;)V

    .line 140
    invoke-virtual {p0}, Lcom/netflix/cl/Logger;->init()V

    .line 141
    sget-object p1, Lcom/netflix/cl/Logger$State;->initialized:Lcom/netflix/cl/Logger$State;

    iput-object p1, p0, Lcom/netflix/cl/Logger;->state:Lcom/netflix/cl/Logger$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 131
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Platform can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;
    .locals 8

    monitor-enter p0

    .line 367
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/cl/Logger;->isDisabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 368
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v0

    const-string v4, "Logger disabled, can not send %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/Session;->getSessionName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-interface {v0, v4, v3}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 369
    monitor-exit p0

    return-object v1

    :cond_0
    if-eqz p1, :cond_7

    .line 376
    :try_start_1
    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/Session;->prepareForSending()V

    .line 378
    iget-object v0, p0, Lcom/netflix/cl/Logger;->eventSender:Lcom/netflix/cl/EventSender;

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/netflix/cl/Logger;->eventSender:Lcom/netflix/cl/EventSender;

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/Session;->getSessionName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/netflix/cl/EventSender;->canSendEvent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v0

    const-string v4, "Sampling event %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/Session;->getSessionName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-interface {v0, v4, v3}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 381
    monitor-exit p0

    return-object v1

    .line 385
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/netflix/cl/Logger;->sessionListeners:Ljava/util/List;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 386
    :try_start_3
    iget-object v1, p0, Lcom/netflix/cl/Logger;->sessionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netflix/cl/util/SessionListener;

    .line 387
    invoke-interface {v4, p1}, Lcom/netflix/cl/util/SessionListener;->onStartSession(Lcom/netflix/cl/model/event/session/Session;)V

    goto :goto_0

    .line 389
    :cond_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 391
    :try_start_4
    instance-of v0, p1, Lcom/netflix/cl/model/Exclusive;

    if-eqz v0, :cond_4

    .line 392
    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/Session;->getSessionName()Ljava/lang/String;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lcom/netflix/cl/Logger;->exclusiveSessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    if-eqz v1, :cond_3

    .line 395
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v4

    const-string v5, "Session already exist %s. Cancel it!"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-interface {v4, v5, v6}, Lcom/netflix/cl/Platform$LocalLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    invoke-virtual {v1}, Lcom/netflix/cl/model/event/session/Session;->getSessionId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/cl/model/event/session/Session;->createSessionCanceledEvent(Ljava/lang/Long;)Lcom/netflix/cl/model/event/session/SessionCanceled;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    .line 399
    :cond_3
    iget-object v1, p0, Lcom/netflix/cl/Logger;->exclusiveSessions:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :cond_4
    iget-object v0, p0, Lcom/netflix/cl/Logger;->currentState:Ljava/util/SortedMap;

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/Session;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/cl/Platform$LocalLogger;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ""

    .line 404
    instance-of v1, p1, Lcom/netflix/cl/model/Tracked;

    if-eqz v1, :cond_5

    .line 405
    move-object v0, p1

    check-cast v0, Lcom/netflix/cl/model/Tracked;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 407
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trackingInfo="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/netflix/cl/model/Tracked;->trackingInfo()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/cl/model/TrackingInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 409
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trackingInfo=error "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    :cond_5
    :goto_1
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v1

    const-string v4, "Added session %s id %d, %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/Session;->getSessionName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/Session;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v3

    const/4 v2, 0x2

    aput-object v0, v5, v2

    invoke-interface {v1, v4, v5}, Lcom/netflix/cl/Platform$LocalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    :cond_6
    invoke-direct {p0}, Lcom/netflix/cl/Logger;->snapshot()V

    .line 416
    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/Session;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 389
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p1

    .line 373
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Session can not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
