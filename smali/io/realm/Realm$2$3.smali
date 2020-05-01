.class Lio/realm/Realm$2$3;
.super Ljava/lang/Object;
.source "Realm.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lio/realm/Realm$2;

.field final synthetic val$backgroundException:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/realm/Realm$2;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lio/realm/Realm$2$3;->this$1:Lio/realm/Realm$2;

    iput-object p2, p0, Lio/realm/Realm$2$3;->val$backgroundException:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/realm/Realm$2$3;->val$backgroundException:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/Realm$2$3;->val$backgroundException:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_0
    iget-object v0, p0, Lio/realm/Realm$2$3;->val$backgroundException:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/Exception;

    if-eqz v0, :cond_1

    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string/jumbo v1, "Async transaction failed"

    iget-object v2, p0, Lio/realm/Realm$2$3;->val$backgroundException:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lio/realm/Realm$2$3;->val$backgroundException:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/Error;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/Realm$2$3;->val$backgroundException:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_2
    return-void
.end method
