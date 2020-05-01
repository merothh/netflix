.class Lcom/netflix/mediaclient/service/mdx/TargetContext$LaunchNetflix;
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
    .line 288
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$LaunchNetflix;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$LaunchNetflix;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$700(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->getDiscovery()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/DiscoveryController;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$LaunchNetflix;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$600(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/DiscoveryController;->isRemoteDeviceReady(Ljava/lang/String;)V

    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 293
    const-string/jumbo v1, "intent"

    const-string/jumbo v2, "sync"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$LaunchNetflix;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$600(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$LaunchNetflix;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$700(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->getDiscovery()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/DiscoveryController;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$LaunchNetflix;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$600(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/DiscoveryController;->launchNetflix(Ljava/lang/String;Ljava/util/Map;)V

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$LaunchNetflix;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$700(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->getDiscovery()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/DiscoveryController;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetContext$LaunchNetflix;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->access$800(Lcom/netflix/mediaclient/service/mdx/TargetContext;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/DiscoveryController;->launchNetflix(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
