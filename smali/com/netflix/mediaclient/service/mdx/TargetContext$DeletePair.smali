.class Lcom/netflix/mediaclient/service/mdx/TargetContext$DeletePair;
.super Ljava/lang/Object;
.source "TargetContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/TargetContext;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$DeletePair;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$DeletePair;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$700(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->getPairing()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/PairingController;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$DeletePair;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$100(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/PairingController;->deletePairing(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->DeletePairSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$DeletePair;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1000(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
