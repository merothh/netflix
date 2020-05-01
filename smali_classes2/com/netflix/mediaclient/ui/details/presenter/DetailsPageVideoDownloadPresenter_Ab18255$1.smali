.class public final Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDownloadPresenter_Ab18255$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/EE;-><init>(Lo/Fp;Lio/reactivex/Observable;)V
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
.field final synthetic a:Lo/EE;


# direct methods
.method public constructor <init>(Lo/EE;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDownloadPresenter_Ab18255$1;->a:Lo/EE;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/DC;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    instance-of v0, p1, Lo/DC$TaskStackBuilder;

    if-eqz v0, :cond_2

    .line 24
    move-object v0, p1

    check-cast v0, Lo/DC$TaskStackBuilder;

    invoke-virtual {v0}, Lo/DC$TaskStackBuilder;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lo/DC$TaskStackBuilder;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDownloadPresenter_Ab18255$1;->a:Lo/EE;

    invoke-static {v1}, Lo/EE;->c(Lo/EE;)Lo/Fp;

    move-result-object v1

    .line 30
    new-instance v2, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDownloadPresenter_Ab18255$1$2;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDownloadPresenter_Ab18255$1$2;-><init>(Lo/DC;)V

    check-cast v2, Lo/As;

    .line 35
    invoke-virtual {v0}, Lo/DC$TaskStackBuilder;->d()Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-virtual {v0}, Lo/DC$TaskStackBuilder;->g()I

    move-result v0

    .line 29
    invoke-virtual {v1, v2, p1, v0}, Lo/Fp;->b(Lo/As;Ljava/lang/String;I)V

    .line 38
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDownloadPresenter_Ab18255$1;->a:Lo/EE;

    invoke-static {p1}, Lo/EE;->c(Lo/EE;)Lo/Fp;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fp;->e()V

    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDownloadPresenter_Ab18255$1;->a:Lo/EE;

    invoke-static {p1}, Lo/EE;->c(Lo/EE;)Lo/Fp;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fp;->b()V

    goto :goto_1

    .line 41
    :cond_2
    instance-of v0, p1, Lo/DC$AssistContent;

    if-eqz v0, :cond_3

    .line 42
    check-cast p1, Lo/DC$AssistContent;

    invoke-virtual {p1}, Lo/DC$AssistContent;->d()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lo/DC$AssistContent;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 44
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDownloadPresenter_Ab18255$1;->a:Lo/EE;

    invoke-static {p1}, Lo/EE;->c(Lo/EE;)Lo/Fp;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fp;->b()V

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lo/DC;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDownloadPresenter_Ab18255$1;->e(Lo/DC;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
