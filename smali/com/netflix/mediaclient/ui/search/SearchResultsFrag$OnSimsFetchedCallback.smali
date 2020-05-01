.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$OnSimsFetchedCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "SearchResultsFrag.java"


# instance fields
.field searchCategory:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;JLjava/lang/String;Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$OnSimsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    const-string/jumbo v0, "SearchResultsFrag"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$OnSimsFetchedCallback;->searchCategory:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    return-void
.end method


# virtual methods
.method public onSimilarVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideoListProvider;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onSimilarVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideoListProvider;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SearchResultsFrag"

    const-string/jumbo v1, "Invalid status code"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$OnSimsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->showError()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideoListProvider;->getVideosList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    :cond_1
    const-string/jumbo v0, "SearchResultsFrag"

    const-string/jumbo v1, "No details in response"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$OnSimsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->showError()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$OnSimsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$600(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$OnSimsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$OnSimsFetchedCallback;->searchCategory:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$702(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;)Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$OnSimsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideoListProvider;->getVideosListTrackable()Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$802(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;)Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$OnSimsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$600(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$OnSimsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$800(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->setData(Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V

    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$OnSimsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$500(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$OnSimsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$500(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$OnSimsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->fireImpressionEvents()V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$OnSimsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->handlePrefetchDPData(Ljava/util/List;)V

    goto :goto_0
.end method
