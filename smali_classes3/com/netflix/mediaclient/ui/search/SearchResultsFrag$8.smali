.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->L()Lio/reactivex/functions/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lo/ApfStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V
    .locals 0

    .line 1589
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$8;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1589
    check-cast p1, Lo/ApfStats;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$8;->e(Lo/ApfStats;)V

    return-void
.end method

.method public e(Lo/ApfStats;)V
    .locals 2

    .line 1592
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$8;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1595
    invoke-virtual {p1}, Lo/ApfStats;->b()Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1600
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$8;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->a(Ljava/lang/String;)V

    .line 1602
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$8;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->C()V

    .line 1604
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$8;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->E()V

    .line 1606
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$8;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->j:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 1607
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$8;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 1608
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$8;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->j:Ljava/lang/Long;

    .line 1611
    :cond_0
    invoke-virtual {p1}, Lo/ApfStats;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1612
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$8;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->f:Lo/OnDateChangedListener;

    invoke-virtual {p1}, Lo/OnDateChangedListener;->w()V

    .line 1613
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$8;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->O()V

    :cond_1
    return-void
.end method
