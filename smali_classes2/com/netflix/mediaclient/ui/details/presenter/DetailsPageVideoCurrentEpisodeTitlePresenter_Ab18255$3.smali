.class public final Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCurrentEpisodeTitlePresenter_Ab18255$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/EI;-><init>(Lo/Fl;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lkotlin/Pair<",
        "+",
        "Lo/DC;",
        "+",
        "Lo/DC;",
        ">;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/EI;


# direct methods
.method public constructor <init>(Lo/EI;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCurrentEpisodeTitlePresenter_Ab18255$3;->a:Lo/EI;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lkotlin/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Lo/DC;",
            "+",
            "Lo/DC;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lkotlin/Pair;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Lo/DC$DialogInterface;

    .line 33
    invoke-virtual {p1}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Lo/DC$ComponentCallbacks2;

    .line 35
    invoke-virtual {v0}, Lo/DC$DialogInterface;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lo/DC$ComponentCallbacks2;->d()F

    move-result p1

    const/4 v1, 0x0

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCurrentEpisodeTitlePresenter_Ab18255$3;->a:Lo/EI;

    invoke-static {p1}, Lo/EI;->e(Lo/EI;)Lo/Fl;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fl;->e()V

    .line 40
    invoke-virtual {v0}, Lo/DC$DialogInterface;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    const-string v2, "NEW"

    .line 41
    invoke-static {v2, p1, v1}, Lo/anv;->e(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 42
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCurrentEpisodeTitlePresenter_Ab18255$3;->a:Lo/EI;

    invoke-static {p1}, Lo/EI;->e(Lo/EI;)Lo/Fl;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fl;->f()V

    .line 43
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCurrentEpisodeTitlePresenter_Ab18255$3;->a:Lo/EI;

    invoke-static {p1}, Lo/EI;->e(Lo/EI;)Lo/Fl;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fl;->h()V

    goto :goto_0

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCurrentEpisodeTitlePresenter_Ab18255$3;->a:Lo/EI;

    invoke-static {p1}, Lo/EI;->e(Lo/EI;)Lo/Fl;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fl;->j()V

    .line 49
    :goto_0
    invoke-virtual {v0}, Lo/DC$DialogInterface;->e()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {v0}, Lo/DC$DialogInterface;->d()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCurrentEpisodeTitlePresenter_Ab18255$3;->a:Lo/EI;

    invoke-static {p1}, Lo/EI;->e(Lo/EI;)Lo/Fl;

    move-result-object p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/Fl;->c(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 53
    :cond_2
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCurrentEpisodeTitlePresenter_Ab18255$3;->a:Lo/EI;

    invoke-static {v0}, Lo/EI;->e(Lo/EI;)Lo/Fl;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/Fl;->c(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 57
    :cond_3
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCurrentEpisodeTitlePresenter_Ab18255$3;->a:Lo/EI;

    invoke-static {p1}, Lo/EI;->e(Lo/EI;)Lo/Fl;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fl;->b()V

    goto :goto_2

    .line 36
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCurrentEpisodeTitlePresenter_Ab18255$3;->a:Lo/EI;

    invoke-static {p1}, Lo/EI;->e(Lo/EI;)Lo/Fl;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fl;->b()V

    :goto_2
    return-void

    .line 33
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.ui.details.DetailsPageEvent.UpdateVideoBookmark_Ab18255"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.ui.details.DetailsPageEvent.UpdateVideoDescription"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCurrentEpisodeTitlePresenter_Ab18255$3;->b(Lkotlin/Pair;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
