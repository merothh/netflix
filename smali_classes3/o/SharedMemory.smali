.class public final Lo/SharedMemory;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SharedMemory$Activity;,
        Lo/SharedMemory$StateListAnimator;,
        Lo/SharedMemory$Application;,
        Lo/SharedMemory$ActionBar;
    }
.end annotation


# static fields
.field public static final e:Lo/SharedMemory$ActionBar;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private final f:Landroid/util/SparseIntArray;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private final i:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lo/SharedMemory$Activity;

.field private final l:Landroid/view/View$OnClickListener;

.field private m:I

.field private n:I

.field private o:I

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lo/SharedMemory$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/SharedMemory$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/SharedMemory$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/SharedMemory;->e:Lo/SharedMemory$ActionBar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/SharedMemory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/SharedMemory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 86
    iput p3, p0, Lo/SharedMemory;->c:I

    .line 96
    invoke-virtual {p0}, Lo/SharedMemory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/IHwInterface$Activity;->t:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lo/SharedMemory;->d:I

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lo/SharedMemory;->b:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lo/SharedMemory;->j:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lo/SharedMemory;->g:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/SharedMemory;->i:Ljava/util/LinkedList;

    .line 115
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lo/SharedMemory;->f:Landroid/util/SparseIntArray;

    const v0, 0x7fffffff

    .line 117
    iput v0, p0, Lo/SharedMemory;->h:I

    const v0, 0x800003

    .line 125
    iput v0, p0, Lo/SharedMemory;->o:I

    .line 144
    new-instance v1, Lo/SharedMemory$TaskDescription;

    invoke-direct {v1, p0}, Lo/SharedMemory$TaskDescription;-><init>(Lo/SharedMemory;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lo/SharedMemory;->l:Landroid/view/View$OnClickListener;

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lo/SharedMemory;->r:Ljava/util/List;

    if-eqz p2, :cond_2

    .line 169
    sget-object v1, Lo/IHwInterface$Fragment;->bC:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 171
    :try_start_0
    sget p2, Lo/IHwInterface$Fragment;->bG:I

    iget v1, p0, Lo/SharedMemory;->h:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lo/SharedMemory;->h:I

    .line 172
    sget p2, Lo/IHwInterface$Fragment;->bI:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lo/SharedMemory;->m:I

    .line 173
    sget p2, Lo/IHwInterface$Fragment;->bO:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lo/SharedMemory;->n:I

    .line 174
    sget p2, Lo/IHwInterface$Fragment;->bJ:I

    iget v1, p0, Lo/SharedMemory;->c:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lo/SharedMemory;->c:I

    .line 175
    sget p2, Lo/IHwInterface$Fragment;->bE:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lo/SharedMemory;->setGravity(I)V

    .line 176
    sget p2, Lo/IHwInterface$Fragment;->bH:I

    iget v0, p0, Lo/SharedMemory;->d:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lo/SharedMemory;->d:I

    .line 178
    sget p2, Lo/IHwInterface$Fragment;->bF:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 179
    sget p2, Lo/IHwInterface$Fragment;->bF:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lo/SharedMemory;->setSeparatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    :cond_0
    iget p2, p0, Lo/SharedMemory;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p2, p3, :cond_1

    .line 186
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 183
    :cond_1
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Attribute tl_layoutRes is mandatory and should be a layout res id"

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    .line 186
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 25
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/SharedMemory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final d(I)Landroid/view/View;
    .locals 8

    .line 192
    invoke-direct {p0}, Lo/SharedMemory;->e()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_4

    .line 193
    invoke-virtual {p0}, Lo/SharedMemory;->b()Lo/SharedMemory$Activity;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo/SharedMemory$Activity;->d(I)Z

    move-result v0

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 194
    :goto_0
    invoke-virtual {p0, p1}, Lo/SharedMemory;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    .line 196
    invoke-virtual {p0}, Lo/SharedMemory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget v5, p0, Lo/SharedMemory;->c:I

    move-object v6, p0

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const/4 v5, -0x1

    .line 197
    new-instance v6, Lo/SharedMemory$Application;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Lo/SharedMemory$Application;-><init>(II)V

    check-cast v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v4, v5, v6, v3}, Lo/SharedMemory;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    :cond_1
    const-string v3, "tag"

    .line 200
    invoke-static {v4, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 201
    sget v2, Lo/IHwInterface$FragmentManager;->B:I

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "tag.findViewById<TextView>(R.id.text)"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lo/SharedMemory;->b()Lo/SharedMemory$Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3, p1}, Lo/SharedMemory$Activity;->b(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_3

    .line 202
    iget-object v1, p0, Lo/SharedMemory;->l:Landroid/view/View$OnClickListener;

    :cond_3
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    invoke-virtual {v4, v0}, Landroid/view/View;->setClickable(Z)V

    move-object v1, v4

    :cond_4
    return-object v1
.end method

.method private final e()I
    .locals 1

    .line 234
    invoke-virtual {p0}, Lo/SharedMemory;->b()Lo/SharedMemory$Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/SharedMemory$Activity;->e()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final synthetic e(Lo/SharedMemory;)Landroid/util/SparseIntArray;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/SharedMemory;->f:Landroid/util/SparseIntArray;

    return-object p0
.end method


# virtual methods
.method public final b()Lo/SharedMemory$Activity;
    .locals 1

    .line 135
    iget-object v0, p0, Lo/SharedMemory;->k:Lo/SharedMemory$Activity;

    return-object v0
.end method

.method protected b(Landroid/view/ViewGroup$LayoutParams;)Lo/SharedMemory$Application;
    .locals 2

    const-string v0, "p"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    new-instance v0, Lo/SharedMemory$Application;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, p1}, Lo/SharedMemory$Application;-><init>(II)V

    return-object v0
.end method

.method public c()Lo/SharedMemory$Application;
    .locals 2

    .line 434
    new-instance v0, Lo/SharedMemory$Application;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lo/SharedMemory$Application;-><init>(II)V

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    const-string v0, "p"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    instance-of p1, p1, Lo/SharedMemory$Application;

    return p1
.end method

.method public d(Landroid/util/AttributeSet;)Lo/SharedMemory$Application;
    .locals 3

    const-string v0, "attrs"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    new-instance v0, Lo/SharedMemory$Application;

    invoke-virtual {p0}, Lo/SharedMemory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lo/SharedMemory$Application;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final d()Lo/SharedMemory$StateListAnimator;
    .locals 1

    .line 163
    iget-object v0, p0, Lo/SharedMemory;->s:Lo/SharedMemory$StateListAnimator;

    return-object v0
.end method

.method public synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lo/SharedMemory;->c()Lo/SharedMemory$Application;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/SharedMemory;->d(Landroid/util/AttributeSet;)Lo/SharedMemory$Application;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    return-object p1
.end method

.method public synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/SharedMemory;->b(Landroid/view/ViewGroup$LayoutParams;)Lo/SharedMemory$Application;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lo/SharedMemory;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 216
    iget-object v1, p0, Lo/SharedMemory;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lo/SharedMemory;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 217
    iget-object v2, p0, Lo/SharedMemory;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 218
    iget-object v3, p0, Lo/SharedMemory;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 219
    iget-object v4, p0, Lo/SharedMemory;->j:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 221
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 222
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 224
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    add-int/2addr v5, v3

    add-int/2addr v6, v4

    .line 225
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 226
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 421
    invoke-static {p0}, Lo/BatteryStats;->a(Landroid/view/ViewGroup;)Ljava/lang/Iterable;

    move-result-object p1

    .line 465
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 466
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object p4, p3

    check-cast p4, Landroid/view/View;

    .line 421
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 p5, 0x8

    if-eq p4, p5, :cond_1

    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    if-eqz p4, :cond_0

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 467
    :cond_2
    check-cast p2, Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    .line 468
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 422
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    if-eqz p3, :cond_3

    check-cast p3, Lo/SharedMemory$Application;

    .line 424
    invoke-virtual {p3}, Lo/SharedMemory$Application;->e()I

    move-result p4

    invoke-virtual {p3}, Lo/SharedMemory$Application;->a()I

    move-result p5

    invoke-virtual {p3}, Lo/SharedMemory$Application;->e()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p3}, Lo/SharedMemory$Application;->a()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr p3, v1

    invoke-virtual {p2, p4, p5, v0, p3}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 422
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.android.widgetry.widget.TagsLayout.LayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 426
    :cond_4
    invoke-virtual {p0}, Lo/SharedMemory;->b()Lo/SharedMemory$Activity;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lo/SharedMemory;->r:Ljava/util/List;

    invoke-interface {p1, p2}, Lo/SharedMemory$Activity;->a(Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 238
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lo/SharedMemory;->getPaddingEnd()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lo/SharedMemory;->getPaddingStart()I

    move-result v4

    sub-int/2addr v3, v4

    .line 239
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 241
    invoke-virtual/range {p0 .. p0}, Lo/SharedMemory;->getLayoutDirection()I

    move-result v5

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 246
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lo/SharedMemory;->getPaddingTop()I

    move-result v8

    .line 248
    invoke-virtual/range {p0 .. p0}, Lo/SharedMemory;->getPaddingStart()I

    move-result v9

    .line 254
    invoke-direct/range {p0 .. p0}, Lo/SharedMemory;->e()I

    move-result v10

    .line 259
    iget-object v11, v0, Lo/SharedMemory;->j:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 260
    iget-object v11, v0, Lo/SharedMemory;->b:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 261
    iget-object v11, v0, Lo/SharedMemory;->g:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 265
    iget-object v11, v0, Lo/SharedMemory;->r:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    move v12, v8

    move v11, v9

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    const-string v7, "null cannot be cast to non-null type com.netflix.android.widgetry.widget.TagsLayout.LayoutParams"

    if-ge v8, v10, :cond_11

    move/from16 v16, v15

    .line 270
    iget v15, v0, Lo/SharedMemory;->h:I

    if-gt v9, v15, :cond_10

    .line 271
    invoke-direct {v0, v8}, Lo/SharedMemory;->d(I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_f

    move-object/from16 v17, v7

    .line 273
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v7

    move/from16 v18, v6

    const/16 v6, 0x8

    if-ne v7, v6, :cond_1

    move/from16 v19, v4

    move/from16 v4, v18

    goto/16 :goto_7

    .line 278
    :cond_1
    invoke-virtual {v0, v15, v1, v2}, Lo/SharedMemory;->measureChild(Landroid/view/View;II)V

    .line 280
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_e

    check-cast v6, Lo/SharedMemory$Application;

    .line 281
    iget-object v7, v0, Lo/SharedMemory;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 283
    :goto_2
    iget v2, v0, Lo/SharedMemory;->m:I

    .line 285
    iget-object v1, v0, Lo/SharedMemory;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 288
    iget v1, v0, Lo/SharedMemory;->d:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    add-int/2addr v2, v1

    :cond_3
    if-eqz v4, :cond_7

    .line 292
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v11

    invoke-virtual/range {p0 .. p0}, Lo/SharedMemory;->getPaddingEnd()I

    move-result v16

    add-int v1, v1, v16

    if-le v1, v3, :cond_7

    .line 293
    iget v1, v0, Lo/SharedMemory;->h:I

    if-ne v9, v1, :cond_6

    .line 297
    iget-object v1, v0, Lo/SharedMemory;->i:Ljava/util/LinkedList;

    invoke-virtual {v1, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v10, :cond_5

    .line 303
    iget-object v1, v0, Lo/SharedMemory;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lo/SharedMemory;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 304
    iget-object v1, v0, Lo/SharedMemory;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 305
    iget-object v1, v0, Lo/SharedMemory;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    move/from16 v16, v2

    move-object/from16 v2, v17

    goto/16 :goto_8

    :cond_5
    move/from16 v1, p1

    move v15, v2

    move/from16 v6, v18

    move/from16 v2, p2

    goto/16 :goto_1

    .line 312
    :cond_6
    iget v1, v0, Lo/SharedMemory;->n:I

    add-int/2addr v13, v1

    add-int/2addr v12, v13

    sub-int/2addr v11, v2

    .line 314
    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 315
    invoke-virtual/range {p0 .. p0}, Lo/SharedMemory;->getPaddingStart()I

    move-result v11

    add-int/lit8 v13, v9, 0x1

    move v14, v1

    move/from16 v19, v4

    move v1, v13

    const/4 v4, 0x1

    const/4 v13, 0x0

    goto :goto_3

    :cond_7
    move/from16 v19, v4

    move v1, v9

    const/4 v4, 0x1

    :goto_3
    if-ne v5, v4, :cond_8

    sub-int v4, v3, v11

    .line 321
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    sub-int v4, v4, v16

    invoke-virtual {v6, v4}, Lo/SharedMemory$Application;->c(I)V

    goto :goto_4

    .line 323
    :cond_8
    invoke-virtual {v6, v11}, Lo/SharedMemory$Application;->c(I)V

    .line 325
    :goto_4
    invoke-virtual {v6, v12}, Lo/SharedMemory$Application;->b(I)V

    .line 327
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v11, v4

    .line 328
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 330
    iget-object v4, v0, Lo/SharedMemory;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_b

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    sub-int v6, v3, v11

    .line 340
    iget v7, v0, Lo/SharedMemory;->m:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, v0, Lo/SharedMemory;->d:I

    add-int/2addr v6, v7

    move/from16 v16, v2

    goto :goto_5

    .line 342
    :cond_9
    iget v6, v0, Lo/SharedMemory;->m:I

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v11, v6

    move/from16 v16, v2

    iget v2, v0, Lo/SharedMemory;->d:I

    sub-int/2addr v6, v2

    sub-int/2addr v6, v7

    :goto_5
    add-int/lit8 v9, v9, 0x1

    if-ne v1, v9, :cond_a

    .line 348
    iget-object v2, v0, Lo/SharedMemory;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v0, Lo/SharedMemory;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 349
    iget-object v2, v0, Lo/SharedMemory;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    invoke-interface {v2, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 350
    iget-object v2, v0, Lo/SharedMemory;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v9

    invoke-interface {v2, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 354
    :cond_a
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v12

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int/lit8 v4, v10, -0x1

    if-ge v8, v4, :cond_c

    .line 359
    iget-object v4, v0, Lo/SharedMemory;->g:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v4, v0, Lo/SharedMemory;->j:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    move/from16 v16, v2

    .line 365
    :cond_c
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lo/SharedMemory;->b()Lo/SharedMemory$Activity;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-interface {v2, v8}, Lo/SharedMemory$Activity;->e(I)V

    .line 366
    :cond_d
    iget-object v2, v0, Lo/SharedMemory;->r:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v2, v0, Lo/SharedMemory;->i:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int v6, v18, v2

    .line 374
    iget-object v2, v0, Lo/SharedMemory;->f:Landroid/util/SparseIntArray;

    move/from16 v4, v18

    invoke-virtual {v2, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v8, v8, 0x1

    move/from16 v2, p2

    move v9, v1

    move/from16 v15, v16

    move/from16 v4, v19

    move/from16 v1, p1

    goto/16 :goto_1

    .line 280
    :cond_e
    new-instance v1, Lkotlin/TypeCastException;

    move-object/from16 v2, v17

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    move/from16 v19, v4

    move v4, v6

    :goto_7
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    move v6, v4

    move/from16 v15, v16

    move/from16 v4, v19

    goto/16 :goto_1

    :cond_10
    move-object v2, v7

    goto :goto_8

    :cond_11
    move-object v2, v7

    move/from16 v16, v15

    :goto_8
    sub-int v11, v11, v16

    .line 382
    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lo/SharedMemory;->getPaddingEnd()I

    move-result v4

    add-int/2addr v1, v4

    .line 383
    invoke-virtual/range {p0 .. p0}, Lo/SharedMemory;->getPaddingBottom()I

    move-result v4

    add-int/2addr v13, v4

    add-int/2addr v12, v13

    const/4 v4, 0x1

    if-ne v5, v4, :cond_13

    .line 385
    invoke-virtual/range {p0 .. p0}, Lo/SharedMemory;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x2

    if-ne v4, v6, :cond_13

    if-eq v3, v1, :cond_13

    sub-int v4, v3, v1

    .line 389
    invoke-static/range {p0 .. p0}, Lo/BatteryStats;->a(Landroid/view/ViewGroup;)Ljava/lang/Iterable;

    move-result-object v6

    .line 461
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 390
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-eqz v7, :cond_12

    check-cast v7, Lo/SharedMemory$Application;

    .line 391
    invoke-virtual {v7}, Lo/SharedMemory$Application;->e()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-virtual {v7, v9}, Lo/SharedMemory$Application;->c(I)V

    goto :goto_9

    .line 390
    :cond_12
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    if-lez v3, :cond_16

    if-ne v8, v10, :cond_16

    .line 397
    iget v2, v0, Lo/SharedMemory;->o:I

    const v4, 0x800003

    if-eq v2, v4, :cond_14

    const/4 v4, 0x3

    if-eq v2, v4, :cond_14

    .line 398
    sget-object v4, Lo/SharedMemory;->e:Lo/SharedMemory$ActionBar;

    invoke-static {v4, v2, v5, v1, v3}, Lo/SharedMemory$ActionBar;->d(Lo/SharedMemory$ActionBar;IIII)I

    move-result v6

    .line 399
    invoke-static/range {p0 .. p0}, Lo/BatteryStats;->a(Landroid/view/ViewGroup;)Ljava/lang/Iterable;

    move-result-object v2

    .line 463
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    int-to-float v4, v6

    .line 400
    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_a

    :cond_14
    const/4 v6, 0x0

    .line 403
    :cond_15
    iget-object v2, v0, Lo/SharedMemory;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_16

    .line 404
    iget-object v2, v0, Lo/SharedMemory;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 405
    iget-object v2, v0, Lo/SharedMemory;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_16

    .line 406
    iget-object v4, v0, Lo/SharedMemory;->b:Ljava/util/List;

    iget-object v5, v0, Lo/SharedMemory;->g:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 412
    :cond_16
    :goto_c
    iget-object v2, v0, Lo/SharedMemory;->i:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 414
    iget-object v2, v0, Lo/SharedMemory;->i:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Lo/SharedMemory;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_c

    :cond_17
    move/from16 v2, p1

    .line 417
    invoke-static {v1, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    move/from16 v2, p2

    invoke-static {v12, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lo/SharedMemory;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setAdapter(Lo/SharedMemory$Activity;)V
    .locals 3

    .line 137
    invoke-static {p0}, Lo/BatteryStats;->a(Landroid/view/ViewGroup;)Ljava/lang/Iterable;

    move-result-object v0

    .line 459
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    .line 138
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 140
    :cond_0
    iput-object p1, p0, Lo/SharedMemory;->k:Lo/SharedMemory$Activity;

    .line 141
    invoke-virtual {p0}, Lo/SharedMemory;->requestLayout()V

    return-void
.end method

.method public final setGravity(I)V
    .locals 0

    .line 127
    iput p1, p0, Lo/SharedMemory;->o:I

    .line 128
    invoke-virtual {p0}, Lo/SharedMemory;->requestLayout()V

    return-void
.end method

.method public final setHorizontalSpacing(I)V
    .locals 0

    .line 120
    iput p1, p0, Lo/SharedMemory;->m:I

    return-void
.end method

.method public final setMaxLines(I)V
    .locals 0

    .line 117
    iput p1, p0, Lo/SharedMemory;->h:I

    return-void
.end method

.method public final setOnTagClickListener(Lo/SharedMemory$StateListAnimator;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lo/SharedMemory;->s:Lo/SharedMemory$StateListAnimator;

    return-void
.end method

.method public final setSeparatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lo/SharedMemory;->a:Landroid/graphics/drawable/Drawable;

    .line 91
    iget-object p1, p0, Lo/SharedMemory;->a:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lo/SharedMemory;->setWillNotDraw(Z)V

    .line 92
    invoke-virtual {p0}, Lo/SharedMemory;->invalidate()V

    return-void
.end method

.method public final setSeparatorPadding(I)V
    .locals 0

    .line 96
    iput p1, p0, Lo/SharedMemory;->d:I

    return-void
.end method

.method public final setTagLayoutRes(I)V
    .locals 0

    .line 86
    iput p1, p0, Lo/SharedMemory;->c:I

    return-void
.end method

.method public final setVerticalSpacing(I)V
    .locals 0

    .line 123
    iput p1, p0, Lo/SharedMemory;->n:I

    return-void
.end method
