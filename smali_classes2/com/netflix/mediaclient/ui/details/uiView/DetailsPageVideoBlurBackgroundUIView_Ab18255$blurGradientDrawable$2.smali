.class public final Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoBlurBackgroundUIView_Ab18255$blurGradientDrawable$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Fh;-><init>(Landroid/view/ViewGroup;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Landroid/graphics/drawable/GradientDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/Fh;


# direct methods
.method public constructor <init>(Lo/Fh;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoBlurBackgroundUIView_Ab18255$blurGradientDrawable$2;->d:Lo/Fh;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Landroid/graphics/drawable/GradientDrawable;
    .locals 6

    .line 39
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 40
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoBlurBackgroundUIView_Ab18255$blurGradientDrawable$2;->d:Lo/Fh;

    invoke-virtual {v1}, Lo/Fh;->f()Lo/GridView;

    move-result-object v1

    invoke-virtual {v1}, Lo/GridView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "uiView.context"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$StateListAnimator;->p:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 41
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 44
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 48
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 49
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 50
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 46
    invoke-static {v1, v2, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v4, 0x0

    aput v1, v2, v4

    aput v0, v2, v3

    .line 56
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoBlurBackgroundUIView_Ab18255$blurGradientDrawable$2;->b()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    return-object v0
.end method
