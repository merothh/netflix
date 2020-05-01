.class public final Lo/RadioButton;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/RadioButton$ActionBar;,
        Lo/RadioButton$Application;
    }
.end annotation


# static fields
.field public static final d:Lo/RadioButton$Application;

.field static final synthetic e:[Lo/amT;

.field private static final u:Landroid/view/animation/Interpolator;

.field private static final x:Landroid/view/animation/Interpolator;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final f:Lo/ams;

.field private final g:Lo/ams;

.field private h:I

.field private final i:Lo/ams;

.field private j:Lo/RadioButton$ActionBar;

.field private final k:F

.field private l:Landroid/animation/AnimatorSet;

.field private final m:Ljava/lang/CharSequence;

.field private final n:Ljava/lang/CharSequence;

.field private final o:Ljava/lang/CharSequence;

.field private final p:I

.field private final q:Landroid/graphics/drawable/Drawable;

.field private final r:Ljava/lang/CharSequence;

.field private final s:Landroid/graphics/drawable/Drawable;

.field private final t:Ljava/lang/CharSequence;

.field private final w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/RadioButton;

    const/4 v1, 0x3

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "button"

    const-string v5, "getButton()Landroid/widget/ImageButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "label"

    const-string v5, "getLabel()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "circle"

    const-string v4, "getCircle()Landroid/view/View;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lo/RadioButton;->e:[Lo/amT;

    new-instance v0, Lo/RadioButton$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/RadioButton$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/RadioButton;->d:Lo/RadioButton$Application;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3e428f5c    # 0.19f

    const v2, 0x3e6147ae    # 0.22f

    .line 64
    invoke-static {v1, v0, v2, v0}, Lo/ObjectOutput;->e(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    sput-object v1, Lo/RadioButton;->u:Landroid/view/animation/Interpolator;

    const v1, 0x3e6b851f    # 0.23f

    const v2, 0x3ea3d70a    # 0.32f

    .line 65
    invoke-static {v1, v0, v2, v0}, Lo/ObjectOutput;->e(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lo/RadioButton;->x:Landroid/view/animation/Interpolator;

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

    invoke-direct/range {v0 .. v5}, Lo/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

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

    invoke-direct/range {v0 .. v5}, Lo/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const-string v0, "seconds"

    const-string v1, "context"

    invoke-static {p1, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 98
    iput p3, p0, Lo/RadioButton;->c:I

    .line 101
    iput p3, p0, Lo/RadioButton;->b:I

    const/16 v1, 0x65

    .line 104
    iput v1, p0, Lo/RadioButton;->a:I

    .line 106
    sget v2, Lo/IHwInterface$FragmentManager;->r:I

    invoke-static {p0, v2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object v2

    iput-object v2, p0, Lo/RadioButton;->f:Lo/ams;

    .line 108
    sget v2, Lo/IHwInterface$FragmentManager;->s:I

    invoke-static {p0, v2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object v2

    iput-object v2, p0, Lo/RadioButton;->g:Lo/ams;

    .line 110
    sget v2, Lo/IHwInterface$FragmentManager;->p:I

    invoke-static {p0, v2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object v2

    iput-object v2, p0, Lo/RadioButton;->i:Lo/ams;

    .line 118
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lo/RadioButton;->l:Landroid/animation/AnimatorSet;

    .line 135
    sget v2, Lo/IHwInterface$LoaderManager;->g:I

    move-object v3, p0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {p1, v2, v3}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 137
    invoke-virtual {p0}, Lo/RadioButton;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lo/IHwInterface$Fragment;->bn:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 139
    :try_start_0
    sget v2, Lo/IHwInterface$Fragment;->bl:I

    const/16 v3, 0xa

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lo/RadioButton;->p:I

    .line 140
    iget v2, p0, Lo/RadioButton;->p:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iput-object v2, p0, Lo/RadioButton;->t:Ljava/lang/CharSequence;

    .line 142
    sget v2, Lo/IHwInterface$PendingIntent;->f:I

    invoke-static {v2}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v2

    .line 143
    iget v3, p0, Lo/RadioButton;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v2

    .line 144
    invoke-virtual {v2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iput-object v2, p0, Lo/RadioButton;->n:Ljava/lang/CharSequence;

    .line 146
    sget v2, Lo/IHwInterface$PendingIntent;->h:I

    invoke-static {v2}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v2

    .line 147
    iget v3, p0, Lo/RadioButton;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v2

    .line 148
    invoke-virtual {v2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iput-object v2, p0, Lo/RadioButton;->m:Ljava/lang/CharSequence;

    .line 150
    sget v2, Lo/IHwInterface$PendingIntent;->g:I

    invoke-static {v2}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v2

    .line 151
    iget v3, p0, Lo/RadioButton;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v2

    .line 152
    invoke-virtual {v2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iput-object v2, p0, Lo/RadioButton;->r:Ljava/lang/CharSequence;

    .line 154
    sget v2, Lo/IHwInterface$PendingIntent;->j:I

    invoke-static {v2}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v2

    .line 155
    iget v3, p0, Lo/RadioButton;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lo/RadioButton;->o:Ljava/lang/CharSequence;

    .line 158
    sget v0, Lo/IHwInterface$Fragment;->bs:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lo/RadioButton;->b:I

    .line 159
    iget v0, p0, Lo/RadioButton;->b:I

    if-ne v0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x66

    :goto_0
    iput v1, p0, Lo/RadioButton;->a:I

    .line 160
    iget v0, p0, Lo/RadioButton;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "null cannot be cast to non-null type android.graphics.drawable.Drawable"

    if-eq v0, v1, :cond_4

    if-ne v0, p3, :cond_3

    .line 162
    :try_start_1
    invoke-virtual {p0}, Lo/RadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/IHwInterface$Activity;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 164
    invoke-direct {p0}, Lo/RadioButton;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 165
    invoke-direct {p0}, Lo/RadioButton;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 167
    invoke-virtual {p0}, Lo/RadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/IHwInterface$Activity;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 169
    invoke-direct {p0}, Lo/RadioButton;->a()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 170
    invoke-direct {p0}, Lo/RadioButton;->a()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 172
    invoke-virtual {p0}, Lo/RadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/IHwInterface$Activity;->i:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 173
    invoke-direct {p0}, Lo/RadioButton;->a()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 175
    invoke-virtual {p0}, Lo/RadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/IHwInterface$Activity;->n:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 176
    invoke-direct {p0}, Lo/RadioButton;->c()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lo/ImageSwitcher;->setTextSize(IF)V

    .line 178
    invoke-direct {p0}, Lo/RadioButton;->c()Lo/ImageSwitcher;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0}, Lo/RadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lo/IHwInterface$Activity;->m:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 517
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 519
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 520
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 522
    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 181
    sget v0, Lo/IHwInterface$TaskDescription;->s:I

    .line 179
    invoke-static {p1, v0}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lo/RadioButton;->q:Landroid/graphics/drawable/Drawable;

    .line 185
    sget v0, Lo/IHwInterface$TaskDescription;->n:I

    .line 183
    invoke-static {p1, v0}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lo/RadioButton;->s:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 179
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 214
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p3, "should not happen as SeekButton_sb_size is enum"

    invoke-direct {p1, p3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 189
    :cond_4
    invoke-virtual {p0}, Lo/RadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/IHwInterface$Activity;->j:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 191
    invoke-direct {p0}, Lo/RadioButton;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 192
    invoke-direct {p0}, Lo/RadioButton;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 194
    invoke-virtual {p0}, Lo/RadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/IHwInterface$Activity;->f:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 196
    invoke-direct {p0}, Lo/RadioButton;->a()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 197
    invoke-direct {p0}, Lo/RadioButton;->a()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 199
    invoke-virtual {p0}, Lo/RadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/IHwInterface$Activity;->h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 201
    invoke-direct {p0}, Lo/RadioButton;->a()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 203
    invoke-virtual {p0}, Lo/RadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/IHwInterface$Activity;->o:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 204
    invoke-direct {p0}, Lo/RadioButton;->c()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lo/ImageSwitcher;->setTextSize(IF)V

    .line 205
    invoke-static {}, Lo/adu;->d()Z

    move-result v0

    if-nez v0, :cond_5

    .line 207
    invoke-direct {p0}, Lo/RadioButton;->c()Lo/ImageSwitcher;

    move-result-object v0

    .line 524
    const-class v1, Landroid/app/Activity;

    invoke-static {p1, v1}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 207
    invoke-static {v1}, Lo/TwoLineListItem;->a(Landroid/app/Activity;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setTypeface(Landroid/graphics/Typeface;)V

    .line 210
    :cond_5
    invoke-direct {p0}, Lo/RadioButton;->c()Lo/ImageSwitcher;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0}, Lo/RadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lo/IHwInterface$Activity;->l:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 525
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 527
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 528
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 530
    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 211
    sget v0, Lo/IHwInterface$TaskDescription;->p:I

    invoke-static {p1, v0}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_9

    iput-object v0, p0, Lo/RadioButton;->q:Landroid/graphics/drawable/Drawable;

    .line 212
    sget v0, Lo/IHwInterface$TaskDescription;->k:I

    invoke-static {p1, v0}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_8

    iput-object v0, p0, Lo/RadioButton;->s:Landroid/graphics/drawable/Drawable;

    .line 216
    :goto_1
    sget v0, Lo/IHwInterface$Fragment;->bm:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lo/RadioButton;->w:Z

    .line 218
    invoke-virtual {p0}, Lo/RadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/IHwInterface$Activity;->k:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lo/RadioButton;->k:F

    .line 220
    invoke-virtual {p0, v2}, Lo/RadioButton;->setClipChildren(Z)V

    .line 223
    new-instance v0, Lo/RadioButton$3;

    invoke-direct {v0, p0}, Lo/RadioButton$3;-><init>(Lo/RadioButton;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lo/RadioButton;->post(Ljava/lang/Runnable;)Z

    .line 252
    sget v0, Lo/IHwInterface$Fragment;->bo:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/RadioButton;->setMode(I)V

    .line 254
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v1, Lo/IHwInterface$ActionBar;->q:I

    invoke-virtual {p1, v1, v0, p3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 256
    invoke-direct {p0}, Lo/RadioButton;->a()Landroid/widget/ImageButton;

    move-result-object p1

    iget p3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 259
    :cond_6
    sget p1, Lo/IHwInterface$Fragment;->bp:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 261
    invoke-direct {p0}, Lo/RadioButton;->a()Landroid/widget/ImageButton;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 262
    invoke-direct {p0}, Lo/RadioButton;->c()Lo/ImageSwitcher;

    move-result-object p3

    invoke-virtual {p3, p1}, Lo/ImageSwitcher;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :cond_7
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 212
    :cond_8
    :try_start_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 211
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 265
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 36
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a()Landroid/widget/ImageButton;
    .locals 3

    iget-object v0, p0, Lo/RadioButton;->f:Lo/ams;

    sget-object v1, Lo/RadioButton;->e:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    return-object v0
.end method

.method public static final synthetic a(Lo/RadioButton;)Lo/ImageSwitcher;
    .locals 0

    .line 36
    invoke-direct {p0}, Lo/RadioButton;->c()Lo/ImageSwitcher;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lo/alB;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alB<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 396
    iget v1, v0, Lo/RadioButton;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/high16 v4, 0x42340000    # 45.0f

    .line 398
    iget v5, v0, Lo/RadioButton;->k:F

    if-eqz v1, :cond_1

    const/high16 v4, -0x3dcc0000    # -45.0f

    :cond_1
    if-eqz v1, :cond_2

    neg-float v5, v5

    :cond_2
    if-eqz v1, :cond_3

    .line 401
    iget-object v1, v0, Lo/RadioButton;->r:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lo/RadioButton;->o:Ljava/lang/CharSequence;

    .line 403
    :goto_1
    invoke-direct/range {p0 .. p0}, Lo/RadioButton;->a()Landroid/widget/ImageButton;

    move-result-object v6

    const/4 v7, 0x2

    new-array v8, v7, [Landroid/animation/PropertyValuesHolder;

    .line 404
    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v10, v2, [F

    const v11, 0x3f666666    # 0.9f

    aput v11, v10, v3

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    aput-object v9, v8, v3

    .line 405
    sget-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v10, v2, [F

    aput v11, v10, v3

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    aput-object v9, v8, v2

    .line 403
    invoke-static {v6, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x64

    .line 405
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-string v10, "ObjectAnimator.ofPropert\u2026Duration(DURATION_MS_100)"

    invoke-static {v6, v10}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    invoke-direct/range {p0 .. p0}, Lo/RadioButton;->c()Lo/ImageSwitcher;

    move-result-object v10

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v7, [F

    fill-array-data v12, :array_0

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-string v11, "ObjectAnimator.ofFloat(l\u2026Duration(DURATION_MS_100)"

    invoke-static {v10, v11}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    invoke-direct/range {p0 .. p0}, Lo/RadioButton;->a()Landroid/widget/ImageButton;

    move-result-object v12

    new-array v13, v7, [Landroid/animation/PropertyValuesHolder;

    .line 410
    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v15, v2, [F

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v15, v3

    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    aput-object v14, v13, v3

    .line 411
    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v2, [F

    aput v16, v15, v3

    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    aput-object v14, v13, v2

    .line 409
    invoke-static {v12, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    const-wide/16 v13, 0x15e

    .line 411
    invoke-virtual {v12, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v12

    const-string v15, "ObjectAnimator.ofPropert\u2026Duration(DURATION_MS_350)"

    invoke-static {v12, v15}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    invoke-direct/range {p0 .. p0}, Lo/RadioButton;->a()Landroid/widget/ImageButton;

    move-result-object v15

    sget-object v13, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v14, v7, [F

    const/16 v17, 0x0

    aput v17, v14, v3

    aput v4, v14, v2

    invoke-static {v15, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    const-wide/16 v14, 0x96

    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v13

    const-string v8, "ObjectAnimator.ofFloat(b\u2026Duration(DURATION_MS_150)"

    invoke-static {v13, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    sget-object v8, Lo/RadioButton;->u:Landroid/view/animation/Interpolator;

    check-cast v8, Landroid/animation/TimeInterpolator;

    invoke-virtual {v13, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 416
    invoke-direct/range {p0 .. p0}, Lo/RadioButton;->a()Landroid/widget/ImageButton;

    move-result-object v8

    sget-object v9, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v14, v7, [F

    aput v4, v14, v3

    aput v17, v14, v2

    invoke-static {v8, v9, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v8, 0x2ee

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-string v14, "ObjectAnimator.ofFloat(b\u2026Duration(DURATION_MS_750)"

    invoke-static {v4, v14}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    sget-object v14, Lo/RadioButton;->u:Landroid/view/animation/Interpolator;

    check-cast v14, Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 419
    invoke-direct/range {p0 .. p0}, Lo/RadioButton;->c()Lo/ImageSwitcher;

    move-result-object v14

    sget-object v15, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v2, [F

    aput v5, v7, v3

    invoke-static {v14, v15, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-string v7, "ObjectAnimator.ofFloat(l\u2026Duration(DURATION_MS_750)"

    invoke-static {v5, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    sget-object v7, Lo/RadioButton;->x:Landroid/view/animation/Interpolator;

    check-cast v7, Landroid/animation/TimeInterpolator;

    invoke-virtual {v5, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 421
    new-instance v7, Lo/RadioButton$TaskDescription;

    invoke-direct {v7, v0, v1}, Lo/RadioButton$TaskDescription;-><init>(Lo/RadioButton;Ljava/lang/CharSequence;)V

    check-cast v7, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v5, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 427
    invoke-direct/range {p0 .. p0}, Lo/RadioButton;->c()Lo/ImageSwitcher;

    move-result-object v1

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v15, v14, [F

    fill-array-data v15, :array_1

    invoke-static {v1, v7, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v14, 0x96

    invoke-virtual {v1, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v7, "ObjectAnimator.ofFloat(l\u2026Duration(DURATION_MS_150)"

    invoke-static {v1, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    new-instance v14, Lo/RadioButton$StateListAnimator;

    move-object/from16 v15, p1

    invoke-direct {v14, v0, v15}, Lo/RadioButton$StateListAnimator;-><init>(Lo/RadioButton;Lo/alB;)V

    check-cast v14, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 438
    invoke-direct/range {p0 .. p0}, Lo/RadioButton;->c()Lo/ImageSwitcher;

    move-result-object v14

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v9, v8, [F

    fill-array-data v9, :array_2

    invoke-static {v14, v15, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v14, 0x96

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-static {v9, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    invoke-direct/range {p0 .. p0}, Lo/RadioButton;->c()Lo/ImageSwitcher;

    move-result-object v7

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v15, v8, [F

    fill-array-data v15, :array_3

    invoke-static {v7, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v14, 0x64

    invoke-virtual {v7, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-static {v7, v11}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v14, 0x50

    .line 441
    invoke-virtual {v7, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 443
    invoke-direct/range {p0 .. p0}, Lo/RadioButton;->c()Lo/ImageSwitcher;

    move-result-object v11

    new-array v14, v8, [Landroid/animation/PropertyValuesHolder;

    .line 444
    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v15, v2, [F

    const v18, 0x3fb33333    # 1.4f

    aput v18, v15, v3

    invoke-static {v8, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    aput-object v8, v14, v3

    .line 445
    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v2, [F

    aput v18, v15, v3

    invoke-static {v8, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v14, v2

    .line 443
    invoke-static {v11, v14}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v14, 0x2ee

    .line 445
    invoke-virtual {v2, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v3, "ObjectAnimator.ofPropert\u2026Duration(DURATION_MS_750)"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    sget-object v3, Lo/RadioButton;->x:Landroid/view/animation/Interpolator;

    check-cast v3, Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 448
    invoke-direct/range {p0 .. p0}, Lo/RadioButton;->i()Landroid/view/View;

    move-result-object v3

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v11, 0x2

    new-array v14, v11, [F

    fill-array-data v14, :array_4

    invoke-static {v3, v8, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v14, 0x64

    invoke-virtual {v3, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-string v8, "ObjectAnimator.ofFloat(c\u2026Duration(DURATION_MS_100)"

    invoke-static {v3, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    new-instance v8, Lo/RadioButton$Activity;

    invoke-direct {v8, v0}, Lo/RadioButton$Activity;-><init>(Lo/RadioButton;)V

    check-cast v8, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 459
    invoke-direct/range {p0 .. p0}, Lo/RadioButton;->i()Landroid/view/View;

    move-result-object v8

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_5

    invoke-static {v8, v11, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v14, 0x15e

    invoke-virtual {v8, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-string v11, "ObjectAnimator.ofFloat(c\u2026Duration(DURATION_MS_350)"

    invoke-static {v8, v11}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    iget-object v11, v0, Lo/RadioButton;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 463
    iget-object v11, v0, Lo/RadioButton;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->cancel()V

    .line 467
    :cond_4
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v11, v0, Lo/RadioButton;->l:Landroid/animation/AnimatorSet;

    .line 471
    iget-object v11, v0, Lo/RadioButton;->l:Landroid/animation/AnimatorSet;

    check-cast v6, Landroid/animation/Animator;

    invoke-virtual {v11, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    check-cast v10, Landroid/animation/Animator;

    invoke-virtual {v6, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    check-cast v7, Landroid/animation/Animator;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    check-cast v12, Landroid/animation/Animator;

    invoke-virtual {v6, v12}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    check-cast v13, Landroid/animation/Animator;

    invoke-virtual {v6, v13}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    check-cast v5, Landroid/animation/Animator;

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    check-cast v3, Landroid/animation/Animator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 473
    iget-object v2, v0, Lo/RadioButton;->l:Landroid/animation/AnimatorSet;

    check-cast v4, Landroid/animation/Animator;

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 475
    iget-object v2, v0, Lo/RadioButton;->l:Landroid/animation/AnimatorSet;

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 477
    iget-object v2, v0, Lo/RadioButton;->l:Landroid/animation/AnimatorSet;

    check-cast v9, Landroid/animation/Animator;

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 479
    iget-object v1, v0, Lo/RadioButton;->l:Landroid/animation/AnimatorSet;

    check-cast v8, Landroid/animation/Animator;

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 481
    iget-object v1, v0, Lo/RadioButton;->l:Landroid/animation/AnimatorSet;

    new-instance v2, Lo/RadioButton$FragmentManager;

    invoke-direct {v2, v0}, Lo/RadioButton$FragmentManager;-><init>(Lo/RadioButton;)V

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 488
    iget-object v1, v0, Lo/RadioButton;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f333333    # 0.7f
    .end array-data

    :array_5
    .array-data 4
        0x3f333333    # 0.7f
        0x0
    .end array-data
.end method

.method public static final synthetic b(Lo/RadioButton;)Landroid/view/View;
    .locals 0

    .line 36
    invoke-direct {p0}, Lo/RadioButton;->i()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lo/RadioButton;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lo/RadioButton;->c(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lo/RadioButton;Lo/alB;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 324
    check-cast p1, Lo/alB;

    :cond_0
    invoke-virtual {p0, p1}, Lo/RadioButton;->e(Lo/alB;)V

    return-void
.end method

.method private final b(Lo/alB;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alB<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 334
    iget v1, v0, Lo/RadioButton;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/high16 v4, 0x42340000    # 45.0f

    if-eqz v1, :cond_1

    const/high16 v4, -0x3dcc0000    # -45.0f

    .line 338
    :cond_1
    invoke-direct/range {p0 .. p0}, Lo/RadioButton;->a()Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v5, 0x2

    new-array v6, v5, [Landroid/animation/PropertyValuesHolder;

    .line 339
    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v2, [F

    const v9, 0x3f666666    # 0.9f

    aput v9, v8, v3

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v6, v3

    .line 340
    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v2, [F

    aput v9, v8, v3

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v6, v2

    .line 338
    invoke-static {v1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v6, 0x64

    .line 340
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v8, "ObjectAnimator.ofPropert\u2026Duration(DURATION_MS_100)"

    invoke-static {v1, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    invoke-direct/range {p0 .. p0}, Lo/RadioButton;->a()Landroid/widget/ImageButton;

    move-result-object v8

    new-array v9, v5, [Landroid/animation/PropertyValuesHolder;

    .line 343
    sget-object v10, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v11, v2, [F

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v11, v3

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    aput-object v10, v9, v3

    .line 344
    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v11, v2, [F

    aput v12, v11, v3

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    aput-object v10, v9, v2

    .line 342
    invoke-static {v8, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v9, 0x15e

    .line 344
    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-string v11, "ObjectAnimator.ofPropert\u2026Duration(DURATION_MS_350)"

    invoke-static {v8, v11}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    invoke-direct/range {p0 .. p0}, Lo/RadioButton;->a()Landroid/widget/ImageButton;

    move-result-object v11

    sget-object v12, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v13, v5, [F

    const/4 v14, 0x0

    aput v14, v13, v3

    aput v4, v13, v2

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const-wide/16 v12, 0x96

    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const-string v12, "ObjectAnimator.ofFloat(b\u2026Duration(DURATION_MS_150)"

    invoke-static {v11, v12}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    sget-object v12, Lo/RadioButton;->u:Landroid/view/animation/Interpolator;

    check-cast v12, Landroid/animation/TimeInterpolator;

    invoke-virtual {v11, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 349
    invoke-direct/range {p0 .. p0}, Lo/RadioButton;->a()Landroid/widget/ImageButton;

    move-result-object v12

    sget-object v13, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v15, v5, [F

    aput v4, v15, v3

    aput v14, v15, v2

    invoke-static {v12, v13, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x2ee

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v3, "ObjectAnimator.ofFloat(b\u2026Duration(DURATION_MS_750)"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    sget-object v3, Lo/RadioButton;->u:Landroid/view/animation/Interpolator;

    check-cast v3, Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 352
    invoke-direct/range {p0 .. p0}, Lo/RadioButton;->i()Landroid/view/View;

    move-result-object v3

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v5, [F

    fill-array-data v12, :array_0

    invoke-static {v3, v4, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-string v4, "ObjectAnimator.ofFloat(c\u2026Duration(DURATION_MS_100)"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    new-instance v4, Lo/RadioButton$Fragment;

    invoke-direct {v4, v0}, Lo/RadioButton$Fragment;-><init>(Lo/RadioButton;)V

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 363
    invoke-direct/range {p0 .. p0}, Lo/RadioButton;->i()Landroid/view/View;

    move-result-object v4

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-string v5, "ObjectAnimator.ofFloat(c\u2026Duration(DURATION_MS_350)"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    iget-object v5, v0, Lo/RadioButton;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 367
    iget-object v5, v0, Lo/RadioButton;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 371
    :cond_2
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, v0, Lo/RadioButton;->l:Landroid/animation/AnimatorSet;

    .line 375
    iget-object v5, v0, Lo/RadioButton;->l:Landroid/animation/AnimatorSet;

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    check-cast v8, Landroid/animation/Animator;

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    check-cast v11, Landroid/animation/Animator;

    invoke-virtual {v1, v11}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    check-cast v3, Landroid/animation/Animator;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 377
    iget-object v1, v0, Lo/RadioButton;->l:Landroid/animation/AnimatorSet;

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 379
    iget-object v1, v0, Lo/RadioButton;->l:Landroid/animation/AnimatorSet;

    check-cast v4, Landroid/animation/Animator;

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 381
    iget-object v1, v0, Lo/RadioButton;->l:Landroid/animation/AnimatorSet;

    new-instance v2, Lo/RadioButton$PendingIntent;

    move-object/from16 v3, p1

    invoke-direct {v2, v0, v3}, Lo/RadioButton$PendingIntent;-><init>(Lo/RadioButton;Lo/alB;)V

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 392
    iget-object v1, v0, Lo/RadioButton;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f333333    # 0.7f
    .end array-data

    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x0
    .end array-data
.end method

.method public static final synthetic c(Lo/RadioButton;)Ljava/lang/CharSequence;
    .locals 0

    .line 36
    iget-object p0, p0, Lo/RadioButton;->t:Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final c()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/RadioButton;->g:Lo/ams;

    sget-object v1, Lo/RadioButton;->e:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final c(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 499
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 500
    iget-object v1, p0, Lo/RadioButton;->t:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 501
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 502
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 503
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 506
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 507
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 508
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 509
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 512
    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    const/16 p1, 0x8

    .line 513
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static final synthetic d(Lo/RadioButton;)Landroid/widget/ImageButton;
    .locals 0

    .line 36
    invoke-direct {p0}, Lo/RadioButton;->a()Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lo/RadioButton;)I
    .locals 0

    .line 36
    iget p0, p0, Lo/RadioButton;->h:I

    return p0
.end method

.method public static final synthetic e(Lo/RadioButton;I)V
    .locals 0

    .line 36
    iput p1, p0, Lo/RadioButton;->h:I

    return-void
.end method

.method public static final synthetic i(Lo/RadioButton;)I
    .locals 0

    .line 36
    iget p0, p0, Lo/RadioButton;->c:I

    return p0
.end method

.method private final i()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/RadioButton;->i:Lo/ams;

    sget-object v1, Lo/RadioButton;->e:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 129
    iget v0, p0, Lo/RadioButton;->p:I

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lo/RadioButton;->w:Z

    return v0
.end method

.method public final e()Lo/RadioButton$ActionBar;
    .locals 1

    .line 114
    iget-object v0, p0, Lo/RadioButton;->j:Lo/RadioButton$ActionBar;

    return-object v0
.end method

.method public final e(Lo/alB;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alB<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    .line 325
    iget v0, p0, Lo/RadioButton;->a:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    invoke-direct {p0, p1}, Lo/RadioButton;->b(Lo/alB;)V

    goto :goto_0

    .line 326
    :cond_1
    invoke-direct {p0, p1}, Lo/RadioButton;->a(Lo/alB;)V

    :goto_0
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 315
    invoke-super {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/RadioButton;->a()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public performClick()Z
    .locals 1

    .line 270
    invoke-direct {p0}, Lo/RadioButton;->a()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public final setAnimMode(I)V
    .locals 0

    .line 296
    iput p1, p0, Lo/RadioButton;->a:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 304
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 305
    invoke-direct {p0}, Lo/RadioButton;->a()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 306
    invoke-direct {p0}, Lo/RadioButton;->c()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setEnabled(Z)V

    return-void
.end method

.method public final setMode(I)V
    .locals 1

    .line 274
    iput p1, p0, Lo/RadioButton;->c:I

    .line 275
    iget p1, p0, Lo/RadioButton;->c:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 286
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "sb_mode attribute value should be forward or backward"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_0
    invoke-direct {p0}, Lo/RadioButton;->a()Landroid/widget/ImageButton;

    move-result-object p1

    iget-object v0, p0, Lo/RadioButton;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    iget-object p1, p0, Lo/RadioButton;->m:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lo/RadioButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 284
    invoke-direct {p0}, Lo/RadioButton;->c()Lo/ImageSwitcher;

    move-result-object p1

    iget-object v0, p0, Lo/RadioButton;->t:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 277
    :cond_1
    invoke-direct {p0}, Lo/RadioButton;->a()Landroid/widget/ImageButton;

    move-result-object p1

    iget-object v0, p0, Lo/RadioButton;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    iget-object p1, p0, Lo/RadioButton;->n:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lo/RadioButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 279
    invoke-direct {p0}, Lo/RadioButton;->c()Lo/ImageSwitcher;

    move-result-object p1

    iget-object v0, p0, Lo/RadioButton;->t:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final setOnSeekButtonListener(Lo/RadioButton$ActionBar;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lo/RadioButton;->j:Lo/RadioButton$ActionBar;

    return-void
.end method
