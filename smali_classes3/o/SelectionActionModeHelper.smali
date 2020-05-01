.class public final Lo/SelectionActionModeHelper;
.super Landroidx/recyclerview/widget/RecyclerView$PendingIntent;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SelectionActionModeHelper$StateListAnimator;
    }
.end annotation


# static fields
.field public static final d:Lo/SelectionActionModeHelper$StateListAnimator;


# instance fields
.field private final a:Lo/SeekBar;

.field private final b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/SelectionActionModeHelper$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/SelectionActionModeHelper$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/SelectionActionModeHelper;->d:Lo/SelectionActionModeHelper$StateListAnimator;

    return-void
.end method

.method private constructor <init>(IIIIIIIILandroid/graphics/Typeface;ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 17

    move-object/from16 v0, p0

    .line 44
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;-><init>()V

    move-object/from16 v1, p11

    iput-object v1, v0, Lo/SelectionActionModeHelper;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x18

    int-to-float v1, v1

    .line 193
    sget-object v2, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 194
    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "Lookup.get<Context>().resources"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v4, 0x1

    .line 193
    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lo/SelectionActionModeHelper;->e:I

    .line 195
    sget-object v2, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 196
    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 195
    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v11, v1

    .line 87
    new-instance v1, Lo/SeekBar;

    const/4 v14, 0x0

    const/16 v15, 0x800

    const/16 v16, 0x0

    move-object v2, v1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p1

    move/from16 v6, p8

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v12, p9

    move/from16 v13, p10

    invoke-direct/range {v2 .. v16}, Lo/SeekBar;-><init>(IIIIIIIIILandroid/graphics/Typeface;IZILo/amc;)V

    iput-object v1, v0, Lo/SelectionActionModeHelper;->a:Lo/SeekBar;

    .line 102
    iget-object v1, v0, Lo/SelectionActionModeHelper;->a:Lo/SeekBar;

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v1, v2}, Lo/SeekBar;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v1, -0x1

    .line 105
    iput v1, v0, Lo/SelectionActionModeHelper;->c:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIIIIILandroid/graphics/Typeface;ILandroidx/recyclerview/widget/RecyclerView;Lo/amc;)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p11}, Lo/SelectionActionModeHelper;-><init>(IIIIIIIILandroid/graphics/Typeface;ILandroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public static final synthetic d(Lo/SelectionActionModeHelper;)Lo/SeekBar;
    .locals 0

    .line 32
    iget-object p0, p0, Lo/SelectionActionModeHelper;->a:Lo/SeekBar;

    return-object p0
.end method


# virtual methods
.method public final d(I)V
    .locals 1

    .line 107
    iget v0, p0, Lo/SelectionActionModeHelper;->c:I

    if-eq p1, v0, :cond_0

    .line 108
    iput p1, p0, Lo/SelectionActionModeHelper;->c:I

    .line 109
    iget-object v0, p0, Lo/SelectionActionModeHelper;->a:Lo/SeekBar;

    invoke-virtual {v0, p1}, Lo/SeekBar;->c(I)V

    :cond_0
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ComponentName;)V
    .locals 1

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "parent"

    invoke-static {p3, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "state"

    invoke-static {p4, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget p2, p0, Lo/SelectionActionModeHelper;->e:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "who"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lo/SelectionActionModeHelper;->a:Lo/SeekBar;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Lo/SelectionActionModeHelper;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    :cond_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ComponentName;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recyclerView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object p3

    .line 126
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    .line 127
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 128
    new-instance v2, Lcom/netflix/mediaclient/android/widget/carousel/CarouselPageIndicatorItemDecoration$onDrawOver$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/netflix/mediaclient/android/widget/carousel/CarouselPageIndicatorItemDecoration$onDrawOver$1;-><init>(Lo/SelectionActionModeHelper;Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/Canvas;)V

    check-cast v2, Lo/alO;

    .line 124
    invoke-static {p3, v0, v1, v2}, Lo/NfcA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lo/alO;)Ljava/lang/Object;

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    const-string p3, "who"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "what"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "who"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "what"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
