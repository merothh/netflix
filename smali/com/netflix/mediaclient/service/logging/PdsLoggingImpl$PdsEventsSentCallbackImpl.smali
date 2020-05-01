.class Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallbackImpl;
.super Ljava/lang/Object;
.source "PdsLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallback;


# instance fields
.field private deliveryId:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallbackImpl;->deliveryId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onPdsEventsSent(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_pds_logs"

    const-string/jumbo v1, "Pds events are succcesfully sent to backend"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallbackImpl;->deliveryId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->access$300(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_pds_logs"

    const-string/jumbo v1, "pds events are NOT succcesfully sent to backend, do NOT remove them"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallbackImpl;->this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->access$500(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$PdsEventsSentCallbackImpl;->deliveryId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
