.class Lio/realm/internal/async/QueryUpdateTask$Builder$Steps;
.super Ljava/lang/Object;
.source "QueryUpdateTask.java"

# interfaces
.implements Lio/realm/internal/async/QueryUpdateTask$Builder$BuilderStep;
.implements Lio/realm/internal/async/QueryUpdateTask$Builder$HandlerStep;
.implements Lio/realm/internal/async/QueryUpdateTask$Builder$RealmConfigurationStep;
.implements Lio/realm/internal/async/QueryUpdateTask$Builder$RealmResultsQueryStep;
.implements Lio/realm/internal/async/QueryUpdateTask$Builder$UpdateQueryStep;


# instance fields
.field private callerNotifier:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/realm/internal/RealmNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private event:Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

.field private realmConfiguration:Lio/realm/RealmConfiguration;

.field private realmObjectEntry:Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;

.field private realmResultsEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/internal/async/QueryUpdateTask$1;)V
    .locals 0

    invoke-direct {p0}, Lio/realm/internal/async/QueryUpdateTask$Builder$Steps;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/ref/WeakReference;JLio/realm/internal/async/ArgumentsHolder;)Lio/realm/internal/async/QueryUpdateTask$Builder$RealmResultsQueryStep;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/realm/RealmResults",
            "<*>;>;J",
            "Lio/realm/internal/async/ArgumentsHolder;",
            ")",
            "Lio/realm/internal/async/QueryUpdateTask$Builder$RealmResultsQueryStep;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/internal/async/QueryUpdateTask$Builder$Steps;->realmResultsEntries:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/realm/internal/async/QueryUpdateTask$Builder$Steps;->realmResultsEntries:Ljava/util/List;

    :cond_0
    iget-object v6, p0, Lio/realm/internal/async/QueryUpdateTask$Builder$Steps;->realmResultsEntries:Ljava/util/List;

    new-instance v0, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;

    const/4 v5, 0x0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;-><init>(Ljava/lang/ref/WeakReference;JLio/realm/internal/async/ArgumentsHolder;Lio/realm/internal/async/QueryUpdateTask$1;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addObject(Ljava/lang/ref/WeakReference;JLio/realm/internal/async/ArgumentsHolder;)Lio/realm/internal/async/QueryUpdateTask$Builder$HandlerStep;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<+",
            "Lio/realm/RealmModel;",
            ">;J",
            "Lio/realm/internal/async/ArgumentsHolder;",
            ")",
            "Lio/realm/internal/async/QueryUpdateTask$Builder$HandlerStep;"
        }
    .end annotation

    new-instance v0, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;

    const/4 v5, 0x0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;-><init>(Ljava/lang/ref/WeakReference;JLio/realm/internal/async/ArgumentsHolder;Lio/realm/internal/async/QueryUpdateTask$1;)V

    iput-object v0, p0, Lio/realm/internal/async/QueryUpdateTask$Builder$Steps;->realmObjectEntry:Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;

    return-object p0
.end method

.method public build()Lio/realm/internal/async/QueryUpdateTask;
    .locals 8

    new-instance v0, Lio/realm/internal/async/QueryUpdateTask;

    iget-object v1, p0, Lio/realm/internal/async/QueryUpdateTask$Builder$Steps;->realmResultsEntries:Ljava/util/List;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lio/realm/internal/async/QueryUpdateTask$Builder$Steps;->realmConfiguration:Lio/realm/RealmConfiguration;

    iget-object v3, p0, Lio/realm/internal/async/QueryUpdateTask$Builder$Steps;->realmResultsEntries:Ljava/util/List;

    iget-object v4, p0, Lio/realm/internal/async/QueryUpdateTask$Builder$Steps;->realmObjectEntry:Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;

    iget-object v5, p0, Lio/realm/internal/async/QueryUpdateTask$Builder$Steps;->callerNotifier:Ljava/lang/ref/WeakReference;

    iget-object v6, p0, Lio/realm/internal/async/QueryUpdateTask$Builder$Steps;->event:Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lio/realm/internal/async/QueryUpdateTask;-><init>(ILio/realm/RealmConfiguration;Ljava/util/List;Lio/realm/internal/async/QueryUpdateTask$Builder$QueryEntry;Ljava/lang/ref/WeakReference;Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;Lio/realm/internal/async/QueryUpdateTask$1;)V

    return-object v0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public realmConfiguration(Lio/realm/RealmConfiguration;)Lio/realm/internal/async/QueryUpdateTask$Builder$UpdateQueryStep;
    .locals 0

    iput-object p1, p0, Lio/realm/internal/async/QueryUpdateTask$Builder$Steps;->realmConfiguration:Lio/realm/RealmConfiguration;

    return-object p0
.end method

.method public sendToNotifier(Lio/realm/internal/RealmNotifier;Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;)Lio/realm/internal/async/QueryUpdateTask$Builder$BuilderStep;
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/realm/internal/async/QueryUpdateTask$Builder$Steps;->callerNotifier:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lio/realm/internal/async/QueryUpdateTask$Builder$Steps;->event:Lio/realm/internal/async/QueryUpdateTask$NotifyEvent;

    return-object p0
.end method
