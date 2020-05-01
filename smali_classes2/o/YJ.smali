.class public final Lo/YJ;
.super Lo/YH;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/YJ$TaskDescription;
    }
.end annotation


# static fields
.field static final synthetic a:[Lo/amT;

.field public static final b:Lo/YJ$TaskDescription;

.field private static final f:Landroid/graphics/ColorMatrixColorFilter;


# instance fields
.field private final d:Landroid/view/ViewGroup;

.field private final g:Lo/ams;

.field private final h:Landroid/content/Context;

.field private final i:Lo/aka;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lo/YJ;

    invoke-static {v2}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v2

    const-string v3, "boxArt"

    const-string v4, "getBoxArt()Lcom/netflix/mediaclient/android/widget/NetflixImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v1

    check-cast v1, Lo/amT;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/YJ;->a:[Lo/amT;

    new-instance v0, Lo/YJ$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/YJ$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/YJ;->b:Lo/YJ$TaskDescription;

    .line 38
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    sput-object v1, Lo/YJ;->f:Landroid/graphics/ColorMatrixColorFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listItemView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1, p2}, Lo/YH;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lo/YJ;->h:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lo/YJ;->d:Landroid/view/ViewGroup;

    .line 32
    new-instance p1, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIView_Ab15161$containerId$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIView_Ab15161$containerId$2;-><init>(Lo/YJ;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/YJ;->i:Lo/aka;

    .line 34
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->oJ:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/YJ;->g:Lo/ams;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILo/amc;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 27
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->eY:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lo/YJ;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static final synthetic b(Lo/YJ;)Lo/GridView;
    .locals 0

    .line 25
    invoke-direct {p0}, Lo/YJ;->m()Lo/GridView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lo/YJ;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/YJ;->h:Landroid/content/Context;

    return-object p0
.end method

.method private final e(Lo/YN;)V
    .locals 2

    .line 98
    invoke-virtual {p0}, Lo/YJ;->i()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1}, Lo/YN;->h()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 99
    invoke-direct {p0}, Lo/YJ;->m()Lo/GridView;

    move-result-object v0

    invoke-virtual {p1}, Lo/YN;->h()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 100
    invoke-direct {p0}, Lo/YJ;->m()Lo/GridView;

    move-result-object v0

    .line 101
    new-instance v1, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 102
    invoke-virtual {p1}, Lo/YN;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 103
    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->bs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Ljava/lang/Integer;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 104
    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->bs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->d(Ljava/lang/Integer;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 105
    sget-object v1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {p1, v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 100
    invoke-virtual {v0, p1}, Lo/GridView;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    return-void
.end method

.method private final m()Lo/GridView;
    .locals 3

    iget-object v0, p0, Lo/YJ;->g:Lo/ams;

    sget-object v1, Lo/YJ;->a:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lo/YJ;->i:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lo/YJ;->i()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public d(Landroid/graphics/ColorMatrixColorFilter;)V
    .locals 1

    const-string v0, "greyFilter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lo/YJ;->m()Lo/GridView;

    move-result-object v0

    check-cast p1, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p1}, Lo/GridView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public d(Lo/YN;)V
    .locals 1

    const-string v0, "stateEvent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lo/YN;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lo/YJ;->f:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {p0, v0}, Lo/YJ;->d(Landroid/graphics/ColorMatrixColorFilter;)V

    .line 45
    :cond_0
    invoke-direct {p0, p1}, Lo/YJ;->e(Lo/YN;)V

    return-void
.end method

.method public e(ILo/Yn;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "feedItemModel"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lomoId"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lo/YJ;->i()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v7, Lo/YJ$Application;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lo/YJ$Application;-><init>(Lo/YJ;Lo/Yn;ILjava/lang/String;Ljava/lang/String;)V

    check-cast v7, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 50
    invoke-virtual {p0}, Lo/YJ;->j()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 51
    :cond_0
    invoke-direct {p0}, Lo/YJ;->m()Lo/GridView;

    move-result-object v0

    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Lo/GridView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public i()Landroid/view/ViewGroup;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/YJ;->d:Landroid/view/ViewGroup;

    return-object v0
.end method
