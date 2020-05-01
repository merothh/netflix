.class public final Lo/Fp;
.super Lo/VibrationEffect;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Fp$StateListAnimator;
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
.field public static final c:Lo/Fp$StateListAnimator;


# instance fields
.field private final d:Lo/Ql;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Fp$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Fp$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/Fp;->c:Lo/Fp$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 5

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    .line 21
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->Q:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Lo/Ql;

    iput-object p1, p0, Lo/Fp;->d:Lo/Ql;

    .line 23
    invoke-virtual {p0}, Lo/Fp;->i()Lo/Ql;

    move-result-object p1

    invoke-virtual {p1}, Lo/Ql;->getId()I

    move-result p1

    iput p1, p0, Lo/Fp;->e:I

    .line 26
    invoke-virtual {p0}, Lo/Fp;->i()Lo/Ql;

    move-result-object p1

    invoke-virtual {p1}, Lo/Ql;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 27
    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->X:I

    goto :goto_0

    .line 31
    :cond_0
    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->v:I

    .line 33
    :goto_0
    invoke-virtual {p0}, Lo/Fp;->i()Lo/Ql;

    move-result-object v3

    invoke-virtual {v3}, Lo/Ql;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "uiView.context"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v0, :cond_1

    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p0}, Lo/Fp;->i()Lo/Ql;

    move-result-object v0

    invoke-virtual {v0}, Lo/Ql;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->U:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 37
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    return-void

    .line 26
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.ui.offline.DownloadButton_Ab18255"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 23
    iget v0, p0, Lo/Fp;->e:I

    return v0
.end method

.method public b()V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lo/Fp;->i()Lo/Ql;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/Ql;->setVisibility(I)V

    return-void
.end method

.method public final b(Lo/As;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "playableForDownload"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lo/Fp;->i()Lo/Ql;

    move-result-object v0

    invoke-virtual {v0, p2}, Lo/Ql;->setSeasonNumberAbbreviation(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lo/Fp;->i()Lo/Ql;

    move-result-object p2

    invoke-virtual {p2, p3}, Lo/Ql;->setEpisodeNumber(I)V

    .line 48
    invoke-virtual {p0}, Lo/Fp;->i()Lo/Ql;

    move-result-object p2

    invoke-virtual {p2}, Lo/Ql;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 49
    const-class p3, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 47
    invoke-static {p2, p3}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p0}, Lo/Fp;->i()Lo/Ql;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lo/Ql;->setStateFromPlayable(Lo/As;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 53
    :cond_0
    invoke-virtual {p0}, Lo/Fp;->i()Lo/Ql;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lo/Ql;->setEnabled(Z)V

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lo/Fp;->i()Lo/Ql;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lo/Fp;->i()Lo/Ql;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/Ql;->setVisibility(I)V

    return-void
.end method

.method public i()Lo/Ql;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/Fp;->d:Lo/Ql;

    return-object v0
.end method
