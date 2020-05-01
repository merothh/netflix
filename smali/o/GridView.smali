.class public Lo/GridView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/GridView$TaskDescription;
    }
.end annotation


# static fields
.field public static final c:Z

.field public static final d:Lo/GridView$TaskDescription;

.field private static final n:Z

.field private static final o:Z


# instance fields
.field private a:Ljava/lang/Float;

.field private b:Z

.field private e:F

.field private final f:Lo/CursorFilter$StateListAnimator;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ShareActionProvider;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/DdmRegister;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/DdmRegister<",
            "Lo/SqliteWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lo/ShareActionProvider;

.field private j:Lo/DigitalClock;

.field private l:Lcom/netflix/android/imageloader/api/ImageDataSource;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lo/GridView$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/GridView$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/GridView;->d:Lo/GridView$TaskDescription;

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lo/GridView;->o:Z

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sput-boolean v1, Lo/GridView;->c:Z

    .line 57
    sput-boolean v3, Lo/GridView;->n:Z

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

    invoke-direct/range {v0 .. v5}, Lo/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

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

    invoke-direct/range {v0 .. v5}, Lo/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    new-instance p3, Lo/CursorFilter$StateListAnimator;

    invoke-direct {p3}, Lo/CursorFilter$StateListAnimator;-><init>()V

    iput-object p3, p0, Lo/GridView;->f:Lo/CursorFilter$StateListAnimator;

    .line 88
    sget-boolean p3, Lo/GridView;->o:Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p3, :cond_0

    new-instance p3, Lo/ShareActionProvider;

    move-object v3, p0

    check-cast v3, Landroid/view/View;

    invoke-direct {p3, v3, v1, v0, v2}, Lo/ShareActionProvider;-><init>(Landroid/view/View;ZILo/amc;)V

    goto :goto_0

    :cond_0
    move-object p3, v2

    :goto_0
    iput-object p3, p0, Lo/GridView;->i:Lo/ShareActionProvider;

    .line 93
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/List;

    iput-object p3, p0, Lo/GridView;->g:Ljava/util/List;

    if-eqz p2, :cond_7

    .line 99
    sget-object p3, Lo/IHwInterface$Fragment;->aP:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 101
    sget p3, Lo/IHwInterface$Fragment;->aZ:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 102
    sget p3, Lo/IHwInterface$Fragment;->aZ:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, v2

    .line 101
    :goto_1
    invoke-virtual {p0, p3}, Lo/GridView;->setAspectRatio(Ljava/lang/Float;)V

    .line 106
    sget p3, Lo/IHwInterface$Fragment;->ba:I

    iget-boolean v4, p0, Lo/GridView;->b:Z

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lo/GridView;->b:Z

    .line 107
    sget p3, Lo/IHwInterface$Fragment;->aW:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lo/GridView;->e:F

    .line 109
    move-object p3, v2

    check-cast p3, Lo/ShareActionProvider;

    .line 111
    sget v3, Lo/IHwInterface$Fragment;->aS:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    sget v3, Lo/IHwInterface$Fragment;->aS:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string p3, "it"

    .line 113
    invoke-static {v3, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v3, v1, v0, v2}, Lo/GridView;->e(Lo/GridView;Landroid/graphics/drawable/Drawable;IILjava/lang/Object;)V

    .line 114
    iget-object p3, p0, Lo/GridView;->g:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/ShareActionProvider;

    .line 117
    :cond_2
    sget v0, Lo/IHwInterface$Fragment;->aT:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/16 v2, 0x77

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 119
    sget v0, Lo/IHwInterface$Fragment;->aT:I

    .line 118
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p3, v0}, Lo/ShareActionProvider;->b(I)V

    .line 125
    :cond_3
    sget p3, Lo/IHwInterface$Fragment;->aU:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 126
    sget p3, Lo/IHwInterface$Fragment;->aU:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 127
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Lo/GridView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_4
    sget p3, Lo/IHwInterface$Fragment;->aR:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 131
    sget p3, Lo/IHwInterface$Fragment;->aR:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lo/GridView;->setForegroundGravity(I)V

    .line 133
    :cond_5
    sget p3, Lo/IHwInterface$Fragment;->aV:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 134
    sget p3, Lo/IHwInterface$Fragment;->aV:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p0, p3}, Lo/GridView;->setForegroundTintList(Landroid/content/res/ColorStateList;)V

    .line 137
    :cond_6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    :cond_7
    new-instance p2, Lo/GridView$1;

    invoke-direct {p2, p0}, Lo/GridView$1;-><init>(Lo/GridView;)V

    check-cast p2, Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, p2}, Lo/GridView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 171
    sget-boolean p2, Lo/GridView;->n:Z

    if-eqz p2, :cond_8

    .line 172
    new-instance p2, Lo/DayPickerView;

    invoke-direct {p2, p0}, Lo/DayPickerView;-><init>(Lo/GridView;)V

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2, v1}, Lo/GridView;->d(Landroid/graphics/drawable/Drawable;I)V

    .line 175
    :cond_8
    invoke-static {}, Lo/CursorToBulkCursorAdaptor;->b()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 176
    new-instance p2, Lo/SQLiteStatementInfo;

    invoke-virtual {p0}, Lo/GridView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-direct {p2, p3}, Lo/SQLiteStatementInfo;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {p2}, Lo/SQLiteStatementInfo;->q()Lo/SqliteWrapper;

    move-result-object p2

    .line 177
    invoke-virtual {p0}, Lo/GridView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p3

    const-string v0, "scaleType"

    invoke-static {p3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lo/FrameLayout;->c(Landroid/widget/ImageView$ScaleType;)Lo/SQLiteReadOnlyDatabaseException$Activity;

    move-result-object p3

    if-eqz p3, :cond_9

    const-string v0, "hierarchy"

    .line 179
    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lo/SqliteWrapper;->a(Lo/SQLiteReadOnlyDatabaseException$Activity;)V

    .line 181
    :cond_9
    check-cast p2, Lo/DdmHandleHeap;

    invoke-static {p2, p1}, Lo/DdmRegister;->c(Lo/DdmHandleHeap;Landroid/content/Context;)Lo/DdmRegister;

    move-result-object p1

    iput-object p1, p0, Lo/GridView;->h:Lo/DdmRegister;

    .line 182
    iget-object p1, p0, Lo/GridView;->h:Lo/DdmRegister;

    if-nez p1, :cond_a

    invoke-static {}, Lo/amh;->c()V

    :cond_a
    invoke-virtual {p1}, Lo/DdmRegister;->h()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_b

    invoke-static {}, Lo/amh;->c()V

    :cond_b
    const-string p2, "frescoDraweeHolder!!.topLevelDrawable!!"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p2, p0

    check-cast p2, Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_c
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 44
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 45
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic b(Lo/GridView;ZFILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 190
    iget-boolean p1, p0, Lo/GridView;->b:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 191
    iget p2, p0, Lo/GridView;->e:F

    :cond_1
    invoke-virtual {p0, p1, p2}, Lo/GridView;->a(ZF)V

    return-void

    .line 0
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateRoundedCornerParams"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final b(Ljava/util/List;Landroid/graphics/drawable/Drawable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ShareActionProvider;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            ")Z"
        }
    .end annotation

    .line 436
    check-cast p1, Ljava/lang/Iterable;

    .line 508
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ShareActionProvider;

    if-nez v1, :cond_1

    .line 437
    invoke-virtual {v2, p2}, Lo/ShareActionProvider;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static final synthetic c(Lo/GridView;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lo/GridView;->b:Z

    return p0
.end method

.method public static final synthetic d(Lo/GridView;)F
    .locals 0

    .line 42
    iget p0, p0, Lo/GridView;->e:F

    return p0
.end method

.method public static synthetic e(Lo/GridView;Landroid/graphics/drawable/Drawable;IILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x77

    .line 353
    :cond_0
    invoke-virtual {p0, p1, p2}, Lo/GridView;->d(Landroid/graphics/drawable/Drawable;I)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addOverlay"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Lo/DigitalClock;
    .locals 1

    .line 380
    iget-object v0, p0, Lo/GridView;->j:Lo/DigitalClock;

    return-object v0
.end method

.method public final a(ZF)V
    .locals 0

    .line 193
    iput-boolean p1, p0, Lo/GridView;->b:Z

    .line 194
    iput p2, p0, Lo/GridView;->e:F

    .line 195
    invoke-virtual {p0}, Lo/GridView;->invalidate()V

    return-void
.end method

.method public am_()V
    .locals 1

    .line 345
    iget-object v0, p0, Lo/GridView;->h:Lo/DdmRegister;

    if-nez v0, :cond_0

    invoke-static {}, Lo/amh;->c()V

    :cond_0
    invoke-virtual {v0}, Lo/DdmRegister;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b()Lo/DdmRegister;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/DdmRegister<",
            "Lo/SqliteWrapper;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lo/GridView;->h:Lo/DdmRegister;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    .line 339
    invoke-static {}, Lo/amh;->c()V

    :cond_0
    return-object v0

    .line 341
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->b()Lo/Serializable;

    move-result-object v0

    const-string v1, "context"

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->d()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 450
    invoke-virtual {p0}, Lo/GridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    const-class v2, Lo/Serializable;

    invoke-static {v0, v2}, Lo/TagTechnology;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Serializable;

    .line 450
    invoke-virtual {p1, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a(Lo/Serializable;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    .line 452
    :cond_0
    sget-object v0, Lo/FormatException;->c:Lo/FormatException$ActionBar;

    invoke-virtual {p0}, Lo/GridView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lo/FormatException$ActionBar;->a(Landroid/content/Context;)Lo/FormatException;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a()Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lo/FormatException;->c(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;)V

    return-void
.end method

.method public final d()I
    .locals 1

    .line 378
    iget v0, p0, Lo/GridView;->m:I

    return v0
.end method

.method public final d(Landroid/graphics/drawable/Drawable;I)V
    .locals 4

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lo/GridView;->g:Ljava/util/List;

    new-instance v1, Lo/ShareActionProvider;

    move-object v2, p0

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lo/ShareActionProvider;-><init>(Landroid/view/View;Z)V

    .line 355
    invoke-virtual {v1, p1}, Lo/ShareActionProvider;->b(Landroid/graphics/drawable/Drawable;)V

    .line 356
    invoke-virtual {v1, p2}, Lo/ShareActionProvider;->b(I)V

    .line 354
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-virtual {p0}, Lo/GridView;->invalidate()V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .line 444
    new-instance v0, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    invoke-virtual {v0, p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/GridView;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    return-void
.end method

.method public dispatchDrawableHotspotChanged(FF)V
    .locals 2

    .line 269
    iget-object v0, p0, Lo/GridView;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 505
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ShareActionProvider;

    .line 269
    invoke-virtual {v1, p1, p2}, Lo/ShareActionProvider;->b(FF)V

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lo/GridView;->i:Lo/ShareActionProvider;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lo/ShareActionProvider;->b(FF)V

    .line 271
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->dispatchDrawableHotspotChanged(FF)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->draw(Landroid/graphics/Canvas;)V

    .line 240
    sget-boolean v0, Lo/GridView;->o:Z

    if-nez v0, :cond_1

    .line 242
    iget-object v0, p0, Lo/GridView;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 497
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ShareActionProvider;

    .line 242
    invoke-virtual {v1, p1}, Lo/ShareActionProvider;->e(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, p0, Lo/GridView;->i:Lo/ShareActionProvider;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lo/ShareActionProvider;->e(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 2

    .line 209
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->drawableHotspotChanged(FF)V

    .line 210
    iget-object v0, p0, Lo/GridView;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 491
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ShareActionProvider;

    .line 210
    invoke-virtual {v1, p1, p2}, Lo/ShareActionProvider;->b(FF)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lo/GridView;->i:Lo/ShareActionProvider;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lo/ShareActionProvider;->b(FF)V

    :cond_1
    return-void
.end method

.method public drawableStateChanged()V
    .locals 2

    .line 263
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->drawableStateChanged()V

    .line 264
    iget-object v0, p0, Lo/GridView;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 503
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ShareActionProvider;

    .line 264
    invoke-virtual {v1}, Lo/ShareActionProvider;->b()V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lo/GridView;->i:Lo/ShareActionProvider;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/ShareActionProvider;->b()V

    :cond_1
    return-void
.end method

.method public synthetic e()Landroid/widget/ImageView;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lo/GridView;->g()Lo/GridView;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final e(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lo/GridView;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ShareActionProvider;

    .line 363
    invoke-virtual {v1}, Lo/ShareActionProvider;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    .line 364
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Lo/ShareActionProvider;->b(Landroid/graphics/drawable/Drawable;)V

    .line 365
    iget-object p1, p0, Lo/GridView;->g:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 369
    :cond_1
    invoke-virtual {p0}, Lo/GridView;->invalidate()V

    return-void
.end method

.method public final f()Lcom/netflix/android/imageloader/api/ImageDataSource;
    .locals 1

    .line 390
    iget-object v0, p0, Lo/GridView;->l:Lcom/netflix/android/imageloader/api/ImageDataSource;

    return-object v0
.end method

.method public g()Lo/GridView;
    .locals 0

    return-object p0
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 308
    sget-boolean v0, Lo/GridView;->o:Z

    if-eqz v0, :cond_0

    .line 309
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 311
    :cond_0
    iget-object v0, p0, Lo/GridView;->i:Lo/ShareActionProvider;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/ShareActionProvider;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public h()V
    .locals 3

    .line 404
    iget-object v0, p0, Lo/GridView;->j:Lo/DigitalClock;

    if-eqz v0, :cond_0

    .line 405
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 507
    const-class v1, Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    .line 405
    move-object v2, p0

    check-cast v2, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    iget-object v0, v0, Lo/DigitalClock;->c:Lcom/netflix/mediaclient/api/res/AssetType;

    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->a(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Lcom/netflix/mediaclient/api/res/AssetType;)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 0

    .line 400
    invoke-virtual {p0}, Lo/GridView;->l()V

    return-void
.end method

.method public final j()Z
    .locals 2

    .line 413
    invoke-virtual {p0}, Lo/GridView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 416
    :cond_0
    iget-object v0, p0, Lo/GridView;->j:Lo/DigitalClock;

    if-nez v0, :cond_1

    return v1

    .line 420
    :cond_1
    iget-boolean v0, v0, Lo/DigitalClock;->e:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 2

    .line 257
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->jumpDrawablesToCurrentState()V

    .line 258
    iget-object v0, p0, Lo/GridView;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 501
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ShareActionProvider;

    .line 258
    invoke-virtual {v1}, Lo/ShareActionProvider;->e()V

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lo/GridView;->i:Lo/ShareActionProvider;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/ShareActionProvider;->e()V

    :cond_1
    return-void
.end method

.method public final l()V
    .locals 3

    .line 457
    sget-object v0, Lo/FormatException;->c:Lo/FormatException$ActionBar;

    invoke-virtual {p0}, Lo/GridView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/FormatException$ActionBar;->a(Landroid/content/Context;)Lo/FormatException;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    invoke-interface {v0, v1}, Lo/FormatException;->c(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 326
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onAttachedToWindow()V

    .line 327
    iget-object v0, p0, Lo/GridView;->h:Lo/DdmRegister;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DdmRegister;->c()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 316
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onDetachedFromWindow()V

    .line 317
    iget-object v0, p0, Lo/GridView;->h:Lo/DdmRegister;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DdmRegister;->b()V

    :cond_0
    return-void
.end method

.method public onDrawForeground(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    sget-boolean v0, Lo/GridView;->o:Z

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lo/GridView;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 499
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ShareActionProvider;

    .line 250
    invoke-virtual {v1, p1}, Lo/ShareActionProvider;->e(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 251
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDrawForeground(Landroid/graphics/Canvas;)V

    .line 252
    iget-object v0, p0, Lo/GridView;->i:Lo/ShareActionProvider;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lo/ShareActionProvider;->e(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 1

    .line 331
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onFinishTemporaryDetach()V

    .line 334
    iget-object v0, p0, Lo/GridView;->h:Lo/DdmRegister;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DdmRegister;->c()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 224
    iget-object v0, p0, Lo/GridView;->f:Lo/CursorFilter$StateListAnimator;

    invoke-virtual {v0, p1}, Lo/CursorFilter$StateListAnimator;->a(I)V

    .line 225
    iget-object p1, p0, Lo/GridView;->f:Lo/CursorFilter$StateListAnimator;

    invoke-virtual {p1, p2}, Lo/CursorFilter$StateListAnimator;->d(I)V

    .line 226
    sget-object v0, Lo/CursorFilter;->b:Lo/CursorFilter;

    .line 227
    iget-object v1, p0, Lo/GridView;->f:Lo/CursorFilter$StateListAnimator;

    .line 228
    iget-boolean p1, p0, Lo/GridView;->b:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/GridView;->a:Ljava/lang/Float;

    :goto_0
    move-object v2, p1

    .line 229
    invoke-virtual {p0}, Lo/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 230
    invoke-virtual {p0}, Lo/GridView;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lo/GridView;->getPaddingRight()I

    move-result p2

    add-int v4, p1, p2

    .line 231
    invoke-virtual {p0}, Lo/GridView;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Lo/GridView;->getPaddingBottom()I

    move-result p2

    add-int v5, p1, p2

    .line 226
    invoke-virtual/range {v0 .. v5}, Lo/CursorFilter;->a(Lo/CursorFilter$StateListAnimator;Ljava/lang/Float;Landroid/view/ViewGroup$LayoutParams;II)V

    .line 233
    iget-object p1, p0, Lo/GridView;->f:Lo/CursorFilter$StateListAnimator;

    invoke-virtual {p1}, Lo/CursorFilter$StateListAnimator;->e()I

    move-result p1

    iget-object p2, p0, Lo/GridView;->f:Lo/CursorFilter$StateListAnimator;

    invoke-virtual {p2}, Lo/CursorFilter$StateListAnimator;->b()I

    move-result p2

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->onMeasure(II)V

    .line 234
    iget-object p1, p0, Lo/GridView;->g:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 495
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/ShareActionProvider;

    .line 234
    invoke-virtual {p0}, Lo/GridView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lo/GridView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lo/ShareActionProvider;->e(II)V

    goto :goto_1

    .line 235
    :cond_1
    iget-object p1, p0, Lo/GridView;->i:Lo/ShareActionProvider;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lo/GridView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Lo/GridView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lo/ShareActionProvider;->e(II)V

    :cond_2
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 1

    .line 321
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onStartTemporaryDetach()V

    .line 322
    iget-object v0, p0, Lo/GridView;->h:Lo/DdmRegister;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DdmRegister;->b()V

    :cond_0
    return-void
.end method

.method public final setAspectRatio(Ljava/lang/Float;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lo/GridView;->a:Ljava/lang/Float;

    .line 77
    invoke-virtual {p0}, Lo/GridView;->requestLayout()V

    return-void
.end method

.method public setAssetFetchLatency(I)V
    .locals 0

    .line 393
    iput p1, p0, Lo/GridView;->m:I

    return-void
.end method

.method public final setAssetFetchLatencyInMs(I)V
    .locals 0

    .line 378
    iput p1, p0, Lo/GridView;->m:I

    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 284
    iget-object v0, p0, Lo/GridView;->i:Lo/ShareActionProvider;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0, p1}, Lo/ShareActionProvider;->b(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 286
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setForegroundGravity(I)V
    .locals 1

    .line 290
    iget-object v0, p0, Lo/GridView;->i:Lo/ShareActionProvider;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0, p1}, Lo/ShareActionProvider;->b(I)V

    goto :goto_0

    .line 292
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setForegroundGravity(I)V

    :goto_0
    return-void
.end method

.method public setForegroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 296
    iget-object v0, p0, Lo/GridView;->i:Lo/ShareActionProvider;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0, p1}, Lo/ShareActionProvider;->d(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 298
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setForegroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method public setForegroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 302
    iget-object v0, p0, Lo/GridView;->i:Lo/ShareActionProvider;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    invoke-virtual {v0, p1}, Lo/ShareActionProvider;->c(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 304
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setForegroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :goto_1
    return-void
.end method

.method public setImageDataSource(Lcom/netflix/android/imageloader/api/ImageDataSource;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lo/GridView;->l:Lcom/netflix/android/imageloader/api/ImageDataSource;

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 349
    iget-object v0, p0, Lo/GridView;->h:Lo/DdmRegister;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    check-cast v1, Lo/DdmHandleExit;

    invoke-virtual {v0, v1}, Lo/DdmRegister;->e(Lo/DdmHandleExit;)V

    .line 350
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageLoaderInfo(Lo/DigitalClock;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lo/GridView;->j:Lo/DigitalClock;

    return-void
.end method

.method public final setInfo(Lo/DigitalClock;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lo/GridView;->j:Lo/DigitalClock;

    return-void
.end method

.method public final setRoundAsCircle(Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 200
    invoke-static {p0, p1, v0, v1, v2}, Lo/GridView;->b(Lo/GridView;ZFILjava/lang/Object;)V

    return-void
.end method

.method public final setRoundedCornerRadius(F)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    invoke-static {p0, v0, p1, v1, v2}, Lo/GridView;->b(Lo/GridView;ZFILjava/lang/Object;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    const-string v0, "who"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lo/GridView;->h:Lo/DdmRegister;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DdmRegister;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 278
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lo/GridView;->i:Lo/ShareActionProvider;

    if-eqz v0, :cond_2

    .line 279
    invoke-virtual {v0, p1}, Lo/ShareActionProvider;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eq v0, v1, :cond_4

    .line 280
    :cond_2
    iget-object v0, p0, Lo/GridView;->g:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lo/GridView;->b(Ljava/util/List;Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1
.end method
