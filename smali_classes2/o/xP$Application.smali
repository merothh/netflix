.class Lo/xP$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/iw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/xP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field final synthetic a:Lo/xP;


# direct methods
.method private constructor <init>(Lo/xP;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lo/xP$Application;->a:Lo/xP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/xP;Lo/xP$1;)V
    .locals 0

    .line 351
    invoke-direct {p0, p1}, Lo/xP$Application;-><init>(Lo/xP;)V

    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 3

    const-string v0, "nf_preappagent"

    const-string v1, "starting maintenance for app widget"

    .line 354
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v1, p0, Lo/xP$Application;->a:Lo/xP;

    invoke-static {v1}, Lo/xP;->c(Lo/xP;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "user logged in - prefetch lolomo for app widget "

    .line 356
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v0, Lo/xP$Application$2;

    invoke-direct {v0, p0, p1}, Lo/xP$Application$2;-><init>(Lo/xP$Application;I)V

    .line 366
    const-class p1, Lo/hW;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/hW;

    const/4 v1, 0x6

    invoke-interface {p1, v1, v1, v0}, Lo/hW;->c(IILo/ci;)V

    goto :goto_0

    :cond_0
    const-string v1, "user not logged in - fetch non member data for app widget"

    .line 369
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v0, Lo/xP$Application$3;

    invoke-direct {v0, p0, p1}, Lo/xP$Application$3;-><init>(Lo/xP$Application;I)V

    .line 378
    const-class p1, Lo/hW;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/hW;

    iget-object v1, p0, Lo/xP$Application;->a:Lo/xP;

    invoke-virtual {v1}, Lo/xP;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/xN;->e(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lo/hW;->d(IZLo/ci;)V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method
