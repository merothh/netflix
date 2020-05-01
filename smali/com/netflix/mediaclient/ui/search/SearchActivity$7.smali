.class Lcom/netflix/mediaclient/ui/search/SearchActivity$7;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$7;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 528
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    const-string/jumbo v0, "SearchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onQueryTextChange triggers query update, query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", voice search "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$7;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$1300(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$7;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$1300(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$7;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$500(Lcom/netflix/mediaclient/ui/search/SearchActivity;Ljava/lang/String;)V

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$7;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$1300(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;->speech:Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

    .line 538
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$7;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$300(Lcom/netflix/mediaclient/ui/search/SearchActivity;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$7;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$7;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v3

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/search/utils/SearchLogUtils;->reportSearchEditChange(JLandroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;)V

    .line 539
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$7;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$1400(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 540
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$7;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$1400(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->clearSelectedStack()V

    .line 541
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$7;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$1400(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->clearGridSelected()V

    .line 544
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 537
    :cond_3
    sget-object v5, Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;->keyboard:Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 518
    const-string/jumbo v0, "SearchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onQueryTextSubmit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$7;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$1100(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$7;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$1100(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->clearFocus()V

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$7;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$1200(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V

    .line 523
    const/4 v0, 0x1

    return v0
.end method
