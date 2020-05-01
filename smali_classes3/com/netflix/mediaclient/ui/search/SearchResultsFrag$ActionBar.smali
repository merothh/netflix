.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ActionBar;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

.field private final b:J


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;J)V
    .locals 0

    .line 1842
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ActionBar;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    const-string p1, "SearchResultsFrag"

    .line 1843
    invoke-direct {p0, p1}, Lo/zP;-><init>(Ljava/lang/String;)V

    .line 1844
    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ActionBar;->b:J

    return-void
.end method


# virtual methods
.method public c(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 6

    .line 1849
    invoke-super {p0, p1, p2, p3}, Lo/zP;->c(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V

    .line 1851
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ActionBar;->b:J

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ActionBar;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->n(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)J

    move-result-wide v2

    const-string v4, "SearchResultsFrag"

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    const-string p1, "Ignoring stale onSearchResultsFetched callback"

    .line 1852
    invoke-static {v4, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1856
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ActionBar;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->i:Z

    .line 1858
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Z)V

    .line 1861
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ActionBar;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->a(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lo/Bs;)V

    .line 1863
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ActionBar;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1865
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string p1, "Invalid status code"

    .line 1866
    invoke-static {v4, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ActionBar;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->K()V

    .line 1868
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    iget-object p3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ActionBar;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    iget-object p3, p3, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->j:Ljava/lang/Long;

    invoke-static {p2}, Lo/aeu;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/cl/model/Error;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/netflix/cl/ExtLogger;->failedAction(Ljava/lang/Long;Lcom/netflix/cl/model/Error;)Z

    .line 1869
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ActionBar;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    sget-object p2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 1870
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ActionBar;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    iput-object v2, p1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->j:Ljava/lang/Long;

    return-void

    .line 1874
    :cond_1
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ActionBar;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {p2, p3}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->d(Z)V

    if-eqz p1, :cond_3

    .line 1876
    invoke-interface {p1}, Lo/Bs;->hasResults()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 1885
    invoke-interface {p1}, Lo/Bs;->getNumResults()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    const-string p3, "searchResults size %d "

    invoke-static {v4, p3, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1887
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ActionBar;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->a(Lo/Bs;)V

    .line 1889
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ActionBar;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->j:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 1890
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ActionBar;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    iput-object v2, p1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->j:Ljava/lang/Long;

    return-void

    :cond_3
    :goto_0
    const-string p1, "No results from server"

    .line 1877
    invoke-static {v4, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ActionBar;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->J()V

    .line 1879
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ActionBar;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->j:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 1880
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ActionBar;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    iput-object v2, p1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->j:Ljava/lang/Long;

    .line 1881
    sget-object p2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method
