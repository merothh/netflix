.class public final Lcom/netflix/mediaclient/ui/notifications/multititle/RatingInfoTitle$ViewHolder$blurGradientDrawable$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OS$ActionBar;-><init>(Landroid/view/View;)V
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
.field final synthetic b:Lo/OS$ActionBar;


# direct methods
.method public constructor <init>(Lo/OS$ActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/notifications/multititle/RatingInfoTitle$ViewHolder$blurGradientDrawable$2;->b:Lo/OS$ActionBar;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e()Landroid/graphics/drawable/GradientDrawable;
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/notifications/multititle/RatingInfoTitle$ViewHolder$blurGradientDrawable$2;->b:Lo/OS$ActionBar;

    invoke-static {v0}, Lo/OS$ActionBar;->d(Lo/OS$ActionBar;)Lo/GridView;

    move-result-object v0

    invoke-virtual {v0}, Lo/GridView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "backgroundView.context"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 64
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 68
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 69
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 70
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 66
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    .line 76
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/notifications/multititle/RatingInfoTitle$ViewHolder$blurGradientDrawable$2;->e()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    return-object v0
.end method
