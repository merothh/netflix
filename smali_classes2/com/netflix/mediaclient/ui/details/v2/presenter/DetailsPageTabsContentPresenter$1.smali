.class public final Lcom/netflix/mediaclient/ui/details/v2/presenter/DetailsPageTabsContentPresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FM;-><init>(Lo/FQ;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/FH;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/FM;


# direct methods
.method public constructor <init>(Lo/FM;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/presenter/DetailsPageTabsContentPresenter$1;->e:Lo/FM;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/FH;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    instance-of v0, p1, Lo/FH$Activity;

    if-eqz v0, :cond_2

    .line 31
    invoke-static {}, Lo/adq;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-static {}, Lo/ady;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lo/FH$Activity;

    invoke-virtual {v0}, Lo/FH$Activity;->a()Lo/Bc;

    move-result-object v0

    invoke-interface {v0}, Lo/Bc;->isPreRelease()Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/v2/presenter/DetailsPageTabsContentPresenter$1;->e:Lo/FM;

    check-cast p1, Lo/FH$Activity;

    invoke-virtual {p1}, Lo/FH$Activity;->a()Lo/Bc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/FM;->d(Lo/Bc;)V

    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/v2/presenter/DetailsPageTabsContentPresenter$1;->e:Lo/FM;

    invoke-virtual {p1}, Lo/FH$Activity;->a()Lo/Bc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/FM;->b(Lo/Bc;)V

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/v2/presenter/DetailsPageTabsContentPresenter$1;->e:Lo/FM;

    invoke-static {v0}, Lo/FM;->a(Lo/FM;)Lo/FQ;

    move-result-object v0

    invoke-virtual {p1}, Lo/FH$Activity;->a()Lo/Bc;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/FQ;->b(Lo/Bc;)V

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/presenter/DetailsPageTabsContentPresenter$1;->e:Lo/FM;

    invoke-static {p1}, Lo/FM;->a(Lo/FM;)Lo/FQ;

    move-result-object p1

    invoke-interface {p1}, Lo/FQ;->e()V

    goto/16 :goto_0

    .line 41
    :cond_2
    instance-of v0, p1, Lo/FH$Application;

    if-eqz v0, :cond_3

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/v2/presenter/DetailsPageTabsContentPresenter$1;->e:Lo/FM;

    invoke-static {v0}, Lo/FM;->a(Lo/FM;)Lo/FQ;

    move-result-object v0

    check-cast p1, Lo/FH$Application;

    invoke-virtual {p1}, Lo/FH$Application;->d()I

    move-result v1

    invoke-virtual {p1}, Lo/FH$Application;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lo/FQ;->d(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 44
    :cond_3
    instance-of v0, p1, Lo/FH$PictureInPictureParams;

    if-eqz v0, :cond_4

    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/v2/presenter/DetailsPageTabsContentPresenter$1;->e:Lo/FM;

    invoke-static {v0}, Lo/FM;->a(Lo/FM;)Lo/FQ;

    move-result-object v0

    check-cast p1, Lo/FH$PictureInPictureParams;

    invoke-virtual {p1}, Lo/FH$PictureInPictureParams;->d()Landroid/os/Parcelable;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/FQ;->a(Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 47
    :cond_4
    sget-object v0, Lo/FH$Fragment;->d:Lo/FH$Fragment;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 48
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/presenter/DetailsPageTabsContentPresenter$1;->e:Lo/FM;

    invoke-static {p1}, Lo/FM;->a(Lo/FM;)Lo/FQ;

    move-result-object p1

    invoke-interface {p1}, Lo/FQ;->n()V

    goto/16 :goto_0

    .line 50
    :cond_5
    sget-object v0, Lo/FH$AssistContent;->c:Lo/FH$AssistContent;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 51
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/presenter/DetailsPageTabsContentPresenter$1;->e:Lo/FM;

    invoke-static {p1}, Lo/FM;->a(Lo/FM;)Lo/FQ;

    move-result-object p1

    invoke-interface {p1}, Lo/FQ;->j()V

    goto/16 :goto_0

    .line 53
    :cond_6
    sget-object v0, Lo/FH$VoiceInteractor;->d:Lo/FH$VoiceInteractor;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 54
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/presenter/DetailsPageTabsContentPresenter$1;->e:Lo/FM;

    invoke-static {p1}, Lo/FM;->a(Lo/FM;)Lo/FQ;

    move-result-object p1

    invoke-interface {p1}, Lo/FQ;->h()V

    goto/16 :goto_0

    .line 56
    :cond_7
    sget-object v0, Lo/FH$TaskStackBuilder;->b:Lo/FH$TaskStackBuilder;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 57
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/presenter/DetailsPageTabsContentPresenter$1;->e:Lo/FM;

    invoke-static {p1}, Lo/FM;->a(Lo/FM;)Lo/FQ;

    move-result-object p1

    invoke-interface {p1}, Lo/FQ;->f()V

    goto :goto_0

    .line 59
    :cond_8
    instance-of v0, p1, Lo/FH$FragmentManager;

    if-eqz v0, :cond_9

    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/v2/presenter/DetailsPageTabsContentPresenter$1;->e:Lo/FM;

    invoke-static {v0}, Lo/FM;->a(Lo/FM;)Lo/FQ;

    move-result-object v0

    check-cast p1, Lo/FH$FragmentManager;

    invoke-virtual {p1}, Lo/FH$FragmentManager;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lo/FH$FragmentManager;->a()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lo/FQ;->a(Ljava/util/List;I)V

    goto :goto_0

    .line 62
    :cond_9
    instance-of v0, p1, Lo/FH$ClipData;

    if-eqz v0, :cond_a

    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/v2/presenter/DetailsPageTabsContentPresenter$1;->e:Lo/FM;

    invoke-static {v0}, Lo/FM;->a(Lo/FM;)Lo/FQ;

    move-result-object v0

    check-cast p1, Lo/FH$ClipData;

    invoke-virtual {p1}, Lo/FH$ClipData;->b()I

    move-result v1

    invoke-virtual {p1}, Lo/FH$ClipData;->d()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lo/FQ;->d(II)V

    goto :goto_0

    .line 65
    :cond_a
    sget-object v0, Lo/FH$TaskDescription;->d:Lo/FH$TaskDescription;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 66
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/presenter/DetailsPageTabsContentPresenter$1;->e:Lo/FM;

    invoke-static {p1}, Lo/FM;->a(Lo/FM;)Lo/FQ;

    move-result-object p1

    invoke-interface {p1}, Lo/FQ;->b()V

    goto :goto_0

    .line 68
    :cond_b
    sget-object v0, Lo/FH$BroadcastReceiver;->e:Lo/FH$BroadcastReceiver;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 70
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/presenter/DetailsPageTabsContentPresenter$1;->e:Lo/FM;

    invoke-static {p1}, Lo/FM;->a(Lo/FM;)Lo/FQ;

    move-result-object p1

    invoke-interface {p1}, Lo/FQ;->e()V

    goto :goto_0

    .line 72
    :cond_c
    sget-object v0, Lo/FH$Dialog;->c:Lo/FH$Dialog;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 73
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/presenter/DetailsPageTabsContentPresenter$1;->e:Lo/FM;

    invoke-static {p1}, Lo/FM;->a(Lo/FM;)Lo/FQ;

    move-result-object p1

    invoke-interface {p1}, Lo/FQ;->s()V

    :cond_d
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lo/FH;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/v2/presenter/DetailsPageTabsContentPresenter$1;->d(Lo/FH;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
