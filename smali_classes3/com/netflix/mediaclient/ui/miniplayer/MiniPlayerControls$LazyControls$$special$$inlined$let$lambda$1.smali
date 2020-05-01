.class final Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$LazyControls$$special$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)V
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
.field final synthetic b:Ljava/text/SimpleDateFormat;

.field final synthetic d:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;

.field final synthetic e:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Landroid/widget/SeekBar;Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;Ljava/text/SimpleDateFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$LazyControls$$special$$inlined$let$lambda$1;->e:Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$LazyControls$$special$$inlined$let$lambda$1;->d:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$LazyControls$$special$$inlined$let$lambda$1;->b:Ljava/text/SimpleDateFormat;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/ConnectStats;)V
    .locals 2

    .line 258
    instance-of v0, p1, Lo/DhcpClientEvent;

    if-eqz v0, :cond_0

    .line 259
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$LazyControls$$special$$inlined$let$lambda$1;->d:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->e:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->i(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$LazyControls$$special$$inlined$let$lambda$1;->e:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 261
    :cond_0
    instance-of v0, p1, Lo/DhcpErrorEvent;

    if-eqz v0, :cond_1

    .line 262
    check-cast p1, Lo/DhcpErrorEvent;

    invoke-virtual {p1}, Lo/DhcpErrorEvent;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 263
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$LazyControls$$special$$inlined$let$lambda$1;->d:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->e:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->f(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$LazyControls$$special$$inlined$let$lambda$1;->e:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 264
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$LazyControls$$special$$inlined$let$lambda$1;->d:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->e:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->h(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    sget-object v0, Lo/akj;->a:Lo/akj;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 267
    :cond_1
    instance-of p1, p1, Lo/IpManagerEvent;

    if-eqz p1, :cond_2

    .line 268
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$LazyControls$$special$$inlined$let$lambda$1;->d:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->e:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->j(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$LazyControls$$special$$inlined$let$lambda$1;->e:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 271
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$LazyControls$$special$$inlined$let$lambda$1;->d:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->a()Lo/ImageSwitcher;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$LazyControls$$special$$inlined$let$lambda$1;->b:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$LazyControls$$special$$inlined$let$lambda$1;->e:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 226
    check-cast p1, Lo/ConnectStats;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$LazyControls$$special$$inlined$let$lambda$1;->a(Lo/ConnectStats;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
