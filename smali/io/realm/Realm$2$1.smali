.class Lio/realm/Realm$2$1;
.super Ljava/lang/Object;
.source "Realm.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lio/realm/Realm$2;


# direct methods
.method constructor <init>(Lio/realm/Realm$2;)V
    .locals 0

    iput-object p1, p0, Lio/realm/Realm$2$1;->this$1:Lio/realm/Realm$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/realm/Realm$2$1;->this$1:Lio/realm/Realm$2;

    iget-object v0, v0, Lio/realm/Realm$2;->this$0:Lio/realm/Realm;

    iget-object v1, v0, Lio/realm/Realm;->handlerController:Lio/realm/HandlerController;

    iget-object v0, p0, Lio/realm/Realm$2$1;->this$1:Lio/realm/Realm$2;

    iget-object v0, v0, Lio/realm/Realm$2;->val$onSuccess:Lio/realm/Realm$Transaction$OnSuccess;

    if-eqz v0, :cond_0

    new-instance v0, Lio/realm/Realm$2$1$1;

    invoke-direct {v0, p0}, Lio/realm/Realm$2$1$1;-><init>(Lio/realm/Realm$2$1;)V

    :goto_0
    invoke-virtual {v1, v0}, Lio/realm/HandlerController;->handleAsyncTransactionCompleted(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
