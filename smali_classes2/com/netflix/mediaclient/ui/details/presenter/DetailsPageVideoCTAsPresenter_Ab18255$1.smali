.class public final Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCTAsPresenter_Ab18255$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/EA;-><init>(Lo/Fd;Lio/reactivex/Observable;)V
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
.field final synthetic a:Lo/EA;


# direct methods
.method public constructor <init>(Lo/EA;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCTAsPresenter_Ab18255$1;->a:Lo/EA;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/DC;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    instance-of v0, p1, Lo/DC$StateListAnimator;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCTAsPresenter_Ab18255$1;->a:Lo/EA;

    invoke-static {v0}, Lo/EA;->d(Lo/EA;)Lo/Fd;

    move-result-object v0

    check-cast p1, Lo/DC$StateListAnimator;

    invoke-virtual {p1}, Lo/DC$StateListAnimator;->e()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/Fd;->a(Z)V

    .line 26
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCTAsPresenter_Ab18255$1;->a:Lo/EA;

    invoke-static {p1}, Lo/EA;->d(Lo/EA;)Lo/Fd;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fd;->h()V

    goto/16 :goto_1

    .line 28
    :cond_0
    sget-object v0, Lo/DC$Application;->a:Lo/DC$Application;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCTAsPresenter_Ab18255$1;->a:Lo/EA;

    invoke-static {p1}, Lo/EA;->d(Lo/EA;)Lo/Fd;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fd;->j()V

    .line 30
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCTAsPresenter_Ab18255$1;->a:Lo/EA;

    invoke-static {p1}, Lo/EA;->d(Lo/EA;)Lo/Fd;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fd;->i()V

    goto/16 :goto_1

    .line 32
    :cond_1
    instance-of v0, p1, Lo/DC$ContextWrapper;

    if-eqz v0, :cond_2

    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCTAsPresenter_Ab18255$1;->a:Lo/EA;

    invoke-static {v0}, Lo/EA;->d(Lo/EA;)Lo/Fd;

    move-result-object v0

    check-cast p1, Lo/DC$ContextWrapper;

    invoke-virtual {p1}, Lo/DC$ContextWrapper;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/Fd;->c(I)V

    goto/16 :goto_1

    .line 35
    :cond_2
    sget-object v0, Lo/DC$VoiceInteractor;->e:Lo/DC$VoiceInteractor;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCTAsPresenter_Ab18255$1;->a:Lo/EA;

    invoke-static {p1}, Lo/EA;->d(Lo/EA;)Lo/Fd;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fd;->k()V

    goto/16 :goto_1

    .line 39
    :cond_3
    instance-of v0, p1, Lo/DC$ComponentName;

    if-eqz v0, :cond_5

    .line 40
    check-cast p1, Lo/DC$ComponentName;

    invoke-virtual {p1}, Lo/DC$ComponentName;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 41
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCTAsPresenter_Ab18255$1;->a:Lo/EA;

    invoke-static {p1}, Lo/EA;->d(Lo/EA;)Lo/Fd;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fd;->n()V

    .line 42
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCTAsPresenter_Ab18255$1;->a:Lo/EA;

    invoke-static {p1}, Lo/EA;->d(Lo/EA;)Lo/Fd;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fd;->k()V

    goto/16 :goto_1

    .line 44
    :cond_4
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCTAsPresenter_Ab18255$1;->a:Lo/EA;

    invoke-static {p1}, Lo/EA;->d(Lo/EA;)Lo/Fd;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fd;->l()V

    goto/16 :goto_1

    .line 47
    :cond_5
    instance-of v0, p1, Lo/DC$TaskStackBuilder;

    if-eqz v0, :cond_8

    .line 51
    move-object v0, p1

    check-cast v0, Lo/DC$TaskStackBuilder;

    invoke-virtual {v0}, Lo/DC$TaskStackBuilder;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lo/DC$TaskStackBuilder;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lo/DC$TaskStackBuilder;->a()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_7

    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 56
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCTAsPresenter_Ab18255$1;->a:Lo/EA;

    invoke-static {v0}, Lo/EA;->d(Lo/EA;)Lo/Fd;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCTAsPresenter_Ab18255$1$5;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCTAsPresenter_Ab18255$1$5;-><init>(Lo/DC;)V

    check-cast v1, Lo/As;

    .line 56
    invoke-virtual {v0, v1}, Lo/Fd;->d(Lo/As;)V

    .line 63
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCTAsPresenter_Ab18255$1;->a:Lo/EA;

    invoke-static {p1}, Lo/EA;->d(Lo/EA;)Lo/Fd;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fd;->m()V

    .line 65
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCTAsPresenter_Ab18255$1;->a:Lo/EA;

    invoke-static {p1}, Lo/EA;->d(Lo/EA;)Lo/Fd;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fd;->p()V

    goto :goto_1

    .line 54
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCTAsPresenter_Ab18255$1;->a:Lo/EA;

    invoke-static {p1}, Lo/EA;->d(Lo/EA;)Lo/Fd;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fd;->o()V

    goto :goto_1

    .line 68
    :cond_8
    instance-of v0, p1, Lo/DC$AssistContent;

    if-eqz v0, :cond_a

    .line 70
    check-cast p1, Lo/DC$AssistContent;

    invoke-virtual {p1}, Lo/DC$AssistContent;->d()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p1}, Lo/DC$AssistContent;->a()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 73
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCTAsPresenter_Ab18255$1;->a:Lo/EA;

    invoke-static {p1}, Lo/EA;->d(Lo/EA;)Lo/Fd;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fd;->o()V

    .line 74
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCTAsPresenter_Ab18255$1;->a:Lo/EA;

    invoke-static {p1}, Lo/EA;->d(Lo/EA;)Lo/Fd;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fd;->q()V

    .line 75
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCTAsPresenter_Ab18255$1;->a:Lo/EA;

    invoke-static {p1}, Lo/EA;->d(Lo/EA;)Lo/Fd;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fd;->s()V

    goto :goto_1

    .line 77
    :cond_9
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCTAsPresenter_Ab18255$1;->a:Lo/EA;

    invoke-static {p1}, Lo/EA;->d(Lo/EA;)Lo/Fd;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fd;->p()V

    :cond_a
    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lo/DC;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCTAsPresenter_Ab18255$1;->c(Lo/DC;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
