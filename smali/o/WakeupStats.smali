.class public final Lo/WakeupStats;
.super Lo/VibrationEffect;
.source ""

# interfaces
.implements Lo/WimaxManagerConstants;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Lo/ValidationProbeEvent;",
        ">;",
        "Lo/WimaxManagerConstants;"
    }
.end annotation


# instance fields
.field private final a:Lo/aka;

.field private b:Z

.field private final c:I

.field private final e:Lo/aka;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    .line 20
    new-instance v0, Lcom/netflix/android/components/ErrorUIView$uiView$2;

    invoke-direct {v0, p0, p1}, Lcom/netflix/android/components/ErrorUIView$uiView$2;-><init>(Lo/WakeupStats;Landroid/view/ViewGroup;)V

    check-cast v0, Lo/alB;

    invoke-static {v0}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/WakeupStats;->a:Lo/aka;

    .line 33
    new-instance p1, Lcom/netflix/android/components/ErrorUIView$myDownloadButton$2;

    invoke-direct {p1, p0}, Lcom/netflix/android/components/ErrorUIView$myDownloadButton$2;-><init>(Lo/WakeupStats;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/WakeupStats;->e:Lo/aka;

    .line 34
    sget p1, Lo/NdefMessage$TaskDescription;->a:I

    iput p1, p0, Lo/WakeupStats;->c:I

    return-void
.end method

.method public static final synthetic c(Lo/WakeupStats;Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lo/WakeupStats;->b:Z

    return-void
.end method

.method private final f()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lo/WakeupStats;->e:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 34
    iget v0, p0, Lo/WakeupStats;->c:I

    return v0
.end method

.method public b()V
    .locals 2

    .line 43
    iget-boolean v0, p0, Lo/WakeupStats;->b:Z

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lo/WakeupStats;->d()Landroid/view/View;

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

    iget-object v0, p0, Lo/WakeupStats;->a:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lo/WakeupStats;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 39
    invoke-virtual {p0}, Lo/WakeupStats;->d()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 2

    .line 56
    iget-boolean v0, p0, Lo/WakeupStats;->b:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0}, Lo/WakeupStats;->f()Landroid/widget/Button;

    move-result-object v0

    const-string v1, "myDownloadButton"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 2

    .line 52
    invoke-direct {p0}, Lo/WakeupStats;->f()Landroid/widget/Button;

    move-result-object v0

    const-string v1, "myDownloadButton"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
