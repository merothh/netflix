.class public final Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZK;->a(Ljava/lang/String;JIIILo/ZU;Ljava/lang/String;)V
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
.field final synthetic a:Lo/ZK;


# direct methods
.method public constructor <init>(Lo/ZK;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$2;->a:Lo/ZK;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$2;->a:Lo/ZK;

    invoke-static {p1}, Lo/ZK;->c(Lo/ZK;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->o()V

    .line 159
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$2;->a:Lo/ZK;

    invoke-static {p1}, Lo/ZK;->c(Lo/ZK;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    move-result-object p1

    sget-object v0, Lo/ZR$PictureInPictureParams;->e:Lo/ZR$PictureInPictureParams;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$2;->b(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
