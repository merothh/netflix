.class final Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$1;
.super Ljava/lang/Object;
.source "RealmUtils.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 0

    invoke-virtual {p1}, Lio/realm/Realm;->deleteAll()V

    return-void
.end method
