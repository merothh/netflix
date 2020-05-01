.class public Lcom/airbnb/lottie/LottieAnimationView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieAnimationView$SavedState;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private a:Z

.field private final b:Lo/SecretKeyFactorySpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SecretKeyFactorySpi<",
            "Lo/DESedeKeySpec;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lo/DESKeySpec;

.field private final d:Lo/SecretKeyFactorySpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SecretKeyFactorySpi<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Z

.field private k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/DHPublicKeySpec;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/airbnb/lottie/RenderMode;

.field private n:Lo/DHParameterSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/DHParameterSpec<",
            "Lo/DESedeKeySpec;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lo/DESedeKeySpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$3;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$3;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->b:Lo/SecretKeyFactorySpi;

    .line 73
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$4;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$4;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Lo/SecretKeyFactorySpi;

    .line 79
    new-instance p1, Lo/DESKeySpec;

    invoke-direct {p1}, Lo/DESKeySpec;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    .line 84
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:Z

    .line 85
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Z

    .line 86
    sget-object p1, Lcom/airbnb/lottie/RenderMode;->e:Lcom/airbnb/lottie/RenderMode;

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Lcom/airbnb/lottie/RenderMode;

    .line 87
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Ljava/util/Set;

    const/4 p1, 0x0

    .line 95
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$3;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$3;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->b:Lo/SecretKeyFactorySpi;

    .line 73
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$4;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$4;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Lo/SecretKeyFactorySpi;

    .line 79
    new-instance p1, Lo/DESKeySpec;

    invoke-direct {p1}, Lo/DESKeySpec;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    .line 84
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:Z

    .line 85
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Z

    .line 86
    sget-object p1, Lcom/airbnb/lottie/RenderMode;->e:Lcom/airbnb/lottie/RenderMode;

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Lcom/airbnb/lottie/RenderMode;

    .line 87
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Ljava/util/Set;

    .line 100
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$3;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$3;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->b:Lo/SecretKeyFactorySpi;

    .line 73
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$4;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$4;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Lo/SecretKeyFactorySpi;

    .line 79
    new-instance p1, Lo/DESKeySpec;

    invoke-direct {p1}, Lo/DESKeySpec;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    .line 84
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:Z

    .line 85
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Z

    .line 86
    sget-object p1, Lcom/airbnb/lottie/RenderMode;->e:Lcom/airbnb/lottie/RenderMode;

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Lcom/airbnb/lottie/RenderMode;

    .line 87
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Ljava/util/Set;

    .line 105
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private b(Landroid/util/AttributeSet;)V
    .locals 7

    .line 109
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lo/PBEParameterSpec$Activity;->z:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 110
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 111
    sget v0, Lo/PBEParameterSpec$Activity;->J:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    .line 112
    sget v2, Lo/PBEParameterSpec$Activity;->F:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    .line 113
    sget v3, Lo/PBEParameterSpec$Activity;->S:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 118
    sget v0, Lo/PBEParameterSpec$Activity;->J:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 123
    sget v0, Lo/PBEParameterSpec$Activity;->F:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 125
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 128
    sget v0, Lo/PBEParameterSpec$Activity;->S:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 130
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    .line 134
    :cond_4
    :goto_1
    sget v0, Lo/PBEParameterSpec$Activity;->C:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 135
    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:Z

    .line 136
    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Z

    .line 139
    :cond_5
    sget v0, Lo/PBEParameterSpec$Activity;->I:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_6

    .line 140
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, v3}, Lo/DESKeySpec;->d(I)V

    .line 143
    :cond_6
    sget v0, Lo/PBEParameterSpec$Activity;->L:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 144
    sget v0, Lo/PBEParameterSpec$Activity;->L:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 148
    :cond_7
    sget v0, Lo/PBEParameterSpec$Activity;->M:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 149
    sget v0, Lo/PBEParameterSpec$Activity;->M:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 153
    :cond_8
    sget v0, Lo/PBEParameterSpec$Activity;->Q:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_9

    .line 154
    sget v0, Lo/PBEParameterSpec$Activity;->Q:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 157
    :cond_9
    sget v0, Lo/PBEParameterSpec$Activity;->H:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 158
    sget v0, Lo/PBEParameterSpec$Activity;->K:I

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 159
    sget v0, Lo/PBEParameterSpec$Activity;->G:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->b(Z)V

    .line 161
    sget v0, Lo/PBEParameterSpec$Activity;->E:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 162
    new-instance v0, Lo/PSpecified;

    sget v5, Lo/PBEParameterSpec$Activity;->E:I

    .line 163
    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-direct {v0, v5}, Lo/PSpecified;-><init>(I)V

    .line 164
    new-instance v5, Lo/IntKeyframeSet;

    const-string v6, "**"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lo/IntKeyframeSet;-><init>([Ljava/lang/String;)V

    .line 165
    new-instance v6, Lo/AlarmManager;

    invoke-direct {v6, v0}, Lo/AlarmManager;-><init>(Ljava/lang/Object;)V

    .line 166
    sget-object v0, Lo/IvParameterSpec;->C:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, v5, v0, v6}, Lcom/airbnb/lottie/LottieAnimationView;->c(Lo/IntKeyframeSet;Ljava/lang/Object;Lo/AlarmManager;)V

    .line 168
    :cond_a
    sget v0, Lo/PBEParameterSpec$Activity;->O:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 169
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    sget v5, Lo/PBEParameterSpec$Activity;->O:I

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v0, v3}, Lo/DESKeySpec;->e(F)V

    .line 172
    :cond_b
    sget v0, Lo/PBEParameterSpec$Activity;->N:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 173
    sget v0, Lo/PBEParameterSpec$Activity;->N:I

    sget-object v3, Lcom/airbnb/lottie/RenderMode;->e:Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {v3}, Lcom/airbnb/lottie/RenderMode;->ordinal()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 174
    invoke-static {}, Lcom/airbnb/lottie/RenderMode;->values()[Lcom/airbnb/lottie/RenderMode;

    move-result-object v3

    array-length v3, v3

    if-lt v0, v3, :cond_c

    .line 175
    sget-object v0, Lcom/airbnb/lottie/RenderMode;->e:Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {v0}, Lcom/airbnb/lottie/RenderMode;->ordinal()I

    move-result v0

    .line 177
    :cond_c
    invoke-static {}, Lcom/airbnb/lottie/RenderMode;->values()[Lcom/airbnb/lottie/RenderMode;

    move-result-object v3

    aget-object v0, v3, v0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Lcom/airbnb/lottie/RenderMode;

    .line 180
    :cond_d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/ActivityManagerNative;->b(Landroid/content/Context;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/DESKeySpec;->b(Ljava/lang/Boolean;)V

    .line 184
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->f()V

    .line 185
    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->a:Z

    return-void
.end method

.method private d(Lo/DHParameterSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DHParameterSpec<",
            "Lo/DESedeKeySpec;",
            ">;)V"
        }
    .end annotation

    .line 376
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->h()V

    .line 377
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->g()V

    .line 378
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->b:Lo/SecretKeyFactorySpi;

    .line 379
    invoke-virtual {p1, v0}, Lo/DHParameterSpec;->a(Lo/SecretKeyFactorySpi;)Lo/DHParameterSpec;

    move-result-object p1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Lo/SecretKeyFactorySpi;

    .line 380
    invoke-virtual {p1, v0}, Lo/DHParameterSpec;->c(Lo/SecretKeyFactorySpi;)Lo/DHParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lo/DHParameterSpec;

    return-void
.end method

.method private f()V
    .locals 5

    .line 881
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView$1;->b:[I

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {v1}, Lcom/airbnb/lottie/RenderMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 890
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Lo/DESedeKeySpec;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lo/DESedeKeySpec;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-ge v0, v4, :cond_2

    goto :goto_0

    .line 892
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Lo/DESedeKeySpec;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lo/DESedeKeySpec;->c()I

    move-result v0

    const/4 v4, 0x4

    if-le v0, v4, :cond_3

    goto :goto_0

    .line 894
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v0, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_0

    .line 900
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getLayerType()I

    move-result v0

    if-eq v1, v0, :cond_6

    const/4 v0, 0x0

    .line 901
    invoke-virtual {p0, v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method private g()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lo/DHParameterSpec;

    if-eqz v0, :cond_0

    .line 385
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->b:Lo/SecretKeyFactorySpi;

    invoke-virtual {v0, v1}, Lo/DHParameterSpec;->b(Lo/SecretKeyFactorySpi;)Lo/DHParameterSpec;

    .line 386
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Lo/DHParameterSpec;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Lo/SecretKeyFactorySpi;

    invoke-virtual {v0, v1}, Lo/DHParameterSpec;->e(Lo/SecretKeyFactorySpi;)Lo/DHParameterSpec;

    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x0

    .line 841
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Lo/DESedeKeySpec;

    .line 842
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0}, Lo/DESKeySpec;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 789
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    .line 790
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0}, Lo/DESKeySpec;->p()V

    .line 791
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->f()V

    return-void
.end method

.method public a(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, p1}, Lo/DESKeySpec;->e(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public b()F
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0}, Lo/DESKeySpec;->h()F

    move-result v0

    return v0
.end method

.method public b(Lo/IntKeyframeSet;Ljava/lang/Object;Lo/ActivityThread;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/IntKeyframeSet;",
            "TT;",
            "Lo/ActivityThread<",
            "TT;>;)V"
        }
    .end annotation

    .line 756
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$5;

    invoke-direct {v1, p0, p3}, Lcom/airbnb/lottie/LottieAnimationView$5;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Lo/ActivityThread;)V

    invoke-virtual {v0, p1, p2, v1}, Lo/DESKeySpec;->c(Lo/IntKeyframeSet;Ljava/lang/Object;Lo/AlarmManager;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, p1}, Lo/DESKeySpec;->d(Z)V

    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 2

    .line 854
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->buildDrawingCache(Z)V

    .line 855
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getLayerType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 856
    sget-object p1, Lcom/airbnb/lottie/RenderMode;->d:Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(Lcom/airbnb/lottie/RenderMode;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, p1}, Lo/DESKeySpec;->c(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public c(Lo/IntKeyframeSet;Ljava/lang/Object;Lo/AlarmManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/IntKeyframeSet;",
            "TT;",
            "Lo/AlarmManager<",
            "TT;>;)V"
        }
    .end annotation

    .line 746
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, p1, p2, p3}, Lo/DESKeySpec;->c(Lo/IntKeyframeSet;Ljava/lang/Object;Lo/AlarmManager;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0}, Lo/DESKeySpec;->k()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    .line 452
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0}, Lo/DESKeySpec;->d()V

    .line 454
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->f()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 456
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    :goto_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 466
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0}, Lo/DESKeySpec;->i()V

    .line 468
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->f()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 470
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    :goto_0
    return-void
.end method

.method public i()I
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0}, Lo/DESKeySpec;->f()I

    move-result v0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 204
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    if-ne v0, v1, :cond_0

    .line 207
    invoke-super {p0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 210
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    .line 796
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Z

    .line 797
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:Z

    .line 798
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    .line 799
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0}, Lo/DESKeySpec;->t()V

    .line 800
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->f()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 280
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onAttachedToWindow()V

    .line 281
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:Z

    if-eqz v0, :cond_1

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->d()V

    const/4 v0, 0x0

    .line 284
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Z

    .line 286
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    .line 289
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getVisibility()I

    move-result v0

    invoke-virtual {p0, p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->onVisibilityChanged(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 294
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    const/4 v0, 0x1

    .line 296
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:Z

    .line 298
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 228
    instance-of v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    if-nez v0, :cond_0

    .line 229
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 233
    :cond_0
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    .line 234
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 235
    iget-object v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 239
    :cond_1
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->c:I

    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:I

    .line 240
    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:I

    if-eqz v0, :cond_2

    .line 241
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 243
    :cond_2
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->d:F

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 244
    iget-boolean v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->a:Z

    if-eqz v0, :cond_3

    .line 245
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->d()V

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    iget-object v1, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/DESKeySpec;->e(Ljava/lang/String;)V

    .line 248
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->h:I

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 249
    iget p1, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->i:I

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 215
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 216
    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 217
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Ljava/lang/String;

    iput-object v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->b:Ljava/lang/String;

    .line 218
    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:I

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->c:I

    .line 219
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0}, Lo/DESKeySpec;->s()F

    move-result v0

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->d:F

    .line 220
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0}, Lo/DESKeySpec;->k()Z

    move-result v0

    iput-boolean v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->a:Z

    .line 221
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0}, Lo/DESKeySpec;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->e:Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0}, Lo/DESKeySpec;->m()I

    move-result v0

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->h:I

    .line 223
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0}, Lo/DESKeySpec;->o()I

    move-result v0

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->i:I

    return-object v1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 263
    iget-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->a:Z

    if-nez p1, :cond_0

    return-void

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 267
    iget-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    if-eqz p1, :cond_2

    .line 268
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->e()V

    const/4 p1, 0x0

    .line 269
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 273
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->j()V

    const/4 p1, 0x1

    .line 274
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setAnimation(I)V
    .locals 1

    .line 324
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:I

    const/4 v0, 0x0

    .line 325
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Ljava/lang/String;

    .line 326
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/DHGenParameterSpec;->b(Landroid/content/Context;I)Lo/DHParameterSpec;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->d(Lo/DHParameterSpec;)V

    return-void
.end method

.method public setAnimation(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)V
    .locals 0

    .line 360
    invoke-static {p1, p2}, Lo/DHGenParameterSpec;->c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lo/DHParameterSpec;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->d(Lo/DHParameterSpec;)V

    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 1

    .line 330
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Ljava/lang/String;

    const/4 v0, 0x0

    .line 331
    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:I

    .line 332
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/DHGenParameterSpec;->e(Landroid/content/Context;Ljava/lang/String;)Lo/DHParameterSpec;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->d(Lo/DHParameterSpec;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 340
    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 349
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lo/aqn;->d(Ljava/io/InputStream;)Lo/aqp;

    move-result-object p1

    invoke-static {p1}, Lo/aqn;->a(Lo/aqp;)Lo/aqm;

    move-result-object p1

    invoke-static {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->e(Lo/aqm;)Lcom/airbnb/lottie/parser/moshi/JsonReader;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .locals 1

    .line 372
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/DHGenParameterSpec;->b(Landroid/content/Context;Ljava/lang/String;)Lo/DHParameterSpec;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->d(Lo/DHParameterSpec;)V

    return-void
.end method

.method public setComposition(Lo/DESedeKeySpec;)V
    .locals 3

    .line 396
    sget-boolean v0, Lo/SecretKeyFactory;->d:Z

    if-eqz v0, :cond_0

    .line 397
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Composition \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, p0}, Lo/DESKeySpec;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 401
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Lo/DESedeKeySpec;

    .line 402
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, p1}, Lo/DESKeySpec;->a(Lo/DESedeKeySpec;)Z

    move-result v0

    .line 403
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->f()V

    .line 404
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 412
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 418
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getVisibility()I

    move-result v0

    invoke-virtual {p0, p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 420
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->requestLayout()V

    .line 422
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/DHPublicKeySpec;

    .line 423
    invoke-interface {v1, p1}, Lo/DHPublicKeySpec;->b(Lo/DESedeKeySpec;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setFontAssetDelegate(Lo/SecretKey;)V
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, p1}, Lo/DESKeySpec;->b(Lo/SecretKey;)V

    return-void
.end method

.method public setFrame(I)V
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, p1}, Lo/DESKeySpec;->a(I)V

    return-void
.end method

.method public setImageAssetDelegate(Lo/NoSuchPaddingException;)V
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, p1}, Lo/DESKeySpec;->a(Lo/NoSuchPaddingException;)V

    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, p1}, Lo/DESKeySpec;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 199
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->g()V

    .line 200
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->g()V

    .line 195
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 189
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->g()V

    .line 190
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public setMaxFrame(I)V
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, p1}, Lo/DESKeySpec;->b(I)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, p1}, Lo/DESKeySpec;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxProgress(F)V
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, p1}, Lo/DESKeySpec;->c(F)V

    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, p1, p2}, Lo/DESKeySpec;->b(II)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, p1}, Lo/DESKeySpec;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, p1, p2}, Lo/DESKeySpec;->d(FF)V

    return-void
.end method

.method public setMinFrame(I)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, p1}, Lo/DESKeySpec;->c(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, p1}, Lo/DESKeySpec;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setMinProgress(F)V
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, p1}, Lo/DESKeySpec;->d(F)V

    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, p1}, Lo/DESKeySpec;->a(Z)V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, p1}, Lo/DESKeySpec;->b(F)V

    return-void
.end method

.method public setRenderMode(Lcom/airbnb/lottie/RenderMode;)V
    .locals 0

    .line 875
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Lcom/airbnb/lottie/RenderMode;

    .line 876
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->f()V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, p1}, Lo/DESKeySpec;->d(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, p1}, Lo/DESKeySpec;->e(I)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, p1}, Lo/DESKeySpec;->e(F)V

    .line 777
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 778
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 779
    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, p1}, Lo/DESKeySpec;->a(F)V

    return-void
.end method

.method public setTextDelegate(Lo/PSource;)V
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lo/DESKeySpec;

    invoke-virtual {v0, p1}, Lo/DESKeySpec;->b(Lo/PSource;)V

    return-void
.end method
