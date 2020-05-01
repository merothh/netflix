.class public final Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aat$Application;->run(Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/aaF$TaskDescription;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic e:Lo/aat$Application;


# direct methods
.method public constructor <init>(Lo/aat$Application;J)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;->e:Lo/aat$Application;

    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;->d:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/aaF$TaskDescription;)V
    .locals 5

    const-string v0, "queryCompletionResult"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lo/aat;->k:Lo/aat$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;->e:Lo/aat$Application;

    iget-object v0, v0, Lo/aat$Application;->d:Lo/aat;

    invoke-static {v0}, Lo/aat;->d(Lo/aat;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 81
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;->e:Lo/aat$Application;

    iget-object p1, p1, Lo/aat$Application;->d:Lo/aat;

    invoke-static {p1, v1}, Lo/aat;->e(Lo/aat;Z)V

    goto/16 :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;->e:Lo/aat$Application;

    iget-object v0, v0, Lo/aat$Application;->d:Lo/aat;

    invoke-virtual {v0}, Lo/aat;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;->e:Lo/aat$Application;

    iget-object v2, v2, Lo/aat$Application;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;->e:Lo/aat$Application;

    iget-object v0, v0, Lo/aat$Application;->d:Lo/aat;

    invoke-static {v0, v1}, Lo/aat;->c(Lo/aat;Z)V

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;->e:Lo/aat$Application;

    iget-object v0, v0, Lo/aat$Application;->d:Lo/aat;

    invoke-static {v0, v1}, Lo/aat;->d(Lo/aat;Z)V

    .line 85
    sget-object v0, Lo/aat;->k:Lo/aat$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;->e:Lo/aat$Application;

    iget-object v0, v0, Lo/aat$Application;->d:Lo/aat;

    invoke-static {v0}, Lo/aat;->e(Lo/aat;)Lo/OnDateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/OnDateChangedListener;->m()Landroid/widget/SearchView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;->e:Lo/aat$Application;

    iget-object v0, v0, Lo/aat$Application;->d:Lo/aat;

    invoke-static {v0}, Lo/aat;->a(Lo/aat;)Lo/aaE;

    move-result-object v0

    invoke-virtual {v0}, Lo/aaE;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;->e:Lo/aat$Application;

    iget-object v0, v0, Lo/aat$Application;->d:Lo/aat;

    invoke-virtual {p1}, Lo/aaF$TaskDescription;->b()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v2

    invoke-static {v0, v2}, Lo/aat;->a(Lo/aat;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 95
    invoke-virtual {p1}, Lo/aaF$TaskDescription;->b()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    sget-object v2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {v0, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;->e:Lo/aat$Application;

    iget-object v0, v0, Lo/aat$Application;->d:Lo/aat;

    invoke-static {v0}, Lo/aat;->i(Lo/aat;)Lo/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/EditText;->a(Z)V

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;->e:Lo/aat$Application;

    iget-object v0, v0, Lo/aat$Application;->d:Lo/aat;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lo/aat;->c(Lo/aat;I)V

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;->e:Lo/aat$Application;

    iget-object v0, v0, Lo/aat$Application;->d:Lo/aat;

    invoke-virtual {v0}, Lo/aat;->T()Lo/aaA;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lo/aaA;->e(Lo/Bs;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;->e:Lo/aat$Application;

    iget-object v0, v0, Lo/aat$Application;->d:Lo/aat;

    invoke-virtual {v0}, Lo/aat;->T()Lo/aaA;

    move-result-object v0

    invoke-virtual {v0}, Lo/aaA;->b()V

    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;->e:Lo/aat$Application;

    iget-object v0, v0, Lo/aat$Application;->d:Lo/aat;

    invoke-static {v0}, Lo/aat;->a(Lo/aat;)Lo/aaE;

    move-result-object v0

    invoke-virtual {v0}, Lo/aaE;->e()V

    .line 106
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;->d:J

    invoke-virtual {p1}, Lo/aaF$TaskDescription;->a()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;->e:Lo/aat$Application;

    iget-object v0, v0, Lo/aat$Application;->d:Lo/aat;

    invoke-virtual {p1}, Lo/aaF$TaskDescription;->c()Z

    move-result v1

    invoke-static {v0, v1}, Lo/aat;->b(Lo/aat;Z)V

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;->e:Lo/aat$Application;

    iget-object v0, v0, Lo/aat$Application;->d:Lo/aat;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v0, v1}, Lo/aat;->b(Lo/aat;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;->e:Lo/aat$Application;

    iget-object v0, v0, Lo/aat$Application;->d:Lo/aat;

    invoke-static {v0}, Lo/aat;->a(Lo/aat;)Lo/aaE;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Lo/aaF$TaskDescription;->e()Lo/Bs;

    move-result-object p1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;->e:Lo/aat$Application;

    iget-object v1, v1, Lo/aat$Application;->c:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, p1, v1}, Lo/aaE;->d(Lo/Bs;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;->e:Lo/aat$Application;

    iget-object v0, v0, Lo/aat$Application;->d:Lo/aat;

    invoke-virtual {p1}, Lo/aaF$TaskDescription;->c()Z

    move-result v1

    invoke-static {v0, v1}, Lo/aat;->b(Lo/aat;Z)V

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;->e:Lo/aat$Application;

    iget-object v0, v0, Lo/aat$Application;->d:Lo/aat;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v0, v1}, Lo/aat;->b(Lo/aat;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 119
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query complete response errored out - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/aaF$TaskDescription;->b()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lo/aaF$TaskDescription;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$updateSearchQueryInSearchView$1$1;->e(Lo/aaF$TaskDescription;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
