.class Lo/ZE$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MultiAutoCompleteTextView$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZE;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Lo/ZE;

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(Lo/ZE;)V
    .locals 1

    .line 211
    iput-object p1, p0, Lo/ZE$5;->b:Lo/ZE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iget-object p1, p0, Lo/ZE$5;->b:Lo/ZE;

    invoke-virtual {p1}, Lo/ZE;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/adq;->j(Landroid/content/Context;)I

    move-result p1

    iget-object v0, p0, Lo/ZE$5;->b:Lo/ZE;

    invoke-static {v0}, Lo/ZE;->a(Lo/ZE;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lo/ZE$5;->c:I

    .line 214
    iget p1, p0, Lo/ZE$5;->c:I

    int-to-float p1, p1

    const v0, 0x3faa9fbe    # 1.333f

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lo/ZE$5;->a:I

    .line 215
    iget-object p1, p0, Lo/ZE$5;->b:Lo/ZE;

    invoke-virtual {p1}, Lo/ZE;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lo/Zt$Activity;->a:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lo/ZE$5;->d:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 219
    new-instance v0, Lo/ResourceCursorTreeAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 220
    invoke-virtual {v0, p1}, Lo/ResourceCursorTreeAdapter;->setCropToPadding(Z)V

    .line 221
    iget p1, p0, Lo/ZE$5;->d:I

    invoke-virtual {v0, p1, p1, p1, p1}, Lo/ResourceCursorTreeAdapter;->setPadding(IIII)V

    .line 222
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Lo/ResourceCursorTreeAdapter;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 224
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    iget v1, p0, Lo/ZE$5;->c:I

    iget v2, p0, Lo/ZE$5;->a:I

    invoke-direct {p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Dialog;-><init>(II)V

    .line 225
    invoke-virtual {v0, p1}, Lo/ResourceCursorTreeAdapter;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method
