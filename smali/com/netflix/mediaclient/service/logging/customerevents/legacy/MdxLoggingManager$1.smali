.class Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager$1;
.super Ljava/lang/Object;
.source "MdxLoggingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;

.field final synthetic val$cevent:Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCustomerEvent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCustomerEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager$1;->this$0:Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager$1;->val$cevent:Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCustomerEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxLoggingManager$1;->val$cevent:Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCustomerEvent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/MdxCustomerEvent;->execute()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_mdxMdxLoggingManager"

    const-string/jumbo v2, "sendEvent fails"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
