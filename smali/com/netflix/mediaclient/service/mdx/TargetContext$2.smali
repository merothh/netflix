.class Lcom/netflix/mediaclient/service/mdx/TargetContext$2;
.super Ljava/lang/Object;
.source "TargetContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

.field final synthetic val$messageName:Ljava/lang/String;

.field final synthetic val$msgObj:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/TargetContext;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$2;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$2;->val$messageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$2;->val$msgObj:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$2;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$700(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->getSession()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/SessionController;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$2;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$1100(Lcom/netflix/mediaclient/service/mdx/TargetContext;)I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$2;->val$messageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$2;->val$msgObj:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/SessionController;->sendMessage(ILjava/lang/String;Lorg/json/JSONObject;)J

    return-void
.end method
