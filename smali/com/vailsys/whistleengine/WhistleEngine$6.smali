.class Lcom/vailsys/whistleengine/WhistleEngine$6;
.super Ljava/lang/Object;
.source "WhistleEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/vailsys/whistleengine/WhistleEngine;

.field final synthetic val$line:I

.field final synthetic val$state:Lcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;


# direct methods
.method constructor <init>(Lcom/vailsys/whistleengine/WhistleEngine;ILcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;)V
    .locals 0

    iput-object p1, p0, Lcom/vailsys/whistleengine/WhistleEngine$6;->this$0:Lcom/vailsys/whistleengine/WhistleEngine;

    iput p2, p0, Lcom/vailsys/whistleengine/WhistleEngine$6;->val$line:I

    iput-object p3, p0, Lcom/vailsys/whistleengine/WhistleEngine$6;->val$state:Lcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine$6;->this$0:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-static {v0}, Lcom/vailsys/whistleengine/WhistleEngine;->access$000(Lcom/vailsys/whistleengine/WhistleEngine;)Lcom/vailsys/whistleengine/WhistleEngineDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngine$6;->this$0:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-static {v0}, Lcom/vailsys/whistleengine/WhistleEngine;->access$000(Lcom/vailsys/whistleengine/WhistleEngine;)Lcom/vailsys/whistleengine/WhistleEngineDelegate;

    move-result-object v0

    iget v1, p0, Lcom/vailsys/whistleengine/WhistleEngine$6;->val$line:I

    iget-object v2, p0, Lcom/vailsys/whistleengine/WhistleEngine$6;->val$state:Lcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;

    invoke-interface {v0, v1, v2}, Lcom/vailsys/whistleengine/WhistleEngineDelegate;->connectivityUpdate(ILcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;)V

    :cond_0
    return-void
.end method
