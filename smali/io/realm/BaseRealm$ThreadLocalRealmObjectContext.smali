.class final Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;
.super Ljava/lang/ThreadLocal;
.source "BaseRealm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lio/realm/BaseRealm$RealmObjectContext;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 725
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lio/realm/BaseRealm$RealmObjectContext;
    .locals 1

    .prologue
    .line 728
    new-instance v0, Lio/realm/BaseRealm$RealmObjectContext;

    invoke-direct {v0}, Lio/realm/BaseRealm$RealmObjectContext;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 725
    invoke-virtual {p0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->initialValue()Lio/realm/BaseRealm$RealmObjectContext;

    move-result-object v0

    return-object v0
.end method
