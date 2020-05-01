.class public final Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RadioButton$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;-><init>(Landroid/view/View;Lo/alA;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$Application;->a:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/RadioButton;II)V
    .locals 0

    const-string p2, "seekButton"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$Application;->a:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->g()V

    return-void
.end method

.method public d(Lo/RadioButton;II)V
    .locals 5

    const-string v0, "seekButton"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$Application;->a:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->q(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->d()Landroid/widget/SeekBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$Application;->a:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->j(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-long v1, p1

    invoke-static {}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->p()J

    move-result-wide v3

    int-to-long p1, p2

    mul-long v3, v3, p1

    int-to-long p1, p3

    mul-long v3, v3, p1

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
