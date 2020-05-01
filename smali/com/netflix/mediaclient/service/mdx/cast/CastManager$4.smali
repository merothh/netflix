.class Lcom/netflix/mediaclient/service/mdx/cast/CastManager$4;
.super Ljava/lang/Object;
.source "CastManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$4;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "disconnect ApiClient"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$4;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$200(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$4;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$200(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->stop()V

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$4;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$202(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;)Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    .line 134
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ApiClient disconnected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method
