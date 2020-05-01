.class public Lo/SecretKeySpec;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RC2ParameterSpec;
.implements Lo/Account;
.implements Lo/AccountManagerInternal$ActionBar;
.implements Lo/Keyframe;


# instance fields
.field private final a:Z

.field private final b:Landroid/graphics/Matrix;

.field private final c:Landroid/graphics/RectF;

.field private final d:Landroid/graphics/Path;

.field private final e:Ljava/lang/String;

.field private final g:Lo/DESKeySpec;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Account;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/AnimatorSet;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AccessibilityButtonController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/DESKeySpec;Lo/CheckResult;Ljava/lang/String;ZLjava/util/List;Lo/TypeConverter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DESKeySpec;",
            "Lo/CheckResult;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lo/AccessibilityButtonController;",
            ">;",
            "Lo/TypeConverter;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/SecretKeySpec;->b:Landroid/graphics/Matrix;

    .line 49
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/SecretKeySpec;->d:Landroid/graphics/Path;

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/SecretKeySpec;->c:Landroid/graphics/RectF;

    .line 67
    iput-object p3, p0, Lo/SecretKeySpec;->e:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lo/SecretKeySpec;->g:Lo/DESKeySpec;

    .line 69
    iput-boolean p4, p0, Lo/SecretKeySpec;->a:Z

    .line 70
    iput-object p5, p0, Lo/SecretKeySpec;->j:Ljava/util/List;

    if-eqz p6, :cond_0

    .line 73
    invoke-virtual {p6}, Lo/TypeConverter;->f()Lo/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lo/SecretKeySpec;->i:Lo/AnimatorSet;

    .line 74
    iget-object p1, p0, Lo/SecretKeySpec;->i:Lo/AnimatorSet;

    invoke-virtual {p1, p2}, Lo/AnimatorSet;->c(Lo/CheckResult;)V

    .line 75
    iget-object p1, p0, Lo/SecretKeySpec;->i:Lo/AnimatorSet;

    invoke-virtual {p1, p0}, Lo/AnimatorSet;->e(Lo/AccountManagerInternal$ActionBar;)V

    .line 78
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    .line 80
    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/AccessibilityButtonController;

    .line 81
    instance-of p4, p3, Lo/FingerprintGestureController;

    if-eqz p4, :cond_1

    .line 82
    check-cast p3, Lo/FingerprintGestureController;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 86
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_3

    .line 87
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/FingerprintGestureController;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p4

    invoke-interface {p5, p4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p4

    invoke-interface {p3, p4}, Lo/FingerprintGestureController;->e(Ljava/util/ListIterator;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public constructor <init>(Lo/DESKeySpec;Lo/CheckResult;Lo/BytesLong;)V
    .locals 7

    .line 60
    invoke-virtual {p3}, Lo/BytesLong;->c()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual {p3}, Lo/BytesLong;->a()Z

    move-result v4

    invoke-virtual {p3}, Lo/BytesLong;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lo/SecretKeySpec;->a(Lo/DESKeySpec;Lo/CheckResult;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 62
    invoke-virtual {p3}, Lo/BytesLong;->d()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lo/SecretKeySpec;->b(Ljava/util/List;)Lo/TypeConverter;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 60
    invoke-direct/range {v0 .. v6}, Lo/SecretKeySpec;-><init>(Lo/DESKeySpec;Lo/CheckResult;Ljava/lang/String;ZLjava/util/List;Lo/TypeConverter;)V

    return-void
.end method

.method private static a(Lo/DESKeySpec;Lo/CheckResult;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DESKeySpec;",
            "Lo/CheckResult;",
            "Ljava/util/List<",
            "Lo/AnyRes;",
            ">;)",
            "Ljava/util/List<",
            "Lo/AccessibilityButtonController;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 29
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 30
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AnyRes;

    invoke-interface {v2, p0, p1}, Lo/AnyRes;->c(Lo/DESKeySpec;Lo/CheckResult;)Lo/AccessibilityButtonController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 32
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static b(Ljava/util/List;)Lo/TypeConverter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AnyRes;",
            ">;)",
            "Lo/TypeConverter;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 39
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 40
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AnyRes;

    .line 41
    instance-of v2, v1, Lo/TypeConverter;

    if-eqz v2, :cond_0

    .line 42
    check-cast v1, Lo/TypeConverter;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()Landroid/graphics/Path;
    .locals 4

    .line 134
    iget-object v0, p0, Lo/SecretKeySpec;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 135
    iget-object v0, p0, Lo/SecretKeySpec;->i:Lo/AnimatorSet;

    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lo/SecretKeySpec;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lo/AnimatorSet;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lo/SecretKeySpec;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 139
    iget-boolean v0, p0, Lo/SecretKeySpec;->a:Z

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lo/SecretKeySpec;->d:Landroid/graphics/Path;

    return-object v0

    .line 142
    :cond_1
    iget-object v0, p0, Lo/SecretKeySpec;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 143
    iget-object v1, p0, Lo/SecretKeySpec;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AccessibilityButtonController;

    .line 144
    instance-of v2, v1, Lo/Account;

    if-eqz v2, :cond_2

    .line 145
    iget-object v2, p0, Lo/SecretKeySpec;->d:Landroid/graphics/Path;

    check-cast v1, Lo/Account;

    invoke-interface {v1}, Lo/Account;->a()Landroid/graphics/Path;

    move-result-object v1

    iget-object v3, p0, Lo/SecretKeySpec;->b:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 148
    :cond_3
    iget-object v0, p0, Lo/SecretKeySpec;->d:Landroid/graphics/Path;

    return-object v0
.end method

.method b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/Account;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lo/SecretKeySpec;->h:Ljava/util/List;

    if-nez v0, :cond_1

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/SecretKeySpec;->h:Ljava/util/List;

    const/4 v0, 0x0

    .line 114
    :goto_0
    iget-object v1, p0, Lo/SecretKeySpec;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 115
    iget-object v1, p0, Lo/SecretKeySpec;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AccessibilityButtonController;

    .line 116
    instance-of v2, v1, Lo/Account;

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lo/SecretKeySpec;->h:Ljava/util/List;

    check-cast v1, Lo/Account;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lo/SecretKeySpec;->h:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AccessibilityButtonController;",
            ">;",
            "Ljava/util/List<",
            "Lo/AccessibilityButtonController;",
            ">;)V"
        }
    .end annotation

    .line 101
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lo/SecretKeySpec;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    iget-object p1, p0, Lo/SecretKeySpec;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    .line 105
    iget-object v0, p0, Lo/SecretKeySpec;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AccessibilityButtonController;

    .line 106
    iget-object v1, p0, Lo/SecretKeySpec;->j:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lo/AccessibilityButtonController;->b(Ljava/util/List;Ljava/util/List;)V

    .line 107
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lo/SecretKeySpec;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 174
    iget-object v0, p0, Lo/SecretKeySpec;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 175
    iget-object p2, p0, Lo/SecretKeySpec;->i:Lo/AnimatorSet;

    if-eqz p2, :cond_0

    .line 176
    iget-object v0, p0, Lo/SecretKeySpec;->b:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lo/AnimatorSet;->d()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 178
    :cond_0
    iget-object p2, p0, Lo/SecretKeySpec;->c:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 179
    iget-object p2, p0, Lo/SecretKeySpec;->j:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    .line 180
    iget-object v0, p0, Lo/SecretKeySpec;->j:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AccessibilityButtonController;

    .line 181
    instance-of v1, v0, Lo/RC2ParameterSpec;

    if-eqz v1, :cond_1

    .line 182
    check-cast v0, Lo/RC2ParameterSpec;

    iget-object v1, p0, Lo/SecretKeySpec;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lo/SecretKeySpec;->b:Landroid/graphics/Matrix;

    invoke-interface {v0, v1, v2, p3}, Lo/RC2ParameterSpec;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 183
    iget-object v0, p0, Lo/SecretKeySpec;->c:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c(Ljava/lang/Object;Lo/AlarmManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lo/AlarmManager<",
            "TT;>;)V"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lo/SecretKeySpec;->i:Lo/AnimatorSet;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0, p1, p2}, Lo/AnimatorSet;->a(Ljava/lang/Object;Lo/AlarmManager;)Z

    :cond_0
    return-void
.end method

.method d()Landroid/graphics/Matrix;
    .locals 1

    .line 125
    iget-object v0, p0, Lo/SecretKeySpec;->i:Lo/AnimatorSet;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Lo/AnimatorSet;->d()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0

    .line 128
    :cond_0
    iget-object v0, p0, Lo/SecretKeySpec;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 129
    iget-object v0, p0, Lo/SecretKeySpec;->b:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public d(Lo/IntKeyframeSet;ILjava/util/List;Lo/IntKeyframeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/IntKeyframeSet;",
            "I",
            "Ljava/util/List<",
            "Lo/IntKeyframeSet;",
            ">;",
            "Lo/IntKeyframeSet;",
            ")V"
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lo/SecretKeySpec;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lo/IntKeyframeSet;->b(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-virtual {p0}, Lo/SecretKeySpec;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__container"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    invoke-virtual {p0}, Lo/SecretKeySpec;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lo/IntKeyframeSet;->e(Ljava/lang/String;)Lo/IntKeyframeSet;

    move-result-object p4

    .line 197
    invoke-virtual {p0}, Lo/SecretKeySpec;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lo/IntKeyframeSet;->c(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p4, p0}, Lo/IntKeyframeSet;->e(Lo/Keyframe;)Lo/IntKeyframeSet;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_1
    invoke-virtual {p0}, Lo/SecretKeySpec;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lo/IntKeyframeSet;->d(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    invoke-virtual {p0}, Lo/SecretKeySpec;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lo/IntKeyframeSet;->e(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr p2, v0

    const/4 v0, 0x0

    .line 204
    :goto_0
    iget-object v1, p0, Lo/SecretKeySpec;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 205
    iget-object v1, p0, Lo/SecretKeySpec;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AccessibilityButtonController;

    .line 206
    instance-of v2, v1, Lo/Keyframe;

    if-eqz v2, :cond_2

    .line 207
    check-cast v1, Lo/Keyframe;

    .line 208
    invoke-interface {v1, p1, p2, p3, p4}, Lo/Keyframe;->d(Lo/IntKeyframeSet;ILjava/util/List;Lo/IntKeyframeSet;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public e()V
    .locals 1

    .line 92
    iget-object v0, p0, Lo/SecretKeySpec;->g:Lo/DESKeySpec;

    invoke-virtual {v0}, Lo/DESKeySpec;->invalidateSelf()V

    return-void
.end method

.method public e(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 152
    iget-boolean v0, p0, Lo/SecretKeySpec;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lo/SecretKeySpec;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 157
    iget-object p2, p0, Lo/SecretKeySpec;->i:Lo/AnimatorSet;

    if-eqz p2, :cond_2

    .line 158
    iget-object v0, p0, Lo/SecretKeySpec;->b:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lo/AnimatorSet;->d()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 159
    iget-object p2, p0, Lo/SecretKeySpec;->i:Lo/AnimatorSet;

    invoke-virtual {p2}, Lo/AnimatorSet;->e()Lo/AccountManagerInternal;

    move-result-object p2

    if-nez p2, :cond_1

    const/16 p2, 0x64

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lo/SecretKeySpec;->i:Lo/AnimatorSet;

    invoke-virtual {p2}, Lo/AnimatorSet;->e()Lo/AccountManagerInternal;

    move-result-object p2

    invoke-virtual {p2}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    int-to-float p2, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    int-to-float p3, p3

    mul-float p2, p2, p3

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p2, p3

    mul-float p2, p2, p3

    float-to-int p3, p2

    .line 165
    :cond_2
    iget-object p2, p0, Lo/SecretKeySpec;->j:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_4

    .line 166
    iget-object v0, p0, Lo/SecretKeySpec;->j:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 167
    instance-of v1, v0, Lo/RC2ParameterSpec;

    if-eqz v1, :cond_3

    .line 168
    check-cast v0, Lo/RC2ParameterSpec;

    iget-object v1, p0, Lo/SecretKeySpec;->b:Landroid/graphics/Matrix;

    invoke-interface {v0, p1, v1, p3}, Lo/RC2ParameterSpec;->e(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method
