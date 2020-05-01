.class Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$GenresVideoFetchCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "GalleryGenresLoMoFrag.java"


# instance fields
.field private final numItems:I

.field private final start:I

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;Ljava/lang/String;II)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$GenresVideoFetchCallback;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    sub-int v0, p4, p3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$GenresVideoFetchCallback;->numItems:I

    iput p3, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$GenresVideoFetchCallback;->start:I

    return-void
.end method


# virtual methods
.method protected handlePrefetchDPData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$GenresVideoFetchCallback;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchDPForSimilars(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;)V

    return-void
.end method

.method public onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$GenresVideoFetchCallback;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->access$102(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;Z)Z

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "GalleryGenresLoMoFrag"

    const-string/jumbo v1, "Invalid status code"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$GenresVideoFetchCallback;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->showErrorView()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "GalleryGenresLoMoFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " items, expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$GenresVideoFetchCallback;->numItems:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$GenresVideoFetchCallback;->numItems:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$GenresVideoFetchCallback;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->access$102(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;Z)Z

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$GenresVideoFetchCallback;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->access$200(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;)Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$GenresVideoFetchCallback;->start:I

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->updateItems(Ljava/util/Collection;I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$GenresVideoFetchCallback;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$GenresVideoFetchCallback;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->access$300(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;)I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->access$302(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;I)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$GenresVideoFetchCallback;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->hideLoadingAndErrorViews()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$GenresVideoFetchCallback;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->access$300(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$GenresVideoFetchCallback;->handlePrefetchDPData(Ljava/util/List;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$GenresVideoFetchCallback;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->access$102(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$GenresVideoFetchCallback;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const v1, 0x7f0801a9

    invoke-virtual {v0, v1, v3, v4}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showErrorView(IZZ)V

    goto/16 :goto_0
.end method
