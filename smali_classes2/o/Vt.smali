.class public final Lo/Vt;
.super Lo/VibrationEffect;
.source ""

# interfaces
.implements Lo/NsdServiceInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Lo/ValidationProbeEvent;",
        ">;",
        "Lo/NsdServiceInfo;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lo/aka;

.field private final d:I

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    .line 18
    sget v0, Lo/NdefMessage$ActionBar;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iput-object p1, p0, Lo/Vt;->a:Landroid/view/View;

    .line 22
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveLoadingUIView$label$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveLoadingUIView$label$2;-><init>(Lo/Vt;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Vt;->b:Lo/aka;

    .line 24
    sget p1, Lo/NdefMessage$TaskDescription;->c:I

    iput p1, p0, Lo/Vt;->d:I

    return-void
.end method

.method public static final synthetic d(Lo/Vt;Ljava/lang/Runnable;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lo/Vt;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 24
    iget v0, p0, Lo/Vt;->d:I

    return v0
.end method

.method public b()V
    .locals 2

    .line 39
    invoke-virtual {p0}, Lo/Vt;->d()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/Vt;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 40
    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lo/Vt;->e:Ljava/lang/Runnable;

    .line 41
    invoke-virtual {p0}, Lo/Vt;->d()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/Vt;->a:Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 4

    .line 27
    iget-object v0, p0, Lo/Vt;->e:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lo/Vt$TaskDescription;

    invoke-direct {v0, p0}, Lo/Vt$TaskDescription;-><init>(Lo/Vt;)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lo/Vt;->e:Ljava/lang/Runnable;

    .line 34
    invoke-virtual {p0}, Lo/Vt;->d()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/Vt;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 48
    invoke-virtual {p0}, Lo/Vt;->i()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public final i()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lo/Vt;->b:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public j()V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lo/Vt;->i()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
