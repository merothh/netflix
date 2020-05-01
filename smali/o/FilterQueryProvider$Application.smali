.class public final Lo/FilterQueryProvider$Application;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FilterQueryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "NetflixButtonAttributes"

    .line 37
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lo/FilterQueryProvider$Application;-><init>()V

    return-void
.end method

.method private final c(Landroid/content/res/TypedArray;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method static synthetic c(Lo/FilterQueryProvider$Application;Landroid/content/res/TypedArray;ILandroid/content/res/ColorStateList;ILjava/lang/Object;)Landroid/content/res/ColorStateList;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 45
    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    const-string p4, "ColorStateList.valueOf(Color.TRANSPARENT)"

    invoke-static {p3, p4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lo/FilterQueryProvider$Application;->c(Landroid/content/res/TypedArray;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)Lo/FilterQueryProvider;
    .locals 22

    move-object/from16 v0, p1

    const-string v1, "context"

    invoke-static {v0, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v1, Lo/IHwInterface$Fragment;->aC:[I

    move-object/from16 v2, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 59
    :try_start_0
    move-object/from16 v2, p0

    check-cast v2, Lo/FilterQueryProvider$Application;

    const-string v0, "typedArray"

    invoke-static {v1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lo/IHwInterface$Fragment;->aM:I

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lo/FilterQueryProvider$Application;->c(Lo/FilterQueryProvider$Application;Landroid/content/res/TypedArray;ILandroid/content/res/ColorStateList;ILjava/lang/Object;)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 60
    move-object/from16 v2, p0

    check-cast v2, Lo/FilterQueryProvider$Application;

    sget v4, Lo/IHwInterface$Fragment;->aG:I

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lo/FilterQueryProvider$Application;->c(Lo/FilterQueryProvider$Application;Landroid/content/res/TypedArray;ILandroid/content/res/ColorStateList;ILjava/lang/Object;)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 61
    new-instance v0, Lo/FilterQueryProvider;

    .line 62
    move-object/from16 v2, p0

    check-cast v2, Lo/FilterQueryProvider$Application;

    sget v4, Lo/IHwInterface$Fragment;->aN:I

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lo/FilterQueryProvider$Application;->c(Lo/FilterQueryProvider$Application;Landroid/content/res/TypedArray;ILandroid/content/res/ColorStateList;ILjava/lang/Object;)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 65
    move-object/from16 v2, p0

    check-cast v2, Lo/FilterQueryProvider$Application;

    sget v3, Lo/IHwInterface$Fragment;->aL:I

    invoke-direct {v2, v1, v3, v11}, Lo/FilterQueryProvider$Application;->c(Landroid/content/res/TypedArray;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 66
    sget v2, Lo/IHwInterface$Fragment;->aJ:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    .line 68
    sget v2, Lo/IHwInterface$Fragment;->aI:I

    const/4 v4, 0x1

    new-array v5, v4, [I

    const v6, 0x10100a7

    aput v6, v5, v3

    invoke-virtual {v10, v5, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    .line 67
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    .line 70
    sget v2, Lo/IHwInterface$Fragment;->aD:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    .line 71
    sget v2, Lo/IHwInterface$Fragment;->aQ:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    .line 72
    sget v2, Lo/IHwInterface$Fragment;->aK:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    .line 73
    sget v2, Lo/IHwInterface$Fragment;->aO:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/CharSequence;

    .line 74
    sget v2, Lo/IHwInterface$Fragment;->aH:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    .line 75
    sget v2, Lo/IHwInterface$Fragment;->aF:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v20

    .line 76
    sget v2, Lo/IHwInterface$Fragment;->aE:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    move-object v8, v0

    .line 61
    invoke-direct/range {v8 .. v21}, Lo/FilterQueryProvider;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;IIIIZLjava/lang/CharSequence;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public final e(Landroid/content/Context;I)Lo/FilterQueryProvider;
    .locals 36
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "context"

    invoke-static {v0, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance v1, Landroid/view/ContextThemeWrapper;

    move/from16 v2, p2

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 95
    sget v2, Lo/IHwInterface$ActionBar;->h:I

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 96
    sget v2, Lo/IHwInterface$ActionBar;->c:I

    const/4 v4, 0x1

    aput v2, v0, v4

    .line 97
    sget v2, Lo/IHwInterface$ActionBar;->o:I

    const/4 v5, 0x2

    aput v2, v0, v5

    .line 98
    sget v2, Lo/IHwInterface$ActionBar;->i:I

    const/4 v5, 0x3

    aput v2, v0, v5

    .line 99
    sget v2, Lo/IHwInterface$ActionBar;->e:I

    const/4 v6, 0x4

    aput v2, v0, v6

    .line 100
    sget v2, Lo/IHwInterface$ActionBar;->k:I

    const/4 v7, 0x5

    aput v2, v0, v7

    .line 101
    sget v2, Lo/IHwInterface$ActionBar;->g:I

    const/4 v8, 0x6

    aput v2, v0, v8

    .line 102
    sget v2, Lo/IHwInterface$ActionBar;->f:I

    const/4 v9, 0x7

    aput v2, v0, v9

    .line 103
    sget v2, Lo/IHwInterface$ActionBar;->a:I

    const/16 v10, 0x8

    aput v2, v0, v10

    .line 104
    sget v2, Lo/IHwInterface$ActionBar;->l:I

    const/16 v11, 0x9

    aput v2, v0, v11

    .line 105
    sget v2, Lo/IHwInterface$ActionBar;->j:I

    const/16 v12, 0xa

    aput v2, v0, v12

    .line 106
    sget v2, Lo/IHwInterface$ActionBar;->d:I

    const/16 v13, 0xb

    aput v2, v0, v13

    .line 107
    sget v2, Lo/IHwInterface$ActionBar;->b:I

    const/16 v14, 0xc

    aput v2, v0, v14

    .line 93
    invoke-virtual {v1, v0}, Landroid/view/ContextThemeWrapper;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 111
    :try_start_0
    move-object/from16 v15, p0

    check-cast v15, Lo/FilterQueryProvider$Application;

    const-string v0, "typedArray"

    invoke-static {v1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object/from16 v16, v1

    invoke-static/range {v15 .. v20}, Lo/FilterQueryProvider$Application;->c(Lo/FilterQueryProvider$Application;Landroid/content/res/TypedArray;ILandroid/content/res/ColorStateList;ILjava/lang/Object;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 112
    move-object/from16 v15, p0

    check-cast v15, Lo/FilterQueryProvider$Application;

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object/from16 v16, v1

    invoke-static/range {v15 .. v20}, Lo/FilterQueryProvider$Application;->c(Lo/FilterQueryProvider$Application;Landroid/content/res/TypedArray;ILandroid/content/res/ColorStateList;ILjava/lang/Object;)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 113
    new-instance v35, Lo/FilterQueryProvider;

    .line 115
    move-object/from16 v15, p0

    check-cast v15, Lo/FilterQueryProvider$Application;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object/from16 v16, v1

    invoke-static/range {v15 .. v20}, Lo/FilterQueryProvider$Application;->c(Lo/FilterQueryProvider$Application;Landroid/content/res/TypedArray;ILandroid/content/res/ColorStateList;ILjava/lang/Object;)Landroid/content/res/ColorStateList;

    move-result-object v22

    new-array v15, v4, [I

    const v16, 0x10100a7

    aput v16, v15, v3

    .line 118
    invoke-virtual {v0, v15, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v15

    invoke-virtual {v1, v5, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v26

    .line 119
    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v27

    .line 120
    invoke-virtual {v1, v7, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v28

    .line 121
    invoke-virtual {v1, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v29

    .line 122
    move-object/from16 v5, p0

    check-cast v5, Lo/FilterQueryProvider$Application;

    invoke-direct {v5, v1, v9, v2}, Lo/FilterQueryProvider$Application;->c(Landroid/content/res/TypedArray;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v25

    .line 123
    invoke-virtual {v1, v10, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v30

    .line 124
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v31, v5

    check-cast v31, Ljava/lang/CharSequence;

    .line 125
    invoke-virtual {v1, v12, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v32

    .line 126
    invoke-virtual {v1, v13, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v33

    .line 127
    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v34

    move-object/from16 v21, v35

    move-object/from16 v23, v0

    move-object/from16 v24, v2

    .line 113
    invoke-direct/range {v21 .. v34}, Lo/FilterQueryProvider;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;IIIIZLjava/lang/CharSequence;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v35

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method
