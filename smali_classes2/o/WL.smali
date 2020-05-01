.class public final Lo/WL;
.super Lo/Xl;
.source ""

# interfaces
.implements Lo/Wr;


# instance fields
.field private b:F

.field private final c:Landroid/view/View;

.field private final d:Lo/Wq;

.field private e:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/Xl;-><init>(Landroid/view/View;)V

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 42
    invoke-direct {p0}, Lo/WL;->h()I

    move-result v1

    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lo/WL;->c:Landroid/view/View;

    .line 46
    invoke-direct {p0}, Lo/WL;->f()Lo/Wq;

    move-result-object v0

    iput-object v0, p0, Lo/WL;->d:Lo/Wq;

    .line 49
    invoke-virtual {p0}, Lo/WL;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 50
    iget-object p1, p0, Lo/WL;->d:Lo/Wq;

    move-object v0, p0

    check-cast v0, Lo/Wr;

    invoke-interface {p1, v0}, Lo/Wq;->setBrightnessChangedListener(Lo/Wr;)V

    return-void

    .line 41
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final f()Lo/Wq;
    .locals 3

    .line 62
    sget-object v0, Lo/gN;->e:Lo/gN$Application;

    invoke-virtual {v0}, Lo/gN$Application;->c()Z

    move-result v0

    const-string v1, "uiView.findViewById<Brig\u2026der>(R.id.brightness_bar)"

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lo/WL;->d()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->aV:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/Wq;

    return-object v0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lo/WL;->d()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->aV:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/Wq;

    return-object v0
.end method

.method private final h()I
    .locals 1

    .line 54
    sget-object v0, Lo/gN;->e:Lo/gN$Application;

    invoke-virtual {v0}, Lo/gN$Application;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->dM:I

    return v0

    .line 57
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->dN:I

    return v0
.end method


# virtual methods
.method public aq_()V
    .locals 3

    .line 33
    sget-object v0, Lo/UU$Application;->e:Lo/UU$Application;

    invoke-virtual {p0, v0}, Lo/WL;->e(Ljava/lang/Object;)V

    .line 34
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 35
    new-instance v1, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;

    iget v2, p0, Lo/WL;->b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    .line 34
    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    .line 37
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v1, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 38
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lo/WL;->e:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    return-void
.end method

.method public b()V
    .locals 9

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v0, p0

    .line 88
    invoke-static/range {v0 .. v8}, Lo/Xl;->a(Lo/Xl;ZJJZILjava/lang/Object;)V

    return-void
.end method

.method public final b(F)V
    .locals 1

    .line 92
    iget-object v0, p0, Lo/WL;->d:Lo/Wq;

    invoke-interface {v0, p1}, Lo/Wq;->setBrightness(F)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 70
    invoke-super {p0}, Lo/Xl;->c()V

    .line 71
    iget-object v0, p0, Lo/WL;->d:Lo/Wq;

    invoke-interface {v0}, Lo/Wq;->d()V

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/WL;->c:Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 9

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v0, p0

    .line 84
    invoke-static/range {v0 .. v8}, Lo/Xl;->a(Lo/Xl;ZJJZILjava/lang/Object;)V

    return-void
.end method

.method public e(F)V
    .locals 1

    .line 28
    new-instance v0, Lo/UU$Theme;

    invoke-direct {v0, p1}, Lo/UU$Theme;-><init>(F)V

    invoke-virtual {p0, v0}, Lo/WL;->e(Ljava/lang/Object;)V

    .line 29
    iput p1, p0, Lo/WL;->b:F

    return-void
.end method

.method public g()V
    .locals 1

    .line 75
    invoke-super {p0}, Lo/Xl;->g()V

    .line 76
    iget-object v0, p0, Lo/WL;->d:Lo/Wq;

    invoke-interface {v0}, Lo/Wq;->e()V

    return-void
.end method

.method public j()V
    .locals 4

    .line 19
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 20
    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    .line 21
    sget-object v2, Lcom/netflix/cl/model/AppView;->brightnessControl:Lcom/netflix/cl/model/AppView;

    const/4 v3, 0x0

    .line 20
    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    .line 19
    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/WL;->e:Ljava/lang/Long;

    return-void
.end method

.method public l()Z
    .locals 1

    .line 80
    invoke-virtual {p0}, Lo/WL;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
