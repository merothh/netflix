.class public final Lo/Fu;
.super Lo/VibrationEffect;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Fu$StateListAnimator;
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
.field public static final c:Lo/Fu$StateListAnimator;


# instance fields
.field private final a:I

.field private final b:Lo/ImageSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Fu$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Fu$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/Fu;->c:Lo/Fu$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    .line 17
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->Y:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lo/ImageSwitcher;

    iput-object p1, p0, Lo/Fu;->b:Lo/ImageSwitcher;

    .line 19
    invoke-virtual {p0}, Lo/Fu;->f()Lo/ImageSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lo/ImageSwitcher;->getId()I

    move-result p1

    iput p1, p0, Lo/Fu;->a:I

    return-void

    .line 17
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.android.widget.NetflixTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 19
    iget v0, p0, Lo/Fu;->a:I

    return v0
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lo/Fu;->f()Lo/ImageSwitcher;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "videoTitle"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lo/Fu;->f()Lo/ImageSwitcher;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p0}, Lo/Fu;->f()Lo/ImageSwitcher;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public f()Lo/ImageSwitcher;
    .locals 1

    .line 16
    iget-object v0, p0, Lo/Fu;->b:Lo/ImageSwitcher;

    return-object v0
.end method
