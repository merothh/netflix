.class public final Lio/realm/DynamicRealm;
.super Lio/realm/BaseRealm;
.source "DynamicRealm.java"


# direct methods
.method private constructor <init>(Lio/realm/RealmConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/realm/BaseRealm;-><init>(Lio/realm/RealmConfiguration;)V

    return-void
.end method

.method static createInstance(Lio/realm/RealmConfiguration;)Lio/realm/DynamicRealm;
    .locals 1

    new-instance v0, Lio/realm/DynamicRealm;

    invoke-direct {v0, p0}, Lio/realm/DynamicRealm;-><init>(Lio/realm/RealmConfiguration;)V

    return-object v0
.end method

.method public static getInstance(Lio/realm/RealmConfiguration;)Lio/realm/DynamicRealm;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A non-null RealmConfiguration must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-class v0, Lio/realm/DynamicRealm;

    invoke-static {p0, v0}, Lio/realm/RealmCache;->createRealmOrGetFromCache(Lio/realm/RealmConfiguration;Ljava/lang/Class;)Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/DynamicRealm;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic beginTransaction()V
    .locals 0

    invoke-super {p0}, Lio/realm/BaseRealm;->beginTransaction()V

    return-void
.end method

.method public bridge synthetic cancelTransaction()V
    .locals 0

    invoke-super {p0}, Lio/realm/BaseRealm;->cancelTransaction()V

    return-void
.end method

.method public bridge synthetic close()V
    .locals 0

    invoke-super {p0}, Lio/realm/BaseRealm;->close()V

    return-void
.end method

.method public bridge synthetic commitTransaction()V
    .locals 0

    invoke-super {p0}, Lio/realm/BaseRealm;->commitTransaction()V

    return-void
.end method

.method public bridge synthetic deleteAll()V
    .locals 0

    invoke-super {p0}, Lio/realm/BaseRealm;->deleteAll()V

    return-void
.end method

.method public bridge synthetic getConfiguration()Lio/realm/RealmConfiguration;
    .locals 1

    invoke-super {p0}, Lio/realm/BaseRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPath()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVersion()J
    .locals 2

    invoke-super {p0}, Lio/realm/BaseRealm;->getVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic isClosed()Z
    .locals 1

    invoke-super {p0}, Lio/realm/BaseRealm;->isClosed()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInTransaction()Z
    .locals 1

    invoke-super {p0}, Lio/realm/BaseRealm;->isInTransaction()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setAutoRefresh(Z)V
    .locals 0

    invoke-super {p0, p1}, Lio/realm/BaseRealm;->setAutoRefresh(Z)V

    return-void
.end method
