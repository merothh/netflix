.class final Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$LazyControls$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/ConnectStats;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

.field final synthetic c:Ljava/text/SimpleDateFormat;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;Ljava/text/SimpleDateFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$LazyControls$1;->a:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$LazyControls$1;->c:Ljava/text/SimpleDateFormat;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/ConnectStats;)V
    .locals 4

    .line 224
    instance-of v0, p1, Lo/DhcpClientEvent;

    const-string v1, "scrubber"

    if-eqz v0, :cond_0

    .line 225
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$LazyControls$1;->a:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->b:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->c(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$LazyControls$1;->a:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->e()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 227
    :cond_0
    instance-of v0, p1, Lo/DhcpErrorEvent;

    if-eqz v0, :cond_1

    .line 228
    check-cast p1, Lo/DhcpErrorEvent;

    invoke-virtual {p1}, Lo/DhcpErrorEvent;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 229
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$LazyControls$1;->a:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->b:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->j(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$LazyControls$1;->a:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->e()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 230
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$LazyControls$1;->a:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->b:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->i(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    sget-object v0, Lo/akj;->a:Lo/akj;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 233
    :cond_1
    instance-of p1, p1, Lo/IpManagerEvent;

    if-eqz p1, :cond_2

    .line 234
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$LazyControls$1;->a:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->b:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->f(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$LazyControls$1;->a:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->e()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 237
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$LazyControls$1;->a:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->b()Lo/ImageSwitcher;

    move-result-object p1

    const-string v0, "time"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$LazyControls$1;->c:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$LazyControls$1;->a:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->e()Landroid/widget/SeekBar;

    move-result-object v2

    invoke-static {v2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 203
    check-cast p1, Lo/ConnectStats;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$LazyControls$1;->c(Lo/ConnectStats;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
