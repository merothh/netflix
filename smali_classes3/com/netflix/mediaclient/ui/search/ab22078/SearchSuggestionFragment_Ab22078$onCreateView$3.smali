.class public final Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionFragment_Ab22078$onCreateView$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZI;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/ZI;


# direct methods
.method public constructor <init>(Lo/ZI;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionFragment_Ab22078$onCreateView$3;->b:Lo/ZI;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(ILjava/lang/String;)V
    .locals 9

    const-string v0, "entityType"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionFragment_Ab22078$onCreateView$3;->b:Lo/ZI;

    new-instance v8, Lo/ZJ;

    .line 120
    invoke-static {v0}, Lo/ZI;->b(Lo/ZI;)Lo/UpdateEngine;

    move-result-object v1

    const-class v2, Lo/ZR;

    invoke-virtual {v1, v2}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v2

    .line 121
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionFragment_Ab22078$onCreateView$3;->b:Lo/ZI;

    invoke-static {v1}, Lo/ZI;->d(Lo/ZI;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;

    move-result-object v3

    .line 122
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionFragment_Ab22078$onCreateView$3;->b:Lo/ZI;

    invoke-static {v1}, Lo/ZI;->a(Lo/ZI;)Lo/ZS;

    move-result-object v4

    .line 123
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionFragment_Ab22078$onCreateView$3;->b:Lo/ZI;

    invoke-static {v1}, Lo/ZI;->b(Lo/ZI;)Lo/UpdateEngine;

    move-result-object v1

    invoke-virtual {v1}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v5

    move-object v1, v8

    move v6, p1

    move-object v7, p2

    .line 119
    invoke-direct/range {v1 .. v7}, Lo/ZJ;-><init>(Lio/reactivex/Observable;Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;Lo/ZS;Lio/reactivex/Observable;ILjava/lang/String;)V

    invoke-static {v0, v8}, Lo/ZI;->c(Lo/ZI;Lo/ZJ;)V

    .line 127
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionFragment_Ab22078$onCreateView$3;->b:Lo/ZI;

    invoke-static {p1}, Lo/ZI;->d(Lo/ZI;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->n()V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionFragment_Ab22078$onCreateView$3;->d(ILjava/lang/String;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
