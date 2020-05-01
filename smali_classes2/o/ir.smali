.class public Lo/ir;
.super Lo/ih;
.source ""


# static fields
.field public static e:Z = false


# instance fields
.field private final c:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "Lo/bY$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lio/reactivex/subjects/PublishSubject;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 40
    sget-object v0, Lo/bY$TaskDescription;->e:Lo/bY$TaskDescription;

    invoke-direct {p0, v0, p1}, Lo/ih;-><init>(Lo/bY$TaskDescription;Lio/reactivex/subjects/PublishSubject;)V

    .line 29
    new-instance p1, Lo/ir$3;

    const-string v0, "partnerModule"

    invoke-direct {p1, p0, v0}, Lo/ir$3;-><init>(Lo/ir;Ljava/lang/String;)V

    iput-object p1, p0, Lo/ir;->c:Lio/reactivex/Observer;

    .line 41
    iput-object p2, p0, Lo/ir;->d:Landroid/content/Context;

    return-void
.end method

.method public static a()Z
    .locals 2

    .line 71
    const-class v0, Lo/bY;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/bY;

    sget-object v1, Lo/bY$TaskDescription;->e:Lo/bY$TaskDescription;

    invoke-interface {v0, v1}, Lo/bY;->b(Lo/bY$TaskDescription;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 0

    .line 67
    invoke-static {p0}, Lo/ir;->d(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lo/ir;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "channelIdValue"

    const/4 v1, 0x0

    .line 62
    invoke-static {p0, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-static {p0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lo/aek;->o()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 3

    .line 81
    invoke-static {p0}, Lo/ir;->c(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    sget-boolean p0, Lo/ir;->e:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 82
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "nf_module_installer"

    const-string v2, "shouldGetDataForMinusone %s"

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return p0
.end method


# virtual methods
.method protected d()Z
    .locals 1

    .line 76
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->j()Lo/Plugin;

    move-result-object v0

    invoke-interface {v0}, Lo/Plugin;->b()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 4

    .line 46
    invoke-virtual {p0}, Lo/ir;->c()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "nf_module_installer"

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    .line 47
    iget-object v2, p0, Lo/ir;->a:Lo/bY$TaskDescription;

    invoke-virtual {v2}, Lo/bY$TaskDescription;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "already installed %s"

    invoke-static {v3, v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lo/ir;->d:Landroid/content/Context;

    invoke-static {v0}, Lo/ir;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    .line 52
    iget-object v2, p0, Lo/ir;->a:Lo/bY$TaskDescription;

    invoke-virtual {v2}, Lo/bY$TaskDescription;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "requesting install of %s"

    invoke-static {v3, v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 53
    iget-object v0, p0, Lo/ir;->c:Lio/reactivex/Observer;

    invoke-virtual {p0}, Lo/ir;->d()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lo/ir;->d(Lio/reactivex/Observer;Z)V

    :cond_1
    return-void
.end method
