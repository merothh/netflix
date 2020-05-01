.class final Lo/Chronometer;
.super Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Chronometer$ActionBar;
    }
.end annotation


# instance fields
.field private final a:I

.field private final c:Ljava/lang/CharSequence;

.field private final d:Z

.field private final e:I

.field private final f:Landroid/graphics/drawable/Drawable;

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:Z

.field private final j:Z

.field private final k:Landroid/graphics/drawable/Drawable;

.field private final l:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

.field private final m:Landroid/view/View;

.field private final n:Lo/Fragment$StateListAnimator;

.field private final o:Z

.field private final p:I

.field private final q:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final r:I

.field private final s:Ljava/lang/CharSequence;

.field private final t:Z


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;ZIIIZLandroid/graphics/drawable/Drawable;Ljava/lang/String;ZLcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;Landroid/view/View;Lo/Fragment$StateListAnimator;Landroid/graphics/drawable/Drawable;ZLjava/lang/CharSequence;IILandroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "ZIIIZ",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;",
            "Landroid/view/View;",
            "Lo/Fragment$StateListAnimator;",
            "Landroid/graphics/drawable/Drawable;",
            "Z",
            "Ljava/lang/CharSequence;",
            "II",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    move-object v0, p0

    .line 72
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;-><init>()V

    move-object v1, p1

    .line 73
    iput-object v1, v0, Lo/Chronometer;->c:Ljava/lang/CharSequence;

    move v1, p2

    .line 74
    iput-boolean v1, v0, Lo/Chronometer;->d:Z

    move v1, p3

    .line 75
    iput v1, v0, Lo/Chronometer;->a:I

    move v1, p4

    .line 76
    iput v1, v0, Lo/Chronometer;->e:I

    move v1, p5

    .line 77
    iput v1, v0, Lo/Chronometer;->g:I

    move v1, p6

    .line 78
    iput-boolean v1, v0, Lo/Chronometer;->i:Z

    move-object v1, p7

    .line 79
    iput-object v1, v0, Lo/Chronometer;->f:Landroid/graphics/drawable/Drawable;

    move-object v1, p8

    .line 80
    iput-object v1, v0, Lo/Chronometer;->h:Ljava/lang/String;

    move v1, p9

    .line 81
    iput-boolean v1, v0, Lo/Chronometer;->j:Z

    move-object v1, p10

    .line 82
    iput-object v1, v0, Lo/Chronometer;->l:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    move-object v1, p11

    .line 83
    iput-object v1, v0, Lo/Chronometer;->m:Landroid/view/View;

    move-object v1, p12

    .line 84
    iput-object v1, v0, Lo/Chronometer;->n:Lo/Fragment$StateListAnimator;

    move-object v1, p13

    .line 85
    iput-object v1, v0, Lo/Chronometer;->k:Landroid/graphics/drawable/Drawable;

    move/from16 v1, p14

    .line 86
    iput-boolean v1, v0, Lo/Chronometer;->o:Z

    move-object/from16 v1, p15

    .line 87
    iput-object v1, v0, Lo/Chronometer;->s:Ljava/lang/CharSequence;

    move/from16 v1, p16

    .line 88
    iput v1, v0, Lo/Chronometer;->p:I

    move/from16 v1, p17

    .line 89
    iput v1, v0, Lo/Chronometer;->r:I

    move-object/from16 v1, p18

    .line 90
    iput-object v1, v0, Lo/Chronometer;->q:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;

    move/from16 v1, p19

    .line 91
    iput-boolean v1, v0, Lo/Chronometer;->t:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;ZIIIZLandroid/graphics/drawable/Drawable;Ljava/lang/String;ZLcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;Landroid/view/View;Lo/Fragment$StateListAnimator;Landroid/graphics/drawable/Drawable;ZLjava/lang/CharSequence;IILandroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;ZLo/Chronometer$4;)V
    .locals 0

    .line 13
    invoke-direct/range {p0 .. p19}, Lo/Chronometer;-><init>(Ljava/lang/CharSequence;ZIIIZLandroid/graphics/drawable/Drawable;Ljava/lang/String;ZLcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;Landroid/view/View;Lo/Fragment$StateListAnimator;Landroid/graphics/drawable/Drawable;ZLjava/lang/CharSequence;IILandroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;Z)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lo/Chronometer;->d:Z

    return v0
.end method

.method public b()I
    .locals 1

    .line 107
    iget v0, p0, Lo/Chronometer;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 117
    iget v0, p0, Lo/Chronometer;->g:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 112
    iget v0, p0, Lo/Chronometer;->e:I

    return v0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    .line 97
    iget-object v0, p0, Lo/Chronometer;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 228
    :cond_0
    instance-of v1, p1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 229
    check-cast p1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    .line 230
    iget-object v1, p0, Lo/Chronometer;->c:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->e()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->e()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_0
    iget-boolean v1, p0, Lo/Chronometer;->d:Z

    .line 231
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->a()Z

    move-result v3

    if-ne v1, v3, :cond_9

    iget v1, p0, Lo/Chronometer;->a:I

    .line 232
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->b()I

    move-result v3

    if-ne v1, v3, :cond_9

    iget v1, p0, Lo/Chronometer;->e:I

    .line 233
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->d()I

    move-result v3

    if-ne v1, v3, :cond_9

    iget v1, p0, Lo/Chronometer;->g:I

    .line 234
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->c()I

    move-result v3

    if-ne v1, v3, :cond_9

    iget-boolean v1, p0, Lo/Chronometer;->i:Z

    .line 235
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->i()Z

    move-result v3

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Lo/Chronometer;->f:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 236
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_1
    iget-object v1, p0, Lo/Chronometer;->h:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 237
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->g()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_2
    iget-boolean v1, p0, Lo/Chronometer;->j:Z

    .line 238
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->f()Z

    move-result v3

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Lo/Chronometer;->l:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    .line 239
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->h()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lo/Chronometer;->m:Landroid/view/View;

    if-nez v1, :cond_4

    .line 240
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->k()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->k()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_3
    iget-object v1, p0, Lo/Chronometer;->n:Lo/Fragment$StateListAnimator;

    if-nez v1, :cond_5

    .line 241
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->o()Lo/Fragment$StateListAnimator;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->o()Lo/Fragment$StateListAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_4
    iget-object v1, p0, Lo/Chronometer;->k:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_6

    .line 242
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_5
    iget-boolean v1, p0, Lo/Chronometer;->o:Z

    .line 243
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->n()Z

    move-result v3

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Lo/Chronometer;->s:Ljava/lang/CharSequence;

    if-nez v1, :cond_7

    .line 244
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->m()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->m()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_6
    iget v1, p0, Lo/Chronometer;->p:I

    .line 245
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->r()I

    move-result v3

    if-ne v1, v3, :cond_9

    iget v1, p0, Lo/Chronometer;->r:I

    .line 246
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->t()I

    move-result v3

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Lo/Chronometer;->q:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;

    if-nez v1, :cond_8

    .line 247
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->p()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_7

    :cond_8
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->p()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_7
    iget-boolean v1, p0, Lo/Chronometer;->t:Z

    .line 248
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->q()Z

    move-result p1

    if-ne v1, p1, :cond_9

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_a
    return v2
.end method

.method public f()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lo/Chronometer;->j:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lo/Chronometer;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;
    .locals 1

    .line 145
    iget-object v0, p0, Lo/Chronometer;->l:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 257
    iget-object v0, p0, Lo/Chronometer;->c:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 259
    iget-boolean v3, p0, Lo/Chronometer;->d:Z

    const/16 v4, 0x4cf

    const/16 v5, 0x4d5

    if-eqz v3, :cond_1

    const/16 v3, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v3, 0x4d5

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 261
    iget v3, p0, Lo/Chronometer;->a:I

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 263
    iget v3, p0, Lo/Chronometer;->e:I

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 265
    iget v3, p0, Lo/Chronometer;->g:I

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 267
    iget-boolean v3, p0, Lo/Chronometer;->i:Z

    if-eqz v3, :cond_2

    const/16 v3, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v3, 0x4d5

    :goto_2
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 269
    iget-object v3, p0, Lo/Chronometer;->f:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 271
    iget-object v3, p0, Lo/Chronometer;->h:Ljava/lang/String;

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 273
    iget-boolean v3, p0, Lo/Chronometer;->j:Z

    if-eqz v3, :cond_5

    const/16 v3, 0x4cf

    goto :goto_5

    :cond_5
    const/16 v3, 0x4d5

    :goto_5
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 275
    iget-object v3, p0, Lo/Chronometer;->l:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 277
    iget-object v3, p0, Lo/Chronometer;->m:Landroid/view/View;

    if-nez v3, :cond_6

    const/4 v3, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_6
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 279
    iget-object v3, p0, Lo/Chronometer;->n:Lo/Fragment$StateListAnimator;

    if-nez v3, :cond_7

    const/4 v3, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_7
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 281
    iget-object v3, p0, Lo/Chronometer;->k:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_8

    const/4 v3, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_8
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 283
    iget-boolean v3, p0, Lo/Chronometer;->o:Z

    if-eqz v3, :cond_9

    const/16 v3, 0x4cf

    goto :goto_9

    :cond_9
    const/16 v3, 0x4d5

    :goto_9
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 285
    iget-object v3, p0, Lo/Chronometer;->s:Ljava/lang/CharSequence;

    if-nez v3, :cond_a

    const/4 v3, 0x0

    goto :goto_a

    :cond_a
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_a
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 287
    iget v3, p0, Lo/Chronometer;->p:I

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 289
    iget v3, p0, Lo/Chronometer;->r:I

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 291
    iget-object v3, p0, Lo/Chronometer;->q:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;

    if-nez v3, :cond_b

    goto :goto_b

    :cond_b
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_b
    xor-int/2addr v0, v1

    mul-int v0, v0, v2

    .line 293
    iget-boolean v1, p0, Lo/Chronometer;->t:Z

    if-eqz v1, :cond_c

    goto :goto_c

    :cond_c
    const/16 v4, 0x4d5

    :goto_c
    xor-int/2addr v0, v4

    return v0
.end method

.method public i()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lo/Chronometer;->i:Z

    return v0
.end method

.method public j()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 128
    iget-object v0, p0, Lo/Chronometer;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public k()Landroid/view/View;
    .locals 1

    .line 151
    iget-object v0, p0, Lo/Chronometer;->m:Landroid/view/View;

    return-object v0
.end method

.method public l()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 163
    iget-object v0, p0, Lo/Chronometer;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public m()Ljava/lang/CharSequence;
    .locals 1

    .line 174
    iget-object v0, p0, Lo/Chronometer;->s:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lo/Chronometer;->o:Z

    return v0
.end method

.method public o()Lo/Fragment$StateListAnimator;
    .locals 1

    .line 157
    iget-object v0, p0, Lo/Chronometer;->n:Lo/Fragment$StateListAnimator;

    return-object v0
.end method

.method public p()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lo/Chronometer;->q:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;

    return-object v0
.end method

.method public q()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lo/Chronometer;->t:Z

    return v0
.end method

.method public r()I
    .locals 1

    .line 179
    iget v0, p0, Lo/Chronometer;->p:I

    return v0
.end method

.method public t()I
    .locals 1

    .line 184
    iget v0, p0, Lo/Chronometer;->r:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State{title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Chronometer;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", titleVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/Chronometer;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", titleAlignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/Chronometer;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", titleColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/Chronometer;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", titleAppearance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/Chronometer;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", upActionVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/Chronometer;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", upDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Chronometer;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", upContentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Chronometer;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", logoVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/Chronometer;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", logoType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Chronometer;->l:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Chronometer;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customLayoutParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Chronometer;->n:Lo/Fragment$StateListAnimator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Chronometer;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hideOnScroll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/Chronometer;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", subtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Chronometer;->s:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subtitleColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/Chronometer;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subtitleAppearance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/Chronometer;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", behavior="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Chronometer;->q:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", makeStatusBarMatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/Chronometer;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
