.class Lcom/netflix/mediaclient/service/mdx/TargetContext$DoRegPair;
.super Ljava/lang/Object;
.source "TargetContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/TargetContext;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$DoRegPair;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$DoRegPair;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$200(Lcom/netflix/mediaclient/service/mdx/TargetContext;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$DoRegPair;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$700(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->getPairing()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/PairingController;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$DoRegPair;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$900(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/PairingController;->registrationPairingRequest(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$DoRegPair;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$200(Lcom/netflix/mediaclient/service/mdx/TargetContext;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$DoRegPair;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$700(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->getPairing()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/PairingController;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$DoRegPair;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$900(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "00000"

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/PairingController;->registrationPairingRequest(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
