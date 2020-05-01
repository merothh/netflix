.class public final Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Dialog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RadioButton$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;-><init>(Landroid/view/View;Lo/alA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Dialog;->b:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/RadioButton;II)V
    .locals 0

    const-string p2, "seekButton"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Dialog;->b:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->i()V

    return-void
.end method

.method public d(Lo/RadioButton;II)V
    .locals 6

    const-string v0, "seekButton"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Dialog;->b:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->f(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Dialog;->b:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->o(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->e()Landroid/widget/SeekBar;

    move-result-object v0

    const-string v1, "lazyControls.scrubber"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->t()J

    move-result-wide v2

    int-to-long v4, p2

    mul-long v2, v2, v4

    int-to-long p2, p3

    mul-long v2, v2, p2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
