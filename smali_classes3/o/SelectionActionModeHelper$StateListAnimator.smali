.class public final Lo/SelectionActionModeHelper$StateListAnimator;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SelectionActionModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "CarouselPageIndicatorItemDecoration"

    .line 46
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lo/SelectionActionModeHelper$StateListAnimator;-><init>()V

    return-void
.end method

.method public static synthetic e(Lo/SelectionActionModeHelper$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView;IIIIIIIIILandroid/graphics/Typeface;ILjava/lang/Object;)Lo/SelectionActionModeHelper;
    .locals 13

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 51
    sget v1, Lo/IHwInterface$PendingIntent;->c:I

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    move/from16 v2, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    const/16 v4, 0x7f

    const/16 v5, 0xd8

    .line 53
    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    goto :goto_2

    :cond_2
    move/from16 v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v3, p5

    :goto_3
    and-int/lit8 v5, v0, 0x20

    const/4 v6, 0x1

    const-string v7, "Lookup.get<Context>().resources"

    if-eqz v5, :cond_4

    const/16 v5, 0x8

    int-to-float v5, v5

    .line 193
    sget-object v8, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 194
    const-class v8, Landroid/content/Context;

    invoke-static {v8}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 193
    invoke-static {v6, v5, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    goto :goto_4

    :cond_4
    move/from16 v5, p6

    :goto_4
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_5

    const/4 v8, 0x3

    int-to-float v8, v8

    .line 195
    sget-object v9, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 196
    const-class v9, Landroid/content/Context;

    invoke-static {v9}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 195
    invoke-static {v6, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit16 v9, v0, 0x80

    const/4 v10, 0x2

    if-eqz v9, :cond_6

    int-to-float v9, v10

    .line 197
    sget-object v11, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 198
    const-class v11, Landroid/content/Context;

    invoke-static {v11}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 197
    invoke-static {v6, v9, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_7

    const/4 v11, 0x6

    int-to-float v11, v11

    .line 199
    sget-object v12, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 200
    const-class v12, Landroid/content/Context;

    invoke-static {v12}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v12, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 199
    invoke-static {v6, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    goto :goto_7

    :cond_7
    move/from16 v6, p9

    :goto_7
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_8

    const/16 v11, 0xc

    int-to-float v11, v11

    .line 201
    sget-object v12, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 202
    const-class v12, Landroid/content/Context;

    invoke-static {v12}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v12, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 201
    invoke-static {v10, v11, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    goto :goto_8

    :cond_8
    move/from16 v7, p10

    :goto_8
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_9

    .line 60
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 203
    const-class v10, Landroid/app/Activity;

    invoke-static {v0, v10}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 60
    invoke-static {v0}, Lo/TwoLineListItem;->d(Landroid/app/Activity;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_9

    :cond_9
    move-object/from16 v0, p11

    :goto_9
    move-object p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v1

    move/from16 p5, v2

    move/from16 p6, v4

    move/from16 p7, v3

    move/from16 p8, v5

    move/from16 p9, v8

    move/from16 p10, v9

    move/from16 p11, v6

    move/from16 p12, v7

    move-object/from16 p13, v0

    invoke-virtual/range {p2 .. p13}, Lo/SelectionActionModeHelper$StateListAnimator;->c(Landroidx/recyclerview/widget/RecyclerView;IIIIIIIIILandroid/graphics/Typeface;)Lo/SelectionActionModeHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c(Landroidx/recyclerview/widget/RecyclerView;IIIIIIIIILandroid/graphics/Typeface;)Lo/SelectionActionModeHelper;
    .locals 15

    move-object/from16 v13, p1

    const-string v0, "recyclerView"

    invoke-static {v13, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v14, Lo/SelectionActionModeHelper;

    const/4 v12, 0x0

    move-object v0, v14

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move-object/from16 v9, p11

    move/from16 v10, p2

    move-object/from16 v11, p1

    invoke-direct/range {v0 .. v12}, Lo/SelectionActionModeHelper;-><init>(IIIIIIIILandroid/graphics/Typeface;ILandroidx/recyclerview/widget/RecyclerView;Lo/amc;)V

    .line 74
    move-object v0, v14

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;

    invoke-virtual {v13, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$PendingIntent;)V

    return-object v14
.end method
