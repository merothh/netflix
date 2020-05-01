.class public final Lo/Dt;
.super Lo/VibrationEffect;
.source ""

# interfaces
.implements Lo/Dq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Ljava/lang/Object;",
        ">;",
        "Lo/Dq;"
    }
.end annotation


# instance fields
.field private final c:Lo/aka;

.field private final e:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    .line 12
    iput-object p1, p0, Lo/Dt;->e:Landroid/view/ViewGroup;

    .line 13
    new-instance p1, Lcom/netflix/mediaclient/ui/common/immersive/ImmersiveModeUIView$containerId$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/common/immersive/ImmersiveModeUIView$containerId$2;-><init>(Lo/Dt;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Dt;->c:Lo/aka;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lo/Dt;->c:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/Window;)V
    .locals 1

    const-string v0, "window"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {p1}, Lo/adq;->d(Landroid/view/Window;)V

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lo/Dt;->i()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public e(Landroid/view/Window;)V
    .locals 1

    const-string v0, "window"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {p1}, Lo/adq;->e(Landroid/view/Window;)V

    return-void
.end method

.method public i()Landroid/view/ViewGroup;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/Dt;->e:Landroid/view/ViewGroup;

    return-object v0
.end method
