.class public final Lo/acg;
.super Lo/acc;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/acg$ActionBar;
    }
.end annotation


# static fields
.field public static final a:Lo/acg$ActionBar;

.field static final synthetic e:[Lo/amT;


# instance fields
.field private final i:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lo/acg;

    invoke-static {v2}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v2

    const-string v3, "container"

    const-string v4, "getContainer()Landroidx/constraintlayout/widget/ConstraintLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v1

    check-cast v1, Lo/amT;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/acg;->e:[Lo/amT;

    new-instance v0, Lo/acg$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/acg$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/acg;->a:Lo/acg$ActionBar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lo/acc;-><init>(Landroid/content/Context;Z)V

    .line 17
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->q:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/acg;->i:Lo/ams;

    .line 20
    invoke-direct {p0}, Lo/acg;->c()Lo/MenuInflater;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/acg;->b:Landroid/view/ViewGroup;

    return-void
.end method

.method private final c()Lo/MenuInflater;
    .locals 3

    iget-object v0, p0, Lo/acg;->i:Lo/ams;

    sget-object v1, Lo/acg;->e:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MenuInflater;

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .line 23
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->ga:I

    return v0
.end method

.method protected b()I
    .locals 1

    .line 27
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->aa:I

    return v0
.end method

.method protected b(Landroid/widget/Button;)V
    .locals 5

    const-string v0, "cta"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->n:I

    invoke-static {v0, v1}, Lo/PipedInputStream;->b(Landroid/widget/TextView;I)V

    .line 51
    iget-object v0, p0, Lo/acg;->h:Landroid/view/View;

    const-string v1, "mAlertView"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->v:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/widget/Button;->setPadding(IIII)V

    .line 54
    invoke-direct {p0}, Lo/acg;->c()Lo/MenuInflater;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lo/MenuInflater;->addView(Landroid/view/View;)V

    .line 56
    new-instance v0, Lo/Factory2;

    invoke-direct {v0}, Lo/Factory2;-><init>()V

    .line 57
    invoke-direct {p0}, Lo/acg;->c()Lo/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Factory2;->d(Lo/MenuInflater;)V

    .line 60
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->tQ:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result v1

    invoke-direct {p0}, Lo/acg;->c()Lo/MenuInflater;

    move-result-object v2

    invoke-virtual {v2}, Lo/MenuInflater;->getId()I

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v3, v2, v3}, Lo/Factory2;->e(IIII)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->tU:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result v1

    invoke-direct {p0}, Lo/acg;->c()Lo/MenuInflater;

    move-result-object v2

    invoke-virtual {v2}, Lo/MenuInflater;->getId()I

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v3, v2, v3}, Lo/Factory2;->e(IIII)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lo/acg;->a:Lo/acg$ActionBar;

    invoke-virtual {v3}, Lo/acg$ActionBar;->getLogTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Should not add to container: White modal UMA has only 2 CTAs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 65
    :goto_0
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result v1

    const/4 v2, 0x3

    iget-object v3, p0, Lo/acg;->d:Landroid/widget/TextView;

    const-string v4, "mBody"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/Factory2;->e(IIII)V

    .line 66
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result p1

    invoke-direct {p0}, Lo/acg;->c()Lo/MenuInflater;

    move-result-object v1

    invoke-virtual {v1}, Lo/MenuInflater;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v4, v1, v4}, Lo/Factory2;->e(IIII)V

    .line 68
    invoke-direct {p0}, Lo/acg;->c()Lo/MenuInflater;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Factory2;->a(Lo/MenuInflater;)V

    return-void
.end method

.method protected f()I
    .locals 1

    .line 29
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->Z:I

    return v0
.end method

.method protected j()V
    .locals 4

    .line 32
    iget-boolean v0, p0, Lo/acg;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/acg;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerCtas()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/acg;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->ctas()Ljava/util/List;

    move-result-object v0

    .line 33
    :goto_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    return-void

    .line 37
    :cond_3
    invoke-static {v0, v2}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    if-eqz v1, :cond_4

    .line 38
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->tQ:I

    invoke-virtual {p0, v1, v2}, Lo/acg;->a(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;I)V

    .line 41
    :cond_4
    invoke-static {v0, v3}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    if-eqz v0, :cond_5

    .line 42
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->tU:I

    invoke-virtual {p0, v0, v1}, Lo/acg;->a(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;I)V

    :cond_5
    return-void
.end method

.method protected k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
