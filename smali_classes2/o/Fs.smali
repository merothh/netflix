.class public final Lo/Fs;
.super Lo/VibrationEffect;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Fs$ActionBar;
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
.field public static final c:Lo/Fs$ActionBar;


# instance fields
.field private final a:Lo/ImageSwitcher;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Fs$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Fs$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/Fs;->c:Lo/Fs$ActionBar;

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
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->X:I

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
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->U:I

    invoke-static {p1, v0, v4, v3, v2}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lo/ImageSwitcher;

    .line 17
    :goto_0
    iput-object p1, p0, Lo/Fs;->a:Lo/ImageSwitcher;

    .line 23
    invoke-virtual {p0}, Lo/Fs;->j()Lo/ImageSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lo/ImageSwitcher;->getId()I

    move-result p1

    iput p1, p0, Lo/Fs;->e:I

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

    .line 23
    iget v0, p0, Lo/Fs;->e:I

    return v0
.end method

.method public final c(Ljava/lang/CharSequence;I)V
    .locals 2

    .line 30
    invoke-virtual {p0}, Lo/Fs;->j()Lo/ImageSwitcher;

    move-result-object v0

    const/4 v1, 0x0

    if-lez p2, :cond_0

    .line 31
    sget p2, Lcom/netflix/mediaclient/ui/R$Activity;->cQ:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 30
    :goto_0
    invoke-virtual {v0, p2, v1, v1, v1}, Lo/ImageSwitcher;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 37
    invoke-virtual {p0}, Lo/Fs;->j()Lo/ImageSwitcher;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p0}, Lo/Fs;->j()Lo/ImageSwitcher;

    move-result-object p1

    invoke-virtual {p1, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lo/Fs;->j()Lo/ImageSwitcher;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final h()V
    .locals 2

    .line 26
    invoke-virtual {p0}, Lo/Fs;->j()Lo/ImageSwitcher;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public j()Lo/ImageSwitcher;
    .locals 1

    .line 17
    iget-object v0, p0, Lo/Fs;->a:Lo/ImageSwitcher;

    return-object v0
.end method
