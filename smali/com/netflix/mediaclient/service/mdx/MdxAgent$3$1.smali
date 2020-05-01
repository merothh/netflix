.class Lcom/netflix/mediaclient/service/mdx/MdxAgent$3$1;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "MdxAgent.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3$1;->this$1:Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostPlayVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPostPlayVideosFetched, res: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;->getPostPlayVideos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3$1;->this$1:Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/mdx/MdxAgent$3;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->updateMdxNotificationAndLockscreenWithNextSeries(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
