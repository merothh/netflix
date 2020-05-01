.class public Lo/IpUtils;
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
.field private final a:Lo/aka;

.field private final c:Lo/aka;

.field private d:Z

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    .line 19
    new-instance v0, Lcom/netflix/android/components/LoadingUIView$uiView$2;

    invoke-direct {v0, p0, p1}, Lcom/netflix/android/components/LoadingUIView$uiView$2;-><init>(Lo/IpUtils;Landroid/view/ViewGroup;)V

    check-cast v0, Lo/alB;

    invoke-static {v0}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/IpUtils;->c:Lo/aka;

    .line 27
    new-instance p1, Lcom/netflix/android/components/LoadingUIView$label$2;

    invoke-direct {p1, p0}, Lcom/netflix/android/components/LoadingUIView$label$2;-><init>(Lo/IpUtils;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/IpUtils;->a:Lo/aka;

    .line 29
    sget p1, Lo/NdefMessage$TaskDescription;->c:I

    iput p1, p0, Lo/IpUtils;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 29
    iget v0, p0, Lo/IpUtils;->e:I

    return v0
.end method

.method public b()V
    .locals 2

    .line 38
    iget-boolean v0, p0, Lo/IpUtils;->d:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lo/IpUtils;->d()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lo/IpUtils;->c:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final d(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lo/IpUtils;->d:Z

    return-void
.end method

.method public e()V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lo/IpUtils;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 34
    invoke-virtual {p0}, Lo/IpUtils;->d()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 47
    invoke-virtual {p0}, Lo/IpUtils;->h()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "label"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public final h()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lo/IpUtils;->a:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method protected final i()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lo/IpUtils;->d:Z

    return v0
.end method

.method public j()V
    .locals 2

    .line 51
    iget-boolean v0, p0, Lo/IpUtils;->d:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lo/IpUtils;->h()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "label"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
