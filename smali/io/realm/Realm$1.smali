.class final Lio/realm/Realm$1;
.super Ljava/lang/Object;
.source "Realm.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p1, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaVersion()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lio/realm/Realm;->setVersion(J)V

    .line 367
    return-void
.end method
