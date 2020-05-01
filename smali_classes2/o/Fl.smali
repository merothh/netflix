.class public final Lo/Fl;
.super Lo/VibrationEffect;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Fl$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Lo/DG;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic b:[Lo/amT;

.field public static final c:Lo/Fl$Application;


# instance fields
.field private final a:I

.field private final d:Lo/ams;

.field private final e:Landroid/view/ViewGroup;

.field private final i:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/Fl;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "episodeBadge"

    const-string v5, "getEpisodeBadge()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "episodeTitle"

    const-string v4, "getEpisodeTitle()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lo/Fl;->b:[Lo/amT;

    new-instance v0, Lo/Fl$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Fl$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/Fl;->c:Lo/Fl$Application;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    .line 19
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->P:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/Fl;->e:Landroid/view/ViewGroup;

    .line 21
    invoke-virtual {p0}, Lo/Fl;->i()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    iput p1, p0, Lo/Fl;->a:I

    .line 23
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->vb:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Fl;->d:Lo/ams;

    .line 25
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->vf:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Fl;->i:Lo/ams;

    return-void

    .line 19
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final n()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/Fl;->d:Lo/ams;

    sget-object v1, Lo/Fl;->b:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final o()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/Fl;->i:Lo/ams;

    sget-object v1, Lo/Fl;->b:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 21
    iget v0, p0, Lo/Fl;->a:I

    return v0
.end method

.method public b()V
    .locals 2

    .line 49
    invoke-virtual {p0}, Lo/Fl;->i()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final c(Ljava/lang/CharSequence;)V
    .locals 5

    .line 40
    invoke-direct {p0}, Lo/Fl;->o()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {p0}, Lo/Fl;->i()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "uiView.context"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 41
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->gA:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 40
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-direct {p0}, Lo/Fl;->o()Lo/ImageSwitcher;

    move-result-object p1

    invoke-virtual {p1, v4}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lo/Fl;->i()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 53
    invoke-virtual {p0}, Lo/Fl;->i()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final f()V
    .locals 3

    .line 28
    invoke-direct {p0}, Lo/Fl;->n()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {p0}, Lo/Fl;->i()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "uiView.context"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->gD:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final h()V
    .locals 2

    .line 32
    invoke-direct {p0}, Lo/Fl;->n()Lo/ImageSwitcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public i()Landroid/view/ViewGroup;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/Fl;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final j()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lo/Fl;->n()Lo/ImageSwitcher;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method
