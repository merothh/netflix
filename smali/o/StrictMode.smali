.class public Lo/StrictMode;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/StrictMode$ActionBar;
    }
.end annotation


# static fields
.field private static final c:Landroid/view/animation/Interpolator;

.field private static final d:Landroid/view/animation/Interpolator;


# instance fields
.field private final a:Z

.field private final b:Landroid/widget/TextView;

.field private final e:Landroid/view/ViewGroup;

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Landroid/text/Spannable;

.field private final j:Landroid/text/Spannable;

.field private k:I

.field private m:I

.field private final n:Lo/StrictMode$ActionBar;

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v0, 0x3e333333    # 0.175f

    const v1, 0x3f628f5c    # 0.885f

    const v2, 0x3ea3d70a    # 0.32f

    const v3, 0x3fa33333    # 1.275f

    .line 70
    invoke-static {v0, v1, v2, v3}, Lo/ObjectOutput;->e(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lo/StrictMode;->c:Landroid/view/animation/Interpolator;

    const v0, 0x3f19999a    # 0.6f

    const v1, -0x4170a3d7    # -0.28f

    const v2, 0x3f3c28f6    # 0.735f

    const v3, 0x3d3851ec    # 0.045f

    .line 73
    invoke-static {v0, v1, v2, v3}, Lo/ObjectOutput;->e(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lo/StrictMode;->d:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;III)V
    .locals 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Lo/StrictMode$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/StrictMode$ActionBar;-><init>(Lo/StrictMode;Lo/StrictMode$3;)V

    iput-object v0, p0, Lo/StrictMode;->n:Lo/StrictMode$ActionBar;

    .line 123
    iput-object p1, p0, Lo/StrictMode;->b:Landroid/widget/TextView;

    .line 124
    iget-object p1, p0, Lo/StrictMode;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/StrictMode;->e:Landroid/view/ViewGroup;

    .line 126
    invoke-static {}, Lo/afw;->b()Z

    move-result p1

    iput-boolean p1, p0, Lo/StrictMode;->a:Z

    .line 129
    iget-object p1, p0, Lo/StrictMode;->b:Landroid/widget/TextView;

    sget v0, Lo/IHwInterface$TaskDescription;->l:I

    iget-boolean v1, p0, Lo/StrictMode;->a:Z

    invoke-static {p1, v0, v1, p4}, Lo/StrictMode;->b(Landroid/widget/TextView;IZI)Landroid/text/Spannable;

    move-result-object p1

    iput-object p1, p0, Lo/StrictMode;->i:Landroid/text/Spannable;

    .line 130
    iget-object p1, p0, Lo/StrictMode;->b:Landroid/widget/TextView;

    sget v0, Lo/IHwInterface$TaskDescription;->f:I

    iget-boolean v1, p0, Lo/StrictMode;->a:Z

    invoke-static {p1, v0, v1, p4}, Lo/StrictMode;->b(Landroid/widget/TextView;IZI)Landroid/text/Spannable;

    move-result-object p1

    iput-object p1, p0, Lo/StrictMode;->j:Landroid/text/Spannable;

    .line 132
    iput p2, p0, Lo/StrictMode;->h:I

    .line 133
    iput p3, p0, Lo/StrictMode;->g:I

    .line 135
    iget-object p1, p0, Lo/StrictMode;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lo/StrictMode;->f:I

    return-void
.end method

.method static synthetic a(Lo/StrictMode;)Landroid/view/ViewGroup;
    .locals 0

    .line 56
    iget-object p0, p0, Lo/StrictMode;->e:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic a()Landroid/view/animation/Interpolator;
    .locals 1

    .line 56
    sget-object v0, Lo/StrictMode;->d:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static b(Landroid/widget/TextView;IZI)Landroid/text/Spannable;
    .locals 4

    .line 205
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 206
    invoke-static {p1, p3}, Lo/AccessibilityRecord;->b(Landroid/graphics/drawable/Drawable;I)V

    const/16 p3, 0x11

    const-string v0, "X"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 210
    new-instance p2, Landroid/text/style/ImageSpan;

    invoke-direct {p2, p1, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 211
    invoke-virtual {p2}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1, v2, v2, v3, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 213
    new-instance p0, Landroid/text/SpannableString;

    sget-object p1, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->b:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    invoke-static {v0, p1}, Lo/afw;->e(Ljava/lang/String;Lcom/netflix/mediaclient/util/l10n/BidiMarker;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 p1, 0x2

    .line 214
    invoke-interface {p0, p2, v1, p1, p3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-object p0

    .line 217
    :cond_0
    new-instance p2, Landroid/text/style/ImageSpan;

    invoke-direct {p2, p1, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 218
    invoke-virtual {p2}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1, v2, v2, v3, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 219
    new-instance p0, Landroid/text/SpannableString;

    invoke-direct {p0, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 220
    invoke-interface {p0, p2, v2, v1, p3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method static synthetic b()Landroid/view/animation/Interpolator;
    .locals 1

    .line 56
    sget-object v0, Lo/StrictMode;->c:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private b(III)V
    .locals 19

    move-object/from16 v0, p0

    .line 230
    iget-object v2, v0, Lo/StrictMode;->o:Ljava/lang/String;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-eqz v2, :cond_3

    if-eqz p3, :cond_0

    goto :goto_2

    .line 242
    :cond_0
    new-instance v10, Landroid/text/StaticLayout;

    iget-object v3, v0, Lo/StrictMode;->b:Landroid/widget/TextView;

    .line 244
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const v4, 0x7fffffff

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget-object v6, v0, Lo/StrictMode;->b:Landroid/widget/TextView;

    .line 247
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    if-nez v6, :cond_1

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lo/StrictMode;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v1

    move v6, v1

    :goto_0
    iget-object v1, v0, Lo/StrictMode;->b:Landroid/widget/TextView;

    .line 248
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lo/StrictMode;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v1

    move v7, v1

    :goto_1
    const/4 v8, 0x1

    move-object v1, v10

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v2, v10

    goto :goto_5

    .line 232
    :cond_3
    :goto_2
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v3, v0, Lo/StrictMode;->b:Landroid/widget/TextView;

    .line 234
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    const v14, 0x7fffffff

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget-object v3, v0, Lo/StrictMode;->b:Landroid/widget/TextView;

    .line 237
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_4

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_4
    iget-object v1, v0, Lo/StrictMode;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v1

    move/from16 v16, v1

    :goto_3
    iget-object v1, v0, Lo/StrictMode;->b:Landroid/widget/TextView;

    .line 238
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_5

    const/16 v17, 0x0

    goto :goto_4

    :cond_5
    iget-object v1, v0, Lo/StrictMode;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v1

    move/from16 v17, v1

    :goto_4
    const/16 v18, 0x1

    const-string v12, " "

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 252
    :goto_5
    iget v1, v0, Lo/StrictMode;->f:I

    int-to-float v1, v1

    iget-object v3, v0, Lo/StrictMode;->o:Ljava/lang/String;

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    iget-object v3, v0, Lo/StrictMode;->b:Landroid/widget/TextView;

    .line 254
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, v0, Lo/StrictMode;->o:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v9

    .line 252
    :goto_6
    invoke-static {v1, v9}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lo/StrictMode;->k:I

    .line 256
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    add-int v1, v1, p2

    iput v1, v0, Lo/StrictMode;->m:I

    .line 260
    iget-object v1, v0, Lo/StrictMode;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lo/StrictMode;->k:I

    add-int v2, v2, p1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 261
    iget-object v1, v0, Lo/StrictMode;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lo/StrictMode;->m:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 262
    iget-object v1, v0, Lo/StrictMode;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 264
    iget-object v1, v0, Lo/StrictMode;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lo/StrictMode;->m:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 265
    iget-object v1, v0, Lo/StrictMode;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method static synthetic c(Lo/StrictMode;)I
    .locals 0

    .line 56
    invoke-direct {p0}, Lo/StrictMode;->d()I

    move-result p0

    return p0
.end method

.method private c(ILjava/lang/CharSequence;IZ)V
    .locals 0

    if-nez p4, :cond_0

    .line 196
    iget-object p1, p0, Lo/StrictMode;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object p1, p0, Lo/StrictMode;->e:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lo/StrictMode;->d()I

    move-result p2

    mul-int p3, p3, p2

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object p4, p0, Lo/StrictMode;->n:Lo/StrictMode$ActionBar;

    invoke-virtual {p4, p1, p2, p3}, Lo/StrictMode$ActionBar;->d(ILjava/lang/CharSequence;I)V

    :goto_0
    return-void
.end method

.method private d()I
    .locals 1

    .line 191
    iget-boolean v0, p0, Lo/StrictMode;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method static synthetic d(Lo/StrictMode;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lo/StrictMode;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method private e()Landroid/content/res/Resources;
    .locals 1

    .line 140
    iget-object v0, p0, Lo/StrictMode;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(IIZZ)V
    .locals 7

    .line 144
    iget-object v0, p0, Lo/StrictMode;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v0

    iget-object v1, p0, Lo/StrictMode;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    iget-object v1, p0, Lo/StrictMode;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lo/StrictMode;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    .line 149
    invoke-direct {p0}, Lo/StrictMode;->e()Landroid/content/res/Resources;

    move-result-object p2

    iget p3, p0, Lo/StrictMode;->g:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/StrictMode;->o:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 151
    iput-object v2, p0, Lo/StrictMode;->o:Ljava/lang/String;

    goto :goto_0

    .line 153
    :cond_1
    invoke-direct {p0}, Lo/StrictMode;->e()Landroid/content/res/Resources;

    move-result-object p3

    iget v5, p0, Lo/StrictMode;->h:I

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v6, v4

    invoke-virtual {p3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/StrictMode;->o:Ljava/lang/String;

    .line 157
    :goto_0
    invoke-direct {p0, v0, v1, p1}, Lo/StrictMode;->b(III)V

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    goto :goto_2

    .line 164
    :cond_2
    iget-object v2, p0, Lo/StrictMode;->i:Landroid/text/Spannable;

    .line 165
    iget p2, p0, Lo/StrictMode;->k:I

    iget p3, p0, Lo/StrictMode;->f:I

    goto :goto_1

    .line 169
    :cond_3
    iget-object v2, p0, Lo/StrictMode;->j:Landroid/text/Spannable;

    .line 170
    iget p2, p0, Lo/StrictMode;->k:I

    iget p3, p0, Lo/StrictMode;->f:I

    :goto_1
    sub-int v4, p2, p3

    goto :goto_2

    .line 174
    :cond_4
    iget-object v2, p0, Lo/StrictMode;->o:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 176
    iget p2, p0, Lo/StrictMode;->f:I

    iget-object p3, p0, Lo/StrictMode;->b:Landroid/widget/TextView;

    invoke-static {p3}, Lo/RemoteException;->e(Landroid/view/View;)I

    move-result p3

    add-int v4, p2, p3

    .line 184
    :cond_5
    :goto_2
    invoke-direct {p0, p1, v2, v4, p4}, Lo/StrictMode;->c(ILjava/lang/CharSequence;IZ)V

    return-void
.end method
