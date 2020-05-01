.class Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$ProgressiveAdapter;
.super Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;
.source "GalleryGenresLoMoFrag.java"


# instance fields
.field private final BATCH:I

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;ZILcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V
    .locals 1

    .prologue
    .line 218
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$ProgressiveAdapter;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    .line 219
    invoke-direct {p0, p2, p3, p4}, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;-><init>(ZILcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    .line 216
    const/16 v0, 0x28

    iput v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$ProgressiveAdapter;->BATCH:I

    .line 220
    return-void
.end method


# virtual methods
.method public fetchData()V
    .locals 9

    .prologue
    .line 234
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$ProgressiveAdapter;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_1

    .line 236
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$ProgressiveAdapter;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->access$300(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;)I

    move-result v1

    add-int/lit8 v3, v1, 0x27

    .line 237
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const-string/jumbo v1, "GalleryGenresLoMoFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fetching genre videos: start: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$ProgressiveAdapter;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    invoke-static {v4}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->access$300(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", end: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$FlatGenre;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$ProgressiveAdapter;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$FlatGenre;-><init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$1;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$ProgressiveAdapter;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->access$300(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;)I

    move-result v2

    const/4 v4, 0x0

    new-instance v5, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$GenresVideoFetchCallback;

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$ProgressiveAdapter;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    const-string/jumbo v7, "GalleryGenresLoMoFrag"

    iget-object v8, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$ProgressiveAdapter;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    invoke-static {v8}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->access$300(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;)I

    move-result v8

    invoke-direct {v5, v6, v7, v8, v3}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$GenresVideoFetchCallback;-><init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;Ljava/lang/String;II)V

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchGenreVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 242
    :cond_1
    return-void
.end method

.method protected onPostItemViewBind(I)V
    .locals 3

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;->onPostItemViewBind(I)V

    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$ProgressiveAdapter;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->access$100(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$ProgressiveAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    if-ne p1, v0, :cond_1

    .line 226
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const-string/jumbo v0, "GalleryGenresLoMoFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fetching more genres videos, at position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$ProgressiveAdapter;->fetchData()V

    .line 231
    :cond_1
    return-void
.end method
