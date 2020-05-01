.class public Lo/MenuInflater$StateListAnimator;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MenuInflater$StateListAnimator$Application;
    }
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field B:F

.field public C:F

.field public D:F

.field public E:I

.field public F:I

.field public G:F

.field public H:I

.field public I:F

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:F

.field public S:F

.field T:Z

.field public U:Z

.field V:Z

.field public W:Z

.field X:Z

.field Y:Z

.field Z:Z

.field public a:F

.field aa:Z

.field ab:I

.field ac:I

.field ad:F

.field ae:I

.field af:I

.field ag:I

.field ah:I

.field ai:I

.field aj:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field ak:F

.field al:I

.field public am:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:F

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field z:I


# direct methods
.method public constructor <init>(II)V
    .locals 4

    .line 3040
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, -0x1

    .line 2166
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->b:I

    .line 2171
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->c:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 2176
    iput p2, p0, Lo/MenuInflater$StateListAnimator;->a:F

    .line 2181
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->e:I

    .line 2186
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->d:I

    .line 2191
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->h:I

    .line 2196
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->i:I

    .line 2201
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->j:I

    .line 2206
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->f:I

    .line 2211
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->g:I

    .line 2216
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->o:I

    .line 2221
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->m:I

    .line 2226
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->l:I

    const/4 v0, 0x0

    .line 2231
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->n:I

    const/4 v1, 0x0

    .line 2236
    iput v1, p0, Lo/MenuInflater$StateListAnimator;->k:F

    .line 2241
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->q:I

    .line 2246
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->r:I

    .line 2251
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->t:I

    .line 2256
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->s:I

    .line 2261
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->p:I

    .line 2266
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->v:I

    .line 2271
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->y:I

    .line 2276
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->x:I

    .line 2281
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->w:I

    .line 2286
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->u:I

    const/high16 v2, 0x3f000000    # 0.5f

    .line 2291
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->D:F

    .line 2296
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->C:F

    const/4 v3, 0x0

    .line 2301
    iput-object v3, p0, Lo/MenuInflater$StateListAnimator;->A:Ljava/lang/String;

    .line 2306
    iput v1, p0, Lo/MenuInflater$StateListAnimator;->B:F

    const/4 v1, 0x1

    .line 2311
    iput v1, p0, Lo/MenuInflater$StateListAnimator;->z:I

    .line 2317
    iput p2, p0, Lo/MenuInflater$StateListAnimator;->G:F

    .line 2323
    iput p2, p0, Lo/MenuInflater$StateListAnimator;->I:F

    .line 2335
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->F:I

    .line 2347
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->E:I

    .line 2360
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->H:I

    .line 2373
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->M:I

    .line 2379
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->J:I

    .line 2385
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->L:I

    .line 2391
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->K:I

    .line 2397
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->N:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 2402
    iput p2, p0, Lo/MenuInflater$StateListAnimator;->S:F

    .line 2407
    iput p2, p0, Lo/MenuInflater$StateListAnimator;->R:F

    .line 2413
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->P:I

    .line 2419
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->O:I

    .line 2421
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->Q:I

    .line 2430
    iput-boolean v0, p0, Lo/MenuInflater$StateListAnimator;->U:Z

    .line 2439
    iput-boolean v0, p0, Lo/MenuInflater$StateListAnimator;->W:Z

    .line 2442
    iput-boolean v1, p0, Lo/MenuInflater$StateListAnimator;->X:Z

    .line 2443
    iput-boolean v1, p0, Lo/MenuInflater$StateListAnimator;->T:Z

    .line 2445
    iput-boolean v0, p0, Lo/MenuInflater$StateListAnimator;->V:Z

    .line 2446
    iput-boolean v0, p0, Lo/MenuInflater$StateListAnimator;->aa:Z

    .line 2447
    iput-boolean v0, p0, Lo/MenuInflater$StateListAnimator;->Y:Z

    .line 2448
    iput-boolean v0, p0, Lo/MenuInflater$StateListAnimator;->Z:Z

    .line 2450
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->ab:I

    .line 2451
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->ac:I

    .line 2452
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->ag:I

    .line 2453
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->af:I

    .line 2454
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->ae:I

    .line 2455
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->ah:I

    .line 2456
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->ad:F

    .line 2462
    new-instance p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-direct {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    iput-object p1, p0, Lo/MenuInflater$StateListAnimator;->aj:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2470
    iput-boolean v0, p0, Lo/MenuInflater$StateListAnimator;->am:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 2649
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 2166
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->b:I

    .line 2171
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->c:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 2176
    iput v1, p0, Lo/MenuInflater$StateListAnimator;->a:F

    .line 2181
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->e:I

    .line 2186
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->d:I

    .line 2191
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->h:I

    .line 2196
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->i:I

    .line 2201
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->j:I

    .line 2206
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->f:I

    .line 2211
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->g:I

    .line 2216
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->o:I

    .line 2221
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->m:I

    .line 2226
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->l:I

    const/4 v2, 0x0

    .line 2231
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->n:I

    const/4 v3, 0x0

    .line 2236
    iput v3, p0, Lo/MenuInflater$StateListAnimator;->k:F

    .line 2241
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->q:I

    .line 2246
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->r:I

    .line 2251
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->t:I

    .line 2256
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->s:I

    .line 2261
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->p:I

    .line 2266
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->v:I

    .line 2271
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->y:I

    .line 2276
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->x:I

    .line 2281
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->w:I

    .line 2286
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->u:I

    const/high16 v4, 0x3f000000    # 0.5f

    .line 2291
    iput v4, p0, Lo/MenuInflater$StateListAnimator;->D:F

    .line 2296
    iput v4, p0, Lo/MenuInflater$StateListAnimator;->C:F

    const/4 v5, 0x0

    .line 2301
    iput-object v5, p0, Lo/MenuInflater$StateListAnimator;->A:Ljava/lang/String;

    .line 2306
    iput v3, p0, Lo/MenuInflater$StateListAnimator;->B:F

    const/4 v5, 0x1

    .line 2311
    iput v5, p0, Lo/MenuInflater$StateListAnimator;->z:I

    .line 2317
    iput v1, p0, Lo/MenuInflater$StateListAnimator;->G:F

    .line 2323
    iput v1, p0, Lo/MenuInflater$StateListAnimator;->I:F

    .line 2335
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->F:I

    .line 2347
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->E:I

    .line 2360
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->H:I

    .line 2373
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->M:I

    .line 2379
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->J:I

    .line 2385
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->L:I

    .line 2391
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->K:I

    .line 2397
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->N:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2402
    iput v1, p0, Lo/MenuInflater$StateListAnimator;->S:F

    .line 2407
    iput v1, p0, Lo/MenuInflater$StateListAnimator;->R:F

    .line 2413
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->P:I

    .line 2419
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->O:I

    .line 2421
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->Q:I

    .line 2430
    iput-boolean v2, p0, Lo/MenuInflater$StateListAnimator;->U:Z

    .line 2439
    iput-boolean v2, p0, Lo/MenuInflater$StateListAnimator;->W:Z

    .line 2442
    iput-boolean v5, p0, Lo/MenuInflater$StateListAnimator;->X:Z

    .line 2443
    iput-boolean v5, p0, Lo/MenuInflater$StateListAnimator;->T:Z

    .line 2445
    iput-boolean v2, p0, Lo/MenuInflater$StateListAnimator;->V:Z

    .line 2446
    iput-boolean v2, p0, Lo/MenuInflater$StateListAnimator;->aa:Z

    .line 2447
    iput-boolean v2, p0, Lo/MenuInflater$StateListAnimator;->Y:Z

    .line 2448
    iput-boolean v2, p0, Lo/MenuInflater$StateListAnimator;->Z:Z

    .line 2450
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->ab:I

    .line 2451
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->ac:I

    .line 2452
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->ag:I

    .line 2453
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->af:I

    .line 2454
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->ae:I

    .line 2455
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->ah:I

    .line 2456
    iput v4, p0, Lo/MenuInflater$StateListAnimator;->ad:F

    .line 2462
    new-instance v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-direct {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v1, p0, Lo/MenuInflater$StateListAnimator;->aj:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2470
    iput-boolean v2, p0, Lo/MenuInflater$StateListAnimator;->am:Z

    .line 2650
    sget-object v1, Lo/PointerIcon$TaskDescription;->d:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2651
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_6

    .line 2653
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 2654
    sget-object v6, Lo/MenuInflater$StateListAnimator$Application;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    const-string v7, "ConstraintLayout"

    const/4 v8, -0x2

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 2746
    :pswitch_1
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->O:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->O:I

    goto/16 :goto_3

    .line 2742
    :pswitch_2
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->P:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->P:I

    goto/16 :goto_3

    .line 2892
    :pswitch_3
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->E:I

    goto/16 :goto_3

    .line 2888
    :pswitch_4
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->F:I

    goto/16 :goto_3

    .line 2884
    :pswitch_5
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->I:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->I:F

    goto/16 :goto_3

    .line 2880
    :pswitch_6
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->G:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->G:F

    goto/16 :goto_3

    .line 2830
    :pswitch_7
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lo/MenuInflater$StateListAnimator;->A:Ljava/lang/String;

    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 2831
    iput v4, p0, Lo/MenuInflater$StateListAnimator;->B:F

    .line 2832
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->z:I

    .line 2833
    iget-object v4, p0, Lo/MenuInflater$StateListAnimator;->A:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 2834
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 2835
    iget-object v6, p0, Lo/MenuInflater$StateListAnimator;->A:Ljava/lang/String;

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_2

    add-int/lit8 v7, v4, -0x1

    if-ge v6, v7, :cond_2

    .line 2837
    iget-object v7, p0, Lo/MenuInflater$StateListAnimator;->A:Ljava/lang/String;

    invoke-virtual {v7, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "W"

    .line 2838
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2839
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->z:I

    goto :goto_1

    :cond_0
    const-string v8, "H"

    .line 2840
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2841
    iput v5, p0, Lo/MenuInflater$StateListAnimator;->z:I

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 2847
    :goto_2
    iget-object v7, p0, Lo/MenuInflater$StateListAnimator;->A:Ljava/lang/String;

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_4

    add-int/lit8 v4, v4, -0x1

    if-ge v7, v4, :cond_4

    .line 2849
    iget-object v4, p0, Lo/MenuInflater$StateListAnimator;->A:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2850
    iget-object v6, p0, Lo/MenuInflater$StateListAnimator;->A:Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 2851
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 2853
    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 2854
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    cmpl-float v7, v4, v3

    if-lez v7, :cond_5

    cmpl-float v7, v6, v3

    if-lez v7, :cond_5

    .line 2856
    iget v7, p0, Lo/MenuInflater$StateListAnimator;->z:I

    if-ne v7, v5, :cond_3

    div-float/2addr v6, v4

    .line 2857
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->B:F

    goto/16 :goto_3

    :cond_3
    div-float/2addr v4, v6

    .line 2859
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->B:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_3

    .line 2867
    :cond_4
    iget-object v4, p0, Lo/MenuInflater$StateListAnimator;->A:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2868
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 2870
    :try_start_1
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->B:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_3

    .line 2968
    :pswitch_8
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->R:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->R:F

    goto/16 :goto_3

    .line 2958
    :pswitch_9
    :try_start_2
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->N:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lo/MenuInflater$StateListAnimator;->N:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :catch_0
    nop

    .line 2960
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->N:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 2962
    iput v8, p0, Lo/MenuInflater$StateListAnimator;->N:I

    goto/16 :goto_3

    .line 2947
    :pswitch_a
    :try_start_3
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->L:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lo/MenuInflater$StateListAnimator;->L:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    :catch_1
    nop

    .line 2949
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->L:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 2951
    iput v8, p0, Lo/MenuInflater$StateListAnimator;->L:I

    goto/16 :goto_3

    .line 2942
    :pswitch_b
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->S:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->S:F

    goto/16 :goto_3

    .line 2932
    :pswitch_c
    :try_start_4
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->K:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lo/MenuInflater$StateListAnimator;->K:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    :catch_2
    nop

    .line 2934
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->K:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 2936
    iput v8, p0, Lo/MenuInflater$StateListAnimator;->K:I

    goto/16 :goto_3

    .line 2921
    :pswitch_d
    :try_start_5
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->J:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lo/MenuInflater$StateListAnimator;->J:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    :catch_3
    nop

    .line 2923
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->J:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 2925
    iput v8, p0, Lo/MenuInflater$StateListAnimator;->J:I

    goto/16 :goto_3

    .line 2912
    :pswitch_e
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->M:I

    .line 2913
    iget v4, p0, Lo/MenuInflater$StateListAnimator;->M:I

    if-ne v4, v5, :cond_5

    const-string v4, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead."

    .line 2914
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2904
    :pswitch_f
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->H:I

    .line 2905
    iget v4, p0, Lo/MenuInflater$StateListAnimator;->H:I

    if-ne v4, v5, :cond_5

    const-string v4, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead."

    .line 2906
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2826
    :pswitch_10
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->C:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->C:F

    goto/16 :goto_3

    .line 2822
    :pswitch_11
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->D:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->D:F

    goto/16 :goto_3

    .line 2900
    :pswitch_12
    iget-boolean v6, p0, Lo/MenuInflater$StateListAnimator;->W:Z

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lo/MenuInflater$StateListAnimator;->W:Z

    goto/16 :goto_3

    .line 2896
    :pswitch_13
    iget-boolean v6, p0, Lo/MenuInflater$StateListAnimator;->U:Z

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lo/MenuInflater$StateListAnimator;->U:Z

    goto/16 :goto_3

    .line 2818
    :pswitch_14
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->u:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->u:I

    goto/16 :goto_3

    .line 2814
    :pswitch_15
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->w:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->w:I

    goto/16 :goto_3

    .line 2810
    :pswitch_16
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->x:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->x:I

    goto/16 :goto_3

    .line 2806
    :pswitch_17
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->y:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->y:I

    goto/16 :goto_3

    .line 2802
    :pswitch_18
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->v:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->v:I

    goto/16 :goto_3

    .line 2798
    :pswitch_19
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->p:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->p:I

    goto/16 :goto_3

    .line 2791
    :pswitch_1a
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->s:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/MenuInflater$StateListAnimator;->s:I

    .line 2792
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->s:I

    if-ne v6, v0, :cond_5

    .line 2793
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->s:I

    goto/16 :goto_3

    .line 2784
    :pswitch_1b
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->t:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/MenuInflater$StateListAnimator;->t:I

    .line 2785
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->t:I

    if-ne v6, v0, :cond_5

    .line 2786
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->t:I

    goto/16 :goto_3

    .line 2777
    :pswitch_1c
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->r:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/MenuInflater$StateListAnimator;->r:I

    .line 2778
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->r:I

    if-ne v6, v0, :cond_5

    .line 2779
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->r:I

    goto/16 :goto_3

    .line 2770
    :pswitch_1d
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->q:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/MenuInflater$StateListAnimator;->q:I

    .line 2771
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->q:I

    if-ne v6, v0, :cond_5

    .line 2772
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->q:I

    goto/16 :goto_3

    .line 2717
    :pswitch_1e
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->m:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/MenuInflater$StateListAnimator;->m:I

    .line 2718
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->m:I

    if-ne v6, v0, :cond_5

    .line 2719
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->m:I

    goto/16 :goto_3

    .line 2710
    :pswitch_1f
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->o:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/MenuInflater$StateListAnimator;->o:I

    .line 2711
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->o:I

    if-ne v6, v0, :cond_5

    .line 2712
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->o:I

    goto/16 :goto_3

    .line 2703
    :pswitch_20
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->g:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/MenuInflater$StateListAnimator;->g:I

    .line 2704
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->g:I

    if-ne v6, v0, :cond_5

    .line 2705
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->g:I

    goto/16 :goto_3

    .line 2696
    :pswitch_21
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->f:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/MenuInflater$StateListAnimator;->f:I

    .line 2697
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->f:I

    if-ne v6, v0, :cond_5

    .line 2698
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->f:I

    goto/16 :goto_3

    .line 2689
    :pswitch_22
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->j:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/MenuInflater$StateListAnimator;->j:I

    .line 2690
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->j:I

    if-ne v6, v0, :cond_5

    .line 2691
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->j:I

    goto/16 :goto_3

    .line 2682
    :pswitch_23
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->i:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/MenuInflater$StateListAnimator;->i:I

    .line 2683
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->i:I

    if-ne v6, v0, :cond_5

    .line 2684
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->i:I

    goto/16 :goto_3

    .line 2675
    :pswitch_24
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->h:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/MenuInflater$StateListAnimator;->h:I

    .line 2676
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->h:I

    if-ne v6, v0, :cond_5

    .line 2677
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->h:I

    goto/16 :goto_3

    .line 2668
    :pswitch_25
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->d:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/MenuInflater$StateListAnimator;->d:I

    .line 2669
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->d:I

    if-ne v6, v0, :cond_5

    .line 2670
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->d:I

    goto :goto_3

    .line 2661
    :pswitch_26
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->e:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/MenuInflater$StateListAnimator;->e:I

    .line 2662
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->e:I

    if-ne v6, v0, :cond_5

    .line 2663
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->e:I

    goto :goto_3

    .line 2760
    :pswitch_27
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->a:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->a:F

    goto :goto_3

    .line 2755
    :pswitch_28
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->c:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->c:I

    goto :goto_3

    .line 2750
    :pswitch_29
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->b:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->b:I

    goto :goto_3

    .line 2735
    :pswitch_2a
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->k:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v4, v6

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->k:F

    .line 2736
    iget v4, p0, Lo/MenuInflater$StateListAnimator;->k:F

    cmpg-float v7, v4, v3

    if-gez v7, :cond_5

    sub-float v4, v6, v4

    rem-float/2addr v4, v6

    .line 2737
    iput v4, p0, Lo/MenuInflater$StateListAnimator;->k:F

    goto :goto_3

    .line 2731
    :pswitch_2b
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->n:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->n:I

    goto :goto_3

    .line 2724
    :pswitch_2c
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->l:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lo/MenuInflater$StateListAnimator;->l:I

    .line 2725
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->l:I

    if-ne v6, v0, :cond_5

    .line 2726
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->l:I

    goto :goto_3

    .line 2765
    :pswitch_2d
    iget v6, p0, Lo/MenuInflater$StateListAnimator;->Q:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lo/MenuInflater$StateListAnimator;->Q:I

    :catch_4
    :cond_5
    :goto_3
    :pswitch_2e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2993
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2994
    invoke-virtual {p0}, Lo/MenuInflater$StateListAnimator;->b()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    .line 3044
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    .line 2166
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->b:I

    .line 2171
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->c:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 2176
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->a:F

    .line 2181
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->e:I

    .line 2186
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->d:I

    .line 2191
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->h:I

    .line 2196
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->i:I

    .line 2201
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->j:I

    .line 2206
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->f:I

    .line 2211
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->g:I

    .line 2216
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->o:I

    .line 2221
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->m:I

    .line 2226
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->l:I

    const/4 v1, 0x0

    .line 2231
    iput v1, p0, Lo/MenuInflater$StateListAnimator;->n:I

    const/4 v2, 0x0

    .line 2236
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->k:F

    .line 2241
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->q:I

    .line 2246
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->r:I

    .line 2251
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->t:I

    .line 2256
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->s:I

    .line 2261
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->p:I

    .line 2266
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->v:I

    .line 2271
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->y:I

    .line 2276
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->x:I

    .line 2281
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->w:I

    .line 2286
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->u:I

    const/high16 v3, 0x3f000000    # 0.5f

    .line 2291
    iput v3, p0, Lo/MenuInflater$StateListAnimator;->D:F

    .line 2296
    iput v3, p0, Lo/MenuInflater$StateListAnimator;->C:F

    const/4 v4, 0x0

    .line 2301
    iput-object v4, p0, Lo/MenuInflater$StateListAnimator;->A:Ljava/lang/String;

    .line 2306
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->B:F

    const/4 v2, 0x1

    .line 2311
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->z:I

    .line 2317
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->G:F

    .line 2323
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->I:F

    .line 2335
    iput v1, p0, Lo/MenuInflater$StateListAnimator;->F:I

    .line 2347
    iput v1, p0, Lo/MenuInflater$StateListAnimator;->E:I

    .line 2360
    iput v1, p0, Lo/MenuInflater$StateListAnimator;->H:I

    .line 2373
    iput v1, p0, Lo/MenuInflater$StateListAnimator;->M:I

    .line 2379
    iput v1, p0, Lo/MenuInflater$StateListAnimator;->J:I

    .line 2385
    iput v1, p0, Lo/MenuInflater$StateListAnimator;->L:I

    .line 2391
    iput v1, p0, Lo/MenuInflater$StateListAnimator;->K:I

    .line 2397
    iput v1, p0, Lo/MenuInflater$StateListAnimator;->N:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2402
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->S:F

    .line 2407
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->R:F

    .line 2413
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->P:I

    .line 2419
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->O:I

    .line 2421
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->Q:I

    .line 2430
    iput-boolean v1, p0, Lo/MenuInflater$StateListAnimator;->U:Z

    .line 2439
    iput-boolean v1, p0, Lo/MenuInflater$StateListAnimator;->W:Z

    .line 2442
    iput-boolean v2, p0, Lo/MenuInflater$StateListAnimator;->X:Z

    .line 2443
    iput-boolean v2, p0, Lo/MenuInflater$StateListAnimator;->T:Z

    .line 2445
    iput-boolean v1, p0, Lo/MenuInflater$StateListAnimator;->V:Z

    .line 2446
    iput-boolean v1, p0, Lo/MenuInflater$StateListAnimator;->aa:Z

    .line 2447
    iput-boolean v1, p0, Lo/MenuInflater$StateListAnimator;->Y:Z

    .line 2448
    iput-boolean v1, p0, Lo/MenuInflater$StateListAnimator;->Z:Z

    .line 2450
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->ab:I

    .line 2451
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->ac:I

    .line 2452
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->ag:I

    .line 2453
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->af:I

    .line 2454
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->ae:I

    .line 2455
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->ah:I

    .line 2456
    iput v3, p0, Lo/MenuInflater$StateListAnimator;->ad:F

    .line 2462
    new-instance p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-direct {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    iput-object p1, p0, Lo/MenuInflater$StateListAnimator;->aj:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2470
    iput-boolean v1, p0, Lo/MenuInflater$StateListAnimator;->am:Z

    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    const/4 v0, 0x0

    .line 2998
    iput-boolean v0, p0, Lo/MenuInflater$StateListAnimator;->aa:Z

    const/4 v1, 0x1

    .line 2999
    iput-boolean v1, p0, Lo/MenuInflater$StateListAnimator;->X:Z

    .line 3000
    iput-boolean v1, p0, Lo/MenuInflater$StateListAnimator;->T:Z

    .line 3001
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->width:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lo/MenuInflater$StateListAnimator;->U:Z

    if-eqz v2, :cond_0

    .line 3002
    iput-boolean v0, p0, Lo/MenuInflater$StateListAnimator;->X:Z

    .line 3003
    iput v1, p0, Lo/MenuInflater$StateListAnimator;->H:I

    .line 3005
    :cond_0
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->height:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lo/MenuInflater$StateListAnimator;->W:Z

    if-eqz v2, :cond_1

    .line 3006
    iput-boolean v0, p0, Lo/MenuInflater$StateListAnimator;->T:Z

    .line 3007
    iput v1, p0, Lo/MenuInflater$StateListAnimator;->M:I

    .line 3009
    :cond_1
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->width:I

    const/4 v4, -0x1

    if-eqz v2, :cond_2

    iget v2, p0, Lo/MenuInflater$StateListAnimator;->width:I

    if-ne v2, v4, :cond_3

    .line 3010
    :cond_2
    iput-boolean v0, p0, Lo/MenuInflater$StateListAnimator;->X:Z

    .line 3014
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->width:I

    if-nez v2, :cond_3

    iget v2, p0, Lo/MenuInflater$StateListAnimator;->H:I

    if-ne v2, v1, :cond_3

    .line 3015
    iput v3, p0, Lo/MenuInflater$StateListAnimator;->width:I

    .line 3016
    iput-boolean v1, p0, Lo/MenuInflater$StateListAnimator;->U:Z

    .line 3019
    :cond_3
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->height:I

    if-eqz v2, :cond_4

    iget v2, p0, Lo/MenuInflater$StateListAnimator;->height:I

    if-ne v2, v4, :cond_5

    .line 3020
    :cond_4
    iput-boolean v0, p0, Lo/MenuInflater$StateListAnimator;->T:Z

    .line 3024
    iget v0, p0, Lo/MenuInflater$StateListAnimator;->height:I

    if-nez v0, :cond_5

    iget v0, p0, Lo/MenuInflater$StateListAnimator;->M:I

    if-ne v0, v1, :cond_5

    .line 3025
    iput v3, p0, Lo/MenuInflater$StateListAnimator;->height:I

    .line 3026
    iput-boolean v1, p0, Lo/MenuInflater$StateListAnimator;->W:Z

    .line 3029
    :cond_5
    iget v0, p0, Lo/MenuInflater$StateListAnimator;->a:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6

    iget v0, p0, Lo/MenuInflater$StateListAnimator;->b:I

    if-ne v0, v4, :cond_6

    iget v0, p0, Lo/MenuInflater$StateListAnimator;->c:I

    if-eq v0, v4, :cond_8

    .line 3030
    :cond_6
    iput-boolean v1, p0, Lo/MenuInflater$StateListAnimator;->aa:Z

    .line 3031
    iput-boolean v1, p0, Lo/MenuInflater$StateListAnimator;->X:Z

    .line 3032
    iput-boolean v1, p0, Lo/MenuInflater$StateListAnimator;->T:Z

    .line 3033
    iget-object v0, p0, Lo/MenuInflater$StateListAnimator;->aj:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    instance-of v0, v0, Lo/ContextMenuInfo;

    if-nez v0, :cond_7

    .line 3034
    new-instance v0, Lo/ContextMenuInfo;

    invoke-direct {v0}, Lo/ContextMenuInfo;-><init>()V

    iput-object v0, p0, Lo/MenuInflater$StateListAnimator;->aj:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 3036
    :cond_7
    iget-object v0, p0, Lo/MenuInflater$StateListAnimator;->aj:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v0, Lo/ContextMenuInfo;

    iget v1, p0, Lo/MenuInflater$StateListAnimator;->Q:I

    invoke-virtual {v0, v1}, Lo/ContextMenuInfo;->d(I)V

    :cond_8
    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 3053
    iget v0, p0, Lo/MenuInflater$StateListAnimator;->leftMargin:I

    .line 3054
    iget v1, p0, Lo/MenuInflater$StateListAnimator;->rightMargin:I

    .line 3056
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    const/4 p1, -0x1

    .line 3058
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->ag:I

    .line 3059
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->af:I

    .line 3060
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->ab:I

    .line 3061
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->ac:I

    .line 3063
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->ae:I

    .line 3064
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->ah:I

    .line 3065
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->p:I

    iput v2, p0, Lo/MenuInflater$StateListAnimator;->ae:I

    .line 3066
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->y:I

    iput v2, p0, Lo/MenuInflater$StateListAnimator;->ah:I

    .line 3067
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->D:F

    iput v2, p0, Lo/MenuInflater$StateListAnimator;->ad:F

    .line 3069
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->b:I

    iput v2, p0, Lo/MenuInflater$StateListAnimator;->al:I

    .line 3070
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->c:I

    iput v2, p0, Lo/MenuInflater$StateListAnimator;->ai:I

    .line 3071
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->a:F

    iput v2, p0, Lo/MenuInflater$StateListAnimator;->ak:F

    .line 3073
    invoke-virtual {p0}, Lo/MenuInflater$StateListAnimator;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v4, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_a

    .line 3077
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->q:I

    if-eq v2, p1, :cond_1

    .line 3078
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->ag:I

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    .line 3080
    :cond_1
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->r:I

    if-eq v2, p1, :cond_2

    .line 3081
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->af:I

    goto :goto_1

    .line 3084
    :cond_2
    :goto_2
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->t:I

    if-eq v2, p1, :cond_3

    .line 3085
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->ac:I

    const/4 v3, 0x1

    .line 3088
    :cond_3
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->s:I

    if-eq v2, p1, :cond_4

    .line 3089
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->ab:I

    const/4 v3, 0x1

    .line 3092
    :cond_4
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->w:I

    if-eq v2, p1, :cond_5

    .line 3093
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->ah:I

    .line 3095
    :cond_5
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->u:I

    if-eq v2, p1, :cond_6

    .line 3096
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->ae:I

    :cond_6
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v3, :cond_7

    .line 3099
    iget v3, p0, Lo/MenuInflater$StateListAnimator;->D:F

    sub-float v3, v2, v3

    iput v3, p0, Lo/MenuInflater$StateListAnimator;->ad:F

    .line 3103
    :cond_7
    iget-boolean v3, p0, Lo/MenuInflater$StateListAnimator;->aa:Z

    if-eqz v3, :cond_10

    iget v3, p0, Lo/MenuInflater$StateListAnimator;->Q:I

    if-ne v3, v4, :cond_10

    .line 3104
    iget v3, p0, Lo/MenuInflater$StateListAnimator;->a:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_8

    sub-float/2addr v2, v3

    .line 3105
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->ak:F

    .line 3106
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->al:I

    .line 3107
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->ai:I

    goto :goto_3

    .line 3108
    :cond_8
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->b:I

    if-eq v2, p1, :cond_9

    .line 3109
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->ai:I

    .line 3110
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->al:I

    .line 3111
    iput v4, p0, Lo/MenuInflater$StateListAnimator;->ak:F

    goto :goto_3

    .line 3112
    :cond_9
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->c:I

    if-eq v2, p1, :cond_10

    .line 3113
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->al:I

    .line 3114
    iput p1, p0, Lo/MenuInflater$StateListAnimator;->ai:I

    .line 3115
    iput v4, p0, Lo/MenuInflater$StateListAnimator;->ak:F

    goto :goto_3

    .line 3119
    :cond_a
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->q:I

    if-eq v2, p1, :cond_b

    .line 3120
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->ac:I

    .line 3122
    :cond_b
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->r:I

    if-eq v2, p1, :cond_c

    .line 3123
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->ab:I

    .line 3125
    :cond_c
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->t:I

    if-eq v2, p1, :cond_d

    .line 3126
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->ag:I

    .line 3128
    :cond_d
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->s:I

    if-eq v2, p1, :cond_e

    .line 3129
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->af:I

    .line 3131
    :cond_e
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->w:I

    if-eq v2, p1, :cond_f

    .line 3132
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->ae:I

    .line 3134
    :cond_f
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->u:I

    if-eq v2, p1, :cond_10

    .line 3135
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->ah:I

    .line 3139
    :cond_10
    :goto_3
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->t:I

    if-ne v2, p1, :cond_14

    iget v2, p0, Lo/MenuInflater$StateListAnimator;->s:I

    if-ne v2, p1, :cond_14

    iget v2, p0, Lo/MenuInflater$StateListAnimator;->r:I

    if-ne v2, p1, :cond_14

    iget v2, p0, Lo/MenuInflater$StateListAnimator;->q:I

    if-ne v2, p1, :cond_14

    .line 3141
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->h:I

    if-eq v2, p1, :cond_11

    .line 3142
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->ag:I

    .line 3143
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->rightMargin:I

    if-gtz v2, :cond_12

    if-lez v1, :cond_12

    .line 3144
    iput v1, p0, Lo/MenuInflater$StateListAnimator;->rightMargin:I

    goto :goto_4

    .line 3146
    :cond_11
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->i:I

    if-eq v2, p1, :cond_12

    .line 3147
    iput v2, p0, Lo/MenuInflater$StateListAnimator;->af:I

    .line 3148
    iget v2, p0, Lo/MenuInflater$StateListAnimator;->rightMargin:I

    if-gtz v2, :cond_12

    if-lez v1, :cond_12

    .line 3149
    iput v1, p0, Lo/MenuInflater$StateListAnimator;->rightMargin:I

    .line 3152
    :cond_12
    :goto_4
    iget v1, p0, Lo/MenuInflater$StateListAnimator;->e:I

    if-eq v1, p1, :cond_13

    .line 3153
    iput v1, p0, Lo/MenuInflater$StateListAnimator;->ab:I

    .line 3154
    iget p1, p0, Lo/MenuInflater$StateListAnimator;->leftMargin:I

    if-gtz p1, :cond_14

    if-lez v0, :cond_14

    .line 3155
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->leftMargin:I

    goto :goto_5

    .line 3157
    :cond_13
    iget v1, p0, Lo/MenuInflater$StateListAnimator;->d:I

    if-eq v1, p1, :cond_14

    .line 3158
    iput v1, p0, Lo/MenuInflater$StateListAnimator;->ac:I

    .line 3159
    iget p1, p0, Lo/MenuInflater$StateListAnimator;->leftMargin:I

    if-gtz p1, :cond_14

    if-lez v0, :cond_14

    .line 3160
    iput v0, p0, Lo/MenuInflater$StateListAnimator;->leftMargin:I

    :cond_14
    :goto_5
    return-void
.end method
