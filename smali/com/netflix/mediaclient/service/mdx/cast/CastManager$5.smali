.class Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;
.super Ljava/lang/Object;
.source "CastManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "about to launchNetflix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$402(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Landroid/support/v7/media/MediaRouter$RouteInfo;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$500(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->val$id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$402(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Landroid/support/v7/media/MediaRouter$RouteInfo;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->val$id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$602(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$400(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "launchNetflix failed, there is no route for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$702(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$800(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$400(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "about to select the route before launch"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$800(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$400(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$400(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$900(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0
.end method
