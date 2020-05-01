.class public final Lcom/netflix/cl/util/NavigationLevelCollector;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/netflix/cl/util/NavigationLevelCollector;

.field private static final appViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/netflix/cl/model/event/session/NavigationLevel;",
            ">;"
        }
    .end annotation
.end field

.field private static final navigationLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/cl/model/AppView;",
            ">;"
        }
    .end annotation
.end field

.field private static final sessionListener:Lcom/netflix/cl/util/SessionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/netflix/cl/util/NavigationLevelCollector;

    invoke-direct {v0}, Lcom/netflix/cl/util/NavigationLevelCollector;-><init>()V

    sput-object v0, Lcom/netflix/cl/util/NavigationLevelCollector;->INSTANCE:Lcom/netflix/cl/util/NavigationLevelCollector;

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/netflix/cl/util/NavigationLevelCollector;->appViews:Ljava/util/LinkedList;

    .line 31
    new-instance v0, Lcom/netflix/cl/util/NavigationLevelCollector$navigationLevels$1;

    invoke-direct {v0}, Lcom/netflix/cl/util/NavigationLevelCollector$navigationLevels$1;-><init>()V

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lo/amk;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/netflix/cl/util/NavigationLevelCollector;->navigationLevels:Ljava/util/List;

    .line 45
    new-instance v0, Lcom/netflix/cl/util/NavigationLevelCollector$sessionListener$1;

    invoke-direct {v0}, Lcom/netflix/cl/util/NavigationLevelCollector$sessionListener$1;-><init>()V

    check-cast v0, Lcom/netflix/cl/util/SessionListener;

    sput-object v0, Lcom/netflix/cl/util/NavigationLevelCollector;->sessionListener:Lcom/netflix/cl/util/SessionListener;

    return-void

    .line 31
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.MutableList<com.netflix.cl.model.AppView?>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildNavigationLevelsString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 89
    check-cast v0, Ljava/lang/StringBuilder;

    .line 90
    sget-object v1, Lcom/netflix/cl/util/NavigationLevelCollector;->navigationLevels:Ljava/util/List;

    monitor-enter v1

    .line 91
    :try_start_0
    sget-object v2, Lcom/netflix/cl/util/NavigationLevelCollector;->navigationLevels:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 102
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/cl/model/AppView;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 97
    :cond_1
    sget-object v2, Lo/akj;->a:Lo/akj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit v1

    if-eqz v0, :cond_2

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, ""

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 90
    monitor-exit v1

    throw v0
.end method

.method public final getAppViews()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/netflix/cl/model/event/session/NavigationLevel;",
            ">;"
        }
    .end annotation

    .line 24
    sget-object v0, Lcom/netflix/cl/util/NavigationLevelCollector;->appViews:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final getCurrentNavigationLevel()Lcom/netflix/cl/model/event/session/NavigationLevel;
    .locals 1

    .line 72
    sget-object v0, Lcom/netflix/cl/util/NavigationLevelCollector;->appViews:Ljava/util/LinkedList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/netflix/cl/util/NavigationLevelCollector;->appViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/cl/model/event/session/NavigationLevel;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCurrentScreen()Ljava/lang/String;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/netflix/cl/util/NavigationLevelCollector;->getCurrentNavigationLevel()Lcom/netflix/cl/model/event/session/NavigationLevel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/cl/model/event/session/NavigationLevel;->getView()Lcom/netflix/cl/model/AppView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/cl/model/AppView;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getNavigationLevels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/cl/model/AppView;",
            ">;"
        }
    .end annotation

    .line 31
    sget-object v0, Lcom/netflix/cl/util/NavigationLevelCollector;->navigationLevels:Ljava/util/List;

    return-object v0
.end method

.method public final initListener()V
    .locals 2

    .line 65
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    sget-object v1, Lcom/netflix/cl/util/NavigationLevelCollector;->sessionListener:Lcom/netflix/cl/util/SessionListener;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addSessionListeners(Lcom/netflix/cl/util/SessionListener;)V

    return-void
.end method
