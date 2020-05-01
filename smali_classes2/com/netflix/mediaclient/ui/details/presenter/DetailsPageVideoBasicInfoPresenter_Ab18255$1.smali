.class public final Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBasicInfoPresenter_Ab18255$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ev;-><init>(Lo/Ff;Lio/reactivex/Observable;)V
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
.field final synthetic a:Lo/Ev;


# direct methods
.method public constructor <init>(Lo/Ev;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBasicInfoPresenter_Ab18255$1;->a:Lo/Ev;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/DC;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    instance-of v0, p1, Lo/DC$ApplicationInfo;

    if-eqz v0, :cond_0

    .line 28
    check-cast p1, Lo/DC$ApplicationInfo;

    invoke-virtual {p1}, Lo/DC$ApplicationInfo;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 29
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBasicInfoPresenter_Ab18255$1;->a:Lo/Ev;

    invoke-static {p1}, Lo/Ev;->a(Lo/Ev;)Lo/Ff;

    move-result-object p1

    invoke-virtual {p1}, Lo/Ff;->j()V

    goto/16 :goto_0

    .line 32
    :cond_0
    instance-of v0, p1, Lo/DC$IntentSender;

    if-eqz v0, :cond_1

    .line 33
    check-cast p1, Lo/DC$IntentSender;

    invoke-virtual {p1}, Lo/DC$IntentSender;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 35
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBasicInfoPresenter_Ab18255$1;->a:Lo/Ev;

    invoke-static {p1}, Lo/Ev;->a(Lo/Ev;)Lo/Ff;

    move-result-object p1

    invoke-virtual {p1}, Lo/Ff;->h()V

    goto/16 :goto_0

    .line 38
    :cond_1
    instance-of v0, p1, Lo/DC$ClipData;

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBasicInfoPresenter_Ab18255$1;->a:Lo/Ev;

    invoke-static {v0}, Lo/Ev;->a(Lo/Ev;)Lo/Ff;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBasicInfoPresenter_Ab18255$1;->a:Lo/Ev;

    check-cast p1, Lo/DC$ClipData;

    invoke-virtual {p1}, Lo/DC$ClipData;->c()I

    move-result v2

    invoke-static {v1, v2}, Lo/Ev;->e(Lo/Ev;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Ff;->b(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBasicInfoPresenter_Ab18255$1;->a:Lo/Ev;

    invoke-virtual {p1}, Lo/DC$ClipData;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lo/DC$ClipData;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/Ev;->b(Lo/Ev;Ljava/util/List;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBasicInfoPresenter_Ab18255$1;->a:Lo/Ev;

    invoke-virtual {p1}, Lo/DC$ClipData;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/DC$ClipData;->b()I

    move-result p1

    invoke-static {v0, v1, p1}, Lo/Ev;->a(Lo/Ev;Ljava/lang/String;I)V

    goto :goto_0

    .line 48
    :cond_2
    instance-of v0, p1, Lo/DC$PictureInPictureParams;

    if-eqz v0, :cond_3

    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBasicInfoPresenter_Ab18255$1;->a:Lo/Ev;

    invoke-static {v0}, Lo/Ev;->a(Lo/Ev;)Lo/Ff;

    move-result-object v0

    check-cast p1, Lo/DC$PictureInPictureParams;

    invoke-virtual {p1}, Lo/DC$PictureInPictureParams;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Ff;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_3
    instance-of v0, p1, Lo/DC$ContextWrapper;

    if-eqz v0, :cond_5

    .line 53
    check-cast p1, Lo/DC$ContextWrapper;

    invoke-virtual {p1}, Lo/DC$ContextWrapper;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBasicInfoPresenter_Ab18255$1;->a:Lo/Ev;

    invoke-static {v0}, Lo/Ev;->a(Lo/Ev;)Lo/Ff;

    move-result-object v0

    .line 55
    invoke-virtual {p1}, Lo/DC$ContextWrapper;->a()I

    move-result p1

    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, p1, v1, v1, v1}, Lo/Ff;->b(IIZZ)V

    goto :goto_0

    .line 61
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBasicInfoPresenter_Ab18255$1;->a:Lo/Ev;

    invoke-static {v0}, Lo/Ev;->a(Lo/Ev;)Lo/Ff;

    move-result-object v0

    .line 62
    invoke-virtual {p1}, Lo/DC$ContextWrapper;->a()I

    move-result v1

    .line 63
    invoke-virtual {p1}, Lo/DC$ContextWrapper;->e()I

    move-result v2

    .line 64
    invoke-virtual {p1}, Lo/DC$ContextWrapper;->c()Z

    move-result v3

    .line 65
    invoke-virtual {p1}, Lo/DC$ContextWrapper;->b()Z

    move-result p1

    .line 61
    invoke-virtual {v0, v1, v2, v3, p1}, Lo/Ff;->b(IIZZ)V

    :cond_5
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lo/DC;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoBasicInfoPresenter_Ab18255$1;->d(Lo/DC;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
