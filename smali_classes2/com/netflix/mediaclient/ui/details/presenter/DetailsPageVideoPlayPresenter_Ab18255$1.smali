.class public final Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoPlayPresenter_Ab18255$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/EL;-><init>(Lo/Fo;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/DC;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/EL;


# direct methods
.method public constructor <init>(Lo/EL;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoPlayPresenter_Ab18255$1;->a:Lo/EL;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/DC;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    instance-of v0, p1, Lo/DC$ContentResolver;

    if-eqz v0, :cond_1

    .line 22
    check-cast p1, Lo/DC$ContentResolver;

    invoke-virtual {p1}, Lo/DC$ContentResolver;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoPlayPresenter_Ab18255$1;->a:Lo/EL;

    invoke-static {p1}, Lo/EL;->a(Lo/EL;)Lo/Fo;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fo;->j()V

    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoPlayPresenter_Ab18255$1;->a:Lo/EL;

    invoke-static {v0}, Lo/EL;->a(Lo/EL;)Lo/Fo;

    move-result-object v0

    invoke-virtual {p1}, Lo/DC$ContentResolver;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Fo;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_1
    instance-of v0, p1, Lo/DC$ComponentCallbacks2;

    if-eqz v0, :cond_3

    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoPlayPresenter_Ab18255$1;->a:Lo/EL;

    invoke-static {v0}, Lo/EL;->a(Lo/EL;)Lo/Fo;

    move-result-object v0

    check-cast p1, Lo/DC$ComponentCallbacks2;

    invoke-virtual {p1}, Lo/DC$ComponentCallbacks2;->d()F

    move-result p1

    const/4 v1, 0x0

    int-to-float v2, v1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v0, v1}, Lo/Fo;->a(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lo/DC;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoPlayPresenter_Ab18255$1;->c(Lo/DC;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
