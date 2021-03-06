.class public Lio/realm/internal/ObjectServerFacade;
.super Ljava/lang/Object;
.source "ObjectServerFacade.java"


# static fields
.field private static final nonSyncFacade:Lio/realm/internal/ObjectServerFacade;

.field private static syncFacade:Lio/realm/internal/ObjectServerFacade;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/realm/internal/ObjectServerFacade;

    invoke-direct {v0}, Lio/realm/internal/ObjectServerFacade;-><init>()V

    sput-object v0, Lio/realm/internal/ObjectServerFacade;->nonSyncFacade:Lio/realm/internal/ObjectServerFacade;

    const/4 v0, 0x0

    sput-object v0, Lio/realm/internal/ObjectServerFacade;->syncFacade:Lio/realm/internal/ObjectServerFacade;

    :try_start_0
    const-string/jumbo v0, "io.realm.internal.objectserver.SyncObjectServerFacade"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/ObjectServerFacade;

    sput-object v0, Lio/realm/internal/ObjectServerFacade;->syncFacade:Lio/realm/internal/ObjectServerFacade;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lio/realm/exceptions/RealmException;

    const-string/jumbo v2, "Failed to init SyncObjectServerFacade"

    invoke-direct {v1, v2, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lio/realm/exceptions/RealmException;

    const-string/jumbo v2, "Failed to init SyncObjectServerFacade"

    invoke-direct {v1, v2, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFacade(Z)Lio/realm/internal/ObjectServerFacade;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lio/realm/internal/ObjectServerFacade;->syncFacade:Lio/realm/internal/ObjectServerFacade;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lio/realm/internal/ObjectServerFacade;->nonSyncFacade:Lio/realm/internal/ObjectServerFacade;

    goto :goto_0
.end method

.method public static getSyncFacadeIfPossible()Lio/realm/internal/ObjectServerFacade;
    .locals 1

    sget-object v0, Lio/realm/internal/ObjectServerFacade;->syncFacade:Lio/realm/internal/ObjectServerFacade;

    if-eqz v0, :cond_0

    sget-object v0, Lio/realm/internal/ObjectServerFacade;->syncFacade:Lio/realm/internal/ObjectServerFacade;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lio/realm/internal/ObjectServerFacade;->nonSyncFacade:Lio/realm/internal/ObjectServerFacade;

    goto :goto_0
.end method


# virtual methods
.method public getUserAndServerUrl(Lio/realm/RealmConfiguration;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public notifyCommit(Lio/realm/RealmConfiguration;J)V
    .locals 0

    return-void
.end method

.method public realmClosed(Lio/realm/RealmConfiguration;)V
    .locals 0

    return-void
.end method

.method public realmOpened(Lio/realm/RealmConfiguration;)V
    .locals 0

    return-void
.end method
