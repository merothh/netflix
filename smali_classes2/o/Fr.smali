.class public final Lo/Fr;
.super Lo/VibrationEffect;
.source ""

# interfaces
.implements Lo/FA;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Fr$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Lo/DG;",
        ">;",
        "Lo/FA;"
    }
.end annotation


# static fields
.field public static final b:Lo/Fr$Application;


# instance fields
.field private final a:Lo/GridView;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Fr$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Fr$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/Fr;->b:Lo/Fr$Application;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    .line 21
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->S:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lo/GridView;

    iput-object p1, p0, Lo/Fr;->a:Lo/GridView;

    .line 23
    invoke-virtual {p0}, Lo/Fr;->j()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1}, Lo/GridView;->getId()I

    move-result p1

    iput p1, p0, Lo/Fr;->d:I

    .line 27
    invoke-virtual {p0}, Lo/Fr;->j()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1}, Lo/GridView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ViewUtils;->c(Landroid/content/Context;)I

    move-result p1

    .line 28
    invoke-virtual {p0}, Lo/Fr;->j()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0}, Lo/GridView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "uiView.context"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->X:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 29
    invoke-virtual {p0}, Lo/Fr;->j()Lo/GridView;

    move-result-object v1

    invoke-virtual {v1}, Lo/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    add-int/2addr p1, v0

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.android.widget.NetflixImageView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 23
    iget v0, p0, Lo/Fr;->d:I

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoTitle"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lo/Fr;->j()Lo/GridView;

    move-result-object v0

    new-instance v1, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    invoke-virtual {v1, p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    sget-object v1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {p1, v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/GridView;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 50
    invoke-virtual {p0}, Lo/Fr;->j()Lo/GridView;

    move-result-object p1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 37
    invoke-virtual {p0}, Lo/Fr;->j()Lo/GridView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/GridView;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lo/Fr;->j()Lo/GridView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/GridView;->setEnabled(Z)V

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lo/Fr;->j()Lo/GridView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lo/Fr;->j()Lo/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/GridView;->setVisibility(I)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lo/Fr;->j()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0}, Lo/GridView;->h()V

    return-void
.end method

.method public g()V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lo/Fr;->j()Lo/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/GridView;->setEnabled(Z)V

    return-void
.end method

.method public h()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()Lo/GridView;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/Fr;->a:Lo/GridView;

    return-object v0
.end method
