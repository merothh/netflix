.class Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$1;
.super Ljava/lang/Object;
.source "CoppolaDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getMdxMiniPlayerFrag()Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->initMdxComponents()V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->access$000(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->access$100(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;)V

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->getPlayer()Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->getPlayer()Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->sync()V

    :cond_0
    return-void
.end method
