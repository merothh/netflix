.class public Lio/realm/internal/async/QueryUpdateTask$Result;
.super Ljava/lang/Object;
.source "QueryUpdateTask.java"


# instance fields
.field public updatedRow:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public updatedTableViews:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/realm/RealmResults",
            "<+",
            "Lio/realm/RealmModel;",
            ">;>;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public versionID:Lio/realm/internal/SharedRealm$VersionID;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newRealmObjectResponse()Lio/realm/internal/async/QueryUpdateTask$Result;
    .locals 3

    new-instance v0, Lio/realm/internal/async/QueryUpdateTask$Result;

    invoke-direct {v0}, Lio/realm/internal/async/QueryUpdateTask$Result;-><init>()V

    new-instance v1, Ljava/util/IdentityHashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v1, v0, Lio/realm/internal/async/QueryUpdateTask$Result;->updatedRow:Ljava/util/IdentityHashMap;

    return-object v0
.end method

.method public static newRealmResultsResponse()Lio/realm/internal/async/QueryUpdateTask$Result;
    .locals 3

    new-instance v0, Lio/realm/internal/async/QueryUpdateTask$Result;

    invoke-direct {v0}, Lio/realm/internal/async/QueryUpdateTask$Result;-><init>()V

    new-instance v1, Ljava/util/IdentityHashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v1, v0, Lio/realm/internal/async/QueryUpdateTask$Result;->updatedTableViews:Ljava/util/IdentityHashMap;

    return-object v0
.end method
