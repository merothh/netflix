.class Lcom/netflix/mediaclient/service/mdx/TargetContext$DoHandShake;
.super Ljava/lang/Object;
.source "TargetContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/TargetContext;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$DoHandShake;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 338
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/controller/Handshake;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/Handshake;-><init>()V

    .line 339
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$DoHandShake;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$700(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->getSession()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/SessionController;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$DoHandShake;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1100(Lcom/netflix/mediaclient/service/mdx/TargetContext;)I

    move-result v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/Handshake;->messageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/Handshake;->messageObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/SessionController;->sendMessage(ILjava/lang/String;Lorg/json/JSONObject;)J

    .line 340
    return-void
.end method
