.class public final Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionResultsUIView$updateQueryCompletionResultsList$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aaE;->d(Lo/Bs;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lo/Bs;",
        "Ljava/lang/String;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/aaE;


# direct methods
.method public constructor <init>(Lo/aaE;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionResultsUIView$updateQueryCompletionResultsList$1;->c:Lo/aaE;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/Bs;Ljava/lang/String;)V
    .locals 4

    const-string v0, "searchResults"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionResultsUIView$updateQueryCompletionResultsList$1;->c:Lo/aaE;

    invoke-static {v0}, Lo/aaE;->b(Lo/aaE;)Lo/aau;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    sget-object v2, Lcom/netflix/cl/model/AppView;->searchAutofillSuggestionResults:Lcom/netflix/cl/model/AppView;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;-><init>(Lcom/netflix/cl/model/AppView;)V

    .line 69
    invoke-interface {p1}, Lo/Bs;->getQueryCompletionsListTrackable()Lo/Bz;

    move-result-object v2

    const-string v3, "searchResults.queryCompletionsListTrackable"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d(Lo/Bz;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p2

    .line 70
    invoke-interface {p1}, Lo/Bs;->getQueryCompletionsListTrackable()Lo/Bz;

    move-result-object p1

    invoke-static {p1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/Bz;->getReferenceId()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {v0, p2, p1}, Lo/aau;->b(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lo/Bs;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionResultsUIView$updateQueryCompletionResultsList$1;->b(Lo/Bs;Ljava/lang/String;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
