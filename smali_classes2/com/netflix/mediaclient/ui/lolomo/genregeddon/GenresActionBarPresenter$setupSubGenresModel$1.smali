.class public final Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$setupSubGenresModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/KU;->c(Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/KU;


# direct methods
.method public constructor <init>(Lo/KU;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$setupSubGenresModel$1;->b:Lo/KU;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)V
    .locals 4

    const-string v0, "genreList"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 242
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$setupSubGenresModel$1;->b:Lo/KU;

    invoke-static {v1}, Lo/KU;->b(Lo/KU;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "GenresActionBarPresenter"

    const-string v3, "setSelectedSubGenre subgenre id: old=%s, new=%s"

    invoke-static {v1, v3, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 243
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$setupSubGenresModel$1;->b:Lo/KU;

    invoke-static {v0}, Lo/KU;->b(Lo/KU;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 253
    sget-object v0, Lo/KV;->c:Lo/KV;

    invoke-virtual {v0}, Lo/KV;->c()Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    move-result-object v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lo/KV;->c:Lo/KV;

    invoke-virtual {v0}, Lo/KV;->b()Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$setupSubGenresModel$1;->b:Lo/KU;

    invoke-static {v0}, Lo/KU;->e(Lo/KU;)Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$setupSubGenresModel$1;->b:Lo/KU;

    invoke-static {v1}, Lo/KU;->i(Lo/KU;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->c(Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;Ljava/lang/String;)V

    goto :goto_1

    .line 254
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$setupSubGenresModel$1;->b:Lo/KU;

    invoke-static {p1}, Lo/KU;->a(Lo/KU;)Lo/KS;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$setupSubGenresModel$1;->b:Lo/KU;

    invoke-static {v0}, Lo/KU;->i(Lo/KU;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/KS;->a(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 255
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$setupSubGenresModel$1;->b:Lo/KU;

    invoke-static {v0}, Lo/KU;->e(Lo/KU;)Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$setupSubGenresModel$1;->b:Lo/KU;

    invoke-static {v1}, Lo/KU;->i(Lo/KU;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->c(Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$setupSubGenresModel$1;->b(Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
