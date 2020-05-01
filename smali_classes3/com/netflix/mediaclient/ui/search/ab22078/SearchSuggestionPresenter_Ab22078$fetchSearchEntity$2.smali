.class public final Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZJ;->c(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/lang/Throwable;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/ZJ;


# direct methods
.method public constructor <init>(Lo/ZJ;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$2;->d:Lo/ZJ;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$2;->d:Lo/ZJ;

    invoke-static {p1}, Lo/ZJ;->a(Lo/ZJ;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->u()V

    .line 101
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$2;->d:Lo/ZJ;

    invoke-static {p1}, Lo/ZJ;->a(Lo/ZJ;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->b()V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$2;->c(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
