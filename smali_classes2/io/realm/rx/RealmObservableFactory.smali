.class public Lio/realm/rx/RealmObservableFactory;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/realm/rx/RxObservableFactory;


# instance fields
.field objectRefs:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter",
            "<",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation
.end field

.field resultsRefs:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter",
            "<",
            "Lio/realm/RealmResults;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lio/realm/rx/RealmObservableFactory$1;

    invoke-direct {v0, p0}, Lio/realm/rx/RealmObservableFactory$1;-><init>(Lio/realm/rx/RealmObservableFactory;)V

    iput-object v0, p0, Lio/realm/rx/RealmObservableFactory;->resultsRefs:Ljava/lang/ThreadLocal;

    .line 57
    new-instance v0, Lio/realm/rx/RealmObservableFactory$2;

    invoke-direct {v0, p0}, Lio/realm/rx/RealmObservableFactory$2;-><init>(Lio/realm/rx/RealmObservableFactory;)V

    iput-object v0, p0, Lio/realm/rx/RealmObservableFactory;->objectRefs:Ljava/lang/ThreadLocal;

    .line 308
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 298
    instance-of v0, p1, Lio/realm/rx/RealmObservableFactory;

    return v0
.end method

.method public from(Lio/realm/DynamicRealm;Lio/realm/DynamicRealmObject;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/DynamicRealm;",
            "Lio/realm/DynamicRealmObject;",
            ")",
            "Lrx/Observable",
            "<",
            "Lio/realm/DynamicRealmObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 253
    new-instance v1, Lio/realm/rx/RealmObservableFactory$8;

    invoke-direct {v1, p0, v0, p2}, Lio/realm/rx/RealmObservableFactory$8;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/DynamicRealmObject;)V

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public from(Lio/realm/Realm;Lio/realm/RealmModel;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            "TE;)",
            "Lrx/Observable",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p1}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 217
    new-instance v1, Lio/realm/rx/RealmObservableFactory$7;

    invoke-direct {v1, p0, v0, p2}, Lio/realm/rx/RealmObservableFactory$7;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/RealmModel;)V

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 303
    const/16 v0, 0x25

    return v0
.end method
