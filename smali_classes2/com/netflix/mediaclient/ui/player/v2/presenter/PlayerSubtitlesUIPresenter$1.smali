.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSubtitlesUIPresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VS;-><init>(Lo/WE;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/UP;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/VS;


# direct methods
.method public constructor <init>(Lo/VS;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSubtitlesUIPresenter$1;->c:Lo/VS;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/UP;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    instance-of v0, p1, Lo/UP$CursorFactory;

    if-eqz v0, :cond_0

    .line 25
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSubtitlesUIPresenter$1;->c:Lo/VS;

    invoke-virtual {p1}, Lo/VS;->d()Z

    move-result p1

    if-nez p1, :cond_a

    .line 26
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSubtitlesUIPresenter$1;->c:Lo/VS;

    invoke-static {p1}, Lo/VS;->b(Lo/VS;)Lo/WE;

    move-result-object p1

    invoke-interface {p1}, Lo/WE;->e()V

    goto/16 :goto_2

    .line 29
    :cond_0
    sget-object v0, Lo/UP$Mode;->b:Lo/UP$Mode;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    instance-of v0, p1, Lo/UP$Rect;

    if-eqz v0, :cond_2

    .line 31
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSubtitlesUIPresenter$1;->c:Lo/VS;

    invoke-virtual {p1}, Lo/VS;->d()Z

    move-result p1

    if-nez p1, :cond_a

    .line 32
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSubtitlesUIPresenter$1;->c:Lo/VS;

    invoke-static {p1}, Lo/VS;->b(Lo/VS;)Lo/WE;

    move-result-object p1

    invoke-interface {p1}, Lo/WE;->e()V

    goto/16 :goto_2

    .line 35
    :cond_2
    instance-of v0, p1, Lo/UP$BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 36
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSubtitlesUIPresenter$1;->c:Lo/VS;

    invoke-static {p1}, Lo/VS;->b(Lo/VS;)Lo/WE;

    move-result-object p1

    invoke-interface {p1}, Lo/WE;->b()V

    goto/16 :goto_2

    .line 38
    :cond_3
    sget-object v0, Lo/UP$Context;->c:Lo/UP$Context;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 39
    :cond_4
    sget-object v0, Lo/UP$StateListAnimator;->c:Lo/UP$StateListAnimator;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 41
    :goto_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSubtitlesUIPresenter$1;->c:Lo/VS;

    invoke-virtual {p1}, Lo/VS;->d()Z

    move-result p1

    if-nez p1, :cond_a

    .line 42
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSubtitlesUIPresenter$1;->c:Lo/VS;

    invoke-static {p1}, Lo/VS;->b(Lo/VS;)Lo/WE;

    move-result-object p1

    invoke-interface {p1}, Lo/WE;->j()V

    goto :goto_2

    .line 45
    :cond_5
    sget-object v0, Lo/UP$ServiceConnection;->e:Lo/UP$ServiceConnection;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 46
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSubtitlesUIPresenter$1;->c:Lo/VS;

    invoke-static {p1}, Lo/VS;->b(Lo/VS;)Lo/WE;

    move-result-object p1

    invoke-interface {p1}, Lo/WE;->b()V

    goto :goto_2

    .line 48
    :cond_6
    sget-object v0, Lo/UP$ClipData;->c:Lo/UP$ClipData;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 49
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSubtitlesUIPresenter$1;->c:Lo/VS;

    invoke-static {p1}, Lo/VS;->b(Lo/VS;)Lo/WE;

    move-result-object p1

    invoke-interface {p1}, Lo/WE;->e()V

    goto :goto_2

    .line 51
    :cond_7
    instance-of v0, p1, Lo/UP$Drawable;

    if-eqz v0, :cond_8

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSubtitlesUIPresenter$1;->c:Lo/VS;

    invoke-static {v0}, Lo/VS;->b(Lo/VS;)Lo/WE;

    move-result-object v0

    check-cast p1, Lo/UP$Drawable;

    invoke-virtual {p1}, Lo/UP$Drawable;->d()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/WE;->a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    goto :goto_2

    .line 54
    :cond_8
    instance-of v0, p1, Lo/UP$LoaderManager;

    if-eqz v0, :cond_9

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSubtitlesUIPresenter$1;->c:Lo/VS;

    invoke-static {v0}, Lo/VS;->b(Lo/VS;)Lo/WE;

    move-result-object v0

    check-cast p1, Lo/UP$LoaderManager;

    invoke-virtual {p1}, Lo/UP$LoaderManager;->c()F

    move-result p1

    invoke-interface {v0, p1}, Lo/WE;->a(F)V

    goto :goto_2

    .line 57
    :cond_9
    instance-of p1, p1, Lo/UP$VoiceInteractor;

    if-eqz p1, :cond_a

    .line 58
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSubtitlesUIPresenter$1;->c:Lo/VS;

    invoke-static {p1}, Lo/VS;->b(Lo/VS;)Lo/WE;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lo/WE;->a(F)V

    :cond_a
    :goto_2
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSubtitlesUIPresenter$1;->b(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
