.class public final Lo/Fk;
.super Lo/VibrationEffect;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Fk$Application;
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
.field public static final e:Lo/Fk$Application;


# instance fields
.field private final b:I

.field private final c:Lo/ImageSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Fk$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Fk$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/Fk;->e:Lo/Fk$Application;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    .line 25
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->J:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lo/ImageSwitcher;

    iput-object p1, p0, Lo/Fk;->c:Lo/ImageSwitcher;

    .line 27
    invoke-virtual {p0}, Lo/Fk;->f()Lo/ImageSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lo/ImageSwitcher;->getId()I

    move-result p1

    iput p1, p0, Lo/Fk;->b:I

    return-void

    .line 25
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.android.widget.NetflixTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 27
    iget v0, p0, Lo/Fk;->b:I

    return v0
.end method

.method public b()V
    .locals 2

    .line 100
    invoke-virtual {p0}, Lo/Fk;->f()Lo/ImageSwitcher;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "copyrightText"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lo/Fk;->f()Lo/ImageSwitcher;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p0}, Lo/Fk;->f()Lo/ImageSwitcher;

    move-result-object v0

    new-instance v1, Lo/Fk$ActionBar;

    invoke-direct {v1, p0, p1}, Lo/Fk$ActionBar;-><init>(Lo/Fk;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 92
    invoke-virtual {p0}, Lo/Fk;->e()V

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lo/Fk;->f()Lo/ImageSwitcher;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 96
    invoke-virtual {p0}, Lo/Fk;->f()Lo/ImageSwitcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public f()Lo/ImageSwitcher;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/Fk;->c:Lo/ImageSwitcher;

    return-object v0
.end method
