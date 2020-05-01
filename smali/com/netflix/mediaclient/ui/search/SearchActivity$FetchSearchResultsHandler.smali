.class Lcom/netflix/mediaclient/ui/search/SearchActivity$FetchSearchResultsHandler;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "SearchActivity.java"


# instance fields
.field private final requestId:J

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;J)V
    .locals 2

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$FetchSearchResultsHandler;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    const-string/jumbo v0, "SearchActivity"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$FetchSearchResultsHandler;->requestId:J

    return-void
.end method


# virtual methods
.method public onSearchResultsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onSearchResultsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;Lcom/netflix/mediaclient/android/app/Status;)V

    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$FetchSearchResultsHandler;->requestId:J

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$FetchSearchResultsHandler;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$300(Lcom/netflix/mediaclient/ui/search/SearchActivity;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SearchActivity"

    const-string/jumbo v1, "Ignoring stale onSearchResultsFetched callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$FetchSearchResultsHandler;->requestId:J

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$FetchSearchResultsHandler;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v0, v1, v2, v3, v5}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSearchActionEnded(JLandroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$FetchSearchResultsHandler;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$902(Lcom/netflix/mediaclient/ui/search/SearchActivity;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$FetchSearchResultsHandler;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$1000(Lcom/netflix/mediaclient/ui/search/SearchActivity;Z)V

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SearchActivity"

    const-string/jumbo v1, "Invalid status code"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$FetchSearchResultsHandler;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->showError()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$FetchSearchResultsHandler;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    const v1, 0x7f08012e

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-static {p2, v0, v1}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$FetchSearchResultsHandler;->requestId:J

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$FetchSearchResultsHandler;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v2, v3, v1, v4, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSearchActionEnded(JLandroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;->hasResults()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string/jumbo v0, "SearchActivity"

    const-string/jumbo v1, "No results from server"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$FetchSearchResultsHandler;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$1500(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V

    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$FetchSearchResultsHandler;->requestId:J

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$FetchSearchResultsHandler;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v0, v1, v2, v3, v5}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSearchActionEnded(JLandroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "SearchActivity"

    const-string/jumbo v1, "searchResults size %d "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;->getNumResults()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$FetchSearchResultsHandler;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->searchResults:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$1600(Lcom/netflix/mediaclient/ui/search/SearchActivity;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$FetchSearchResultsHandler;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$1700(Lcom/netflix/mediaclient/ui/search/SearchActivity;Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;)V

    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$FetchSearchResultsHandler;->requestId:J

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$FetchSearchResultsHandler;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v0, v1, v2, v3, v5}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSearchActionEnded(JLandroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    goto/16 :goto_0
.end method
