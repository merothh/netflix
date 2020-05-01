.class Lio/realm/Realm$2$2;
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

    .prologue
    .line 1396
    iput-object p1, p0, Lio/realm/Realm$2$2;->this$1:Lio/realm/Realm$2;

    iput-object p2, p0, Lio/realm/Realm$2$2;->val$backgroundException:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1399
    iget-object v0, p0, Lio/realm/Realm$2$2;->this$1:Lio/realm/Realm$2;

    iget-object v0, v0, Lio/realm/Realm$2;->val$onError:Lio/realm/Realm$Transaction$OnError;

    iget-object v1, p0, Lio/realm/Realm$2$2;->val$backgroundException:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lio/realm/Realm$Transaction$OnError;->onError(Ljava/lang/Throwable;)V

    .line 1400
    return-void
.end method
