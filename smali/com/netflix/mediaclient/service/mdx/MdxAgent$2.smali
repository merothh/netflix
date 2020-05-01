.class Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;
.super Ljava/lang/Object;
.source "MdxAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "notifyIsUserLogin: login, init native"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/TargetManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/TargetManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$900(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Z

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/NetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->getMdxBlackListTargets()Lorg/json/JSONArray;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;->init(Ljava/util/Map;ZLorg/json/JSONArray;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "notifyIsUserLogin: login, already exited check back in 1 sec "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
