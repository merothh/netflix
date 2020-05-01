.class public final Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoSupportedMediaTracksPresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/EM;-><init>(Lo/Fw;Lio/reactivex/Observable;)V
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
.field final synthetic b:Lo/EM;


# direct methods
.method public constructor <init>(Lo/EM;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoSupportedMediaTracksPresenter$1;->b:Lo/EM;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/DC;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    instance-of v0, p1, Lo/DC$ServiceConnection;

    if-eqz v0, :cond_3

    .line 21
    check-cast p1, Lo/DC$ServiceConnection;

    invoke-virtual {p1}, Lo/DC$ServiceConnection;->a()Lcom/netflix/model/leafs/SupportedMediaTracks;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 25
    invoke-interface {p1}, Lcom/netflix/model/leafs/SupportedMediaTracks;->getAudioTracks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 26
    invoke-interface {p1}, Lcom/netflix/model/leafs/SupportedMediaTracks;->getSubtitleTracks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gtz v0, :cond_0

    .line 30
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoSupportedMediaTracksPresenter$1;->b:Lo/EM;

    invoke-static {p1}, Lo/EM;->e(Lo/EM;)Lo/Fw;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fw;->b()V

    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoSupportedMediaTracksPresenter$1;->b:Lo/EM;

    invoke-static {v1, p1}, Lo/EM;->b(Lo/EM;Lcom/netflix/model/leafs/SupportedMediaTracks;)Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 33
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoSupportedMediaTracksPresenter$1;->b:Lo/EM;

    .line 35
    invoke-interface {p1}, Lcom/netflix/model/leafs/SupportedMediaTracks;->getSubtitleTracks()Ljava/util/List;

    move-result-object v3

    .line 33
    invoke-static {v2, v1, v3}, Lo/EM;->c(Lo/EM;Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;Ljava/util/List;)Z

    move-result v2

    .line 37
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoSupportedMediaTracksPresenter$1;->b:Lo/EM;

    .line 39
    invoke-interface {p1}, Lcom/netflix/model/leafs/SupportedMediaTracks;->getAudioTracks()Ljava/util/List;

    move-result-object p1

    .line 37
    invoke-static {v3, v1, p1}, Lo/EM;->a(Lo/EM;Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;Ljava/util/List;)Z

    move-result p1

    .line 41
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoSupportedMediaTracksPresenter$1;->b:Lo/EM;

    invoke-static {v3}, Lo/EM;->e(Lo/EM;)Lo/Fw;

    move-result-object v3

    .line 42
    invoke-interface {v1}, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;->getLanguageName()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {v3, v1, v2, p1, v0}, Lo/Fw;->e(Ljava/lang/String;ZZI)V

    .line 47
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoSupportedMediaTracksPresenter$1;->b:Lo/EM;

    invoke-static {p1}, Lo/EM;->e(Lo/EM;)Lo/Fw;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fw;->e()V

    goto :goto_0

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoSupportedMediaTracksPresenter$1;->b:Lo/EM;

    invoke-static {p1}, Lo/EM;->e(Lo/EM;)Lo/Fw;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fw;->b()V

    goto :goto_0

    .line 50
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoSupportedMediaTracksPresenter$1;->b:Lo/EM;

    invoke-static {p1}, Lo/EM;->e(Lo/EM;)Lo/Fw;

    move-result-object p1

    invoke-virtual {p1}, Lo/Fw;->b()V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Lo/DC;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoSupportedMediaTracksPresenter$1;->b(Lo/DC;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
