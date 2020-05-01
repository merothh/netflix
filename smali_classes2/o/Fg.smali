.class public final Lo/Fg;
.super Lo/VibrationEffect;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Fg$Activity;
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
.field public static final a:Lo/Fg$Activity;

.field static final synthetic c:[Lo/amT;


# instance fields
.field private final b:Lo/ams;

.field private final d:I

.field private final e:Landroid/view/ViewGroup;

.field private final g:Lo/Lw;

.field private final h:Lo/ams;

.field private final i:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/Fg;

    const/4 v1, 0x3

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "titleInfo"

    const-string v5, "getTitleInfo()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "progressView"

    const-string v5, "getProgressView()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "timeRemainingView"

    const-string v4, "getTimeRemainingView()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lo/Fg;->c:[Lo/amT;

    new-instance v0, Lo/Fg$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Fg$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/Fg;->a:Lo/Fg$Activity;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 6

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    .line 21
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->L:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/Fg;->e:Landroid/view/ViewGroup;

    .line 23
    invoke-virtual {p0}, Lo/Fg;->j()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    iput p1, p0, Lo/Fg;->d:I

    .line 25
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->aE:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Fg;->b:Lo/ams;

    .line 27
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->aF:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Fg;->i:Lo/ams;

    .line 29
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->aG:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Fg;->h:Lo/ams;

    .line 31
    new-instance p1, Lo/Lw;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lo/Lw;-><init>(IIFILo/amc;)V

    iput-object p1, p0, Lo/Fg;->g:Lo/Lw;

    return-void

    .line 21
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final f()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/Fg;->i:Lo/ams;

    sget-object v1, Lo/Fg;->c:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final h()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/Fg;->b:Lo/ams;

    sget-object v1, Lo/Fg;->c:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final i()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/Fg;->h:Lo/ams;

    sget-object v1, Lo/Fg;->c:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 23
    iget v0, p0, Lo/Fg;->d:I

    return v0
.end method

.method public b()V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lo/Fg;->j()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final b(Ljava/lang/String;FI)V
    .locals 2

    const-string v0, "titleInfoText"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lo/Fg;->h()Lo/ImageSwitcher;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p1, p0, Lo/Fg;->g:Lo/Lw;

    invoke-virtual {p1, p2}, Lo/Lw;->c(F)V

    .line 36
    invoke-direct {p0}, Lo/Fg;->f()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lo/Fg;->g:Lo/Lw;

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    if-lez p3, :cond_0

    .line 39
    invoke-direct {p0}, Lo/Fg;->h()Lo/ImageSwitcher;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 40
    invoke-direct {p0}, Lo/Fg;->i()Lo/ImageSwitcher;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 42
    invoke-virtual {p0}, Lo/Fg;->j()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p3, p2}, Lo/aeD;->e(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 47
    invoke-direct {p0}, Lo/Fg;->i()Lo/ImageSwitcher;

    move-result-object p3

    .line 45
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->ey:I

    invoke-static {v0}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v0

    const-string v1, "time"

    .line 46
    invoke-virtual {v0, v1, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p2

    .line 47
    invoke-virtual {p2}, Lo/VideoView2;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p3, p2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-direct {p0}, Lo/Fg;->h()Lo/ImageSwitcher;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 50
    invoke-direct {p0}, Lo/Fg;->i()Lo/ImageSwitcher;

    move-result-object p2

    invoke-virtual {p2, p3}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 53
    :goto_0
    invoke-virtual {p0}, Lo/Fg;->j()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lo/Fg;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public j()Landroid/view/ViewGroup;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/Fg;->e:Landroid/view/ViewGroup;

    return-object v0
.end method
