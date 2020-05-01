.class public final Lo/Ft;
.super Lo/VibrationEffect;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ft$ActionBar;
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
.field public static final c:Lo/Ft$ActionBar;


# instance fields
.field private final b:Lo/ImageSwitcher;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Ft$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Ft$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/Ft;->c:Lo/Ft$ActionBar;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 5

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    .line 17
    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->b()Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type com.netflix.mediaclient.android.widget.NetflixTextView"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 18
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->W:I

    invoke-static {p1, v0, v4, v3, v2}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lo/ImageSwitcher;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_1
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->T:I

    invoke-static {p1, v0, v4, v3, v2}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lo/ImageSwitcher;

    .line 17
    :goto_0
    iput-object p1, p0, Lo/Ft;->b:Lo/ImageSwitcher;

    .line 24
    invoke-virtual {p0}, Lo/Ft;->i()Lo/ImageSwitcher;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 25
    invoke-virtual {p0}, Lo/Ft;->i()Lo/ImageSwitcher;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setMinLines(I)V

    .line 28
    invoke-virtual {p0}, Lo/Ft;->i()Lo/ImageSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lo/ImageSwitcher;->getId()I

    move-result p1

    iput p1, p0, Lo/Ft;->e:I

    return-void

    .line 20
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 28
    iget v0, p0, Lo/Ft;->e:I

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "synopsis"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lo/Ft;->i()Lo/ImageSwitcher;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {p0}, Lo/Ft;->i()Lo/ImageSwitcher;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setMinLines(I)V

    .line 33
    invoke-virtual {p0}, Lo/Ft;->i()Lo/ImageSwitcher;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lo/Ft;->i()Lo/ImageSwitcher;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final h()V
    .locals 2

    .line 37
    invoke-virtual {p0}, Lo/Ft;->i()Lo/ImageSwitcher;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public i()Lo/ImageSwitcher;
    .locals 1

    .line 17
    iget-object v0, p0, Lo/Ft;->b:Lo/ImageSwitcher;

    return-object v0
.end method
