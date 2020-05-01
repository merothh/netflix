.class public final Lo/Chronometer$ActionBar;
.super Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Chronometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/Boolean;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Ljava/lang/String;

.field private i:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

.field private j:Ljava/lang/Boolean;

.field private k:Ljava/lang/Boolean;

.field private l:Lo/Fragment$StateListAnimator;

.field private m:Ljava/lang/CharSequence;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/view/View;

.field private p:Ljava/lang/Integer;

.field private q:Ljava/lang/Boolean;

.field private r:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 317
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;
    .locals 0

    .line 399
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/Chronometer$ActionBar;->p:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;
    .locals 0

    .line 384
    iput-object p1, p0, Lo/Chronometer$ActionBar;->n:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public a(Landroid/view/View;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;
    .locals 0

    .line 374
    iput-object p1, p0, Lo/Chronometer$ActionBar;->o:Landroid/view/View;

    return-object p0
.end method

.method public a(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;
    .locals 0

    .line 326
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo/Chronometer$ActionBar;->c:Ljava/lang/Boolean;

    return-object p0
.end method

.method public b(I)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;
    .locals 0

    .line 336
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/Chronometer$ActionBar;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public b(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;
    .locals 0

    .line 389
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo/Chronometer$ActionBar;->k:Ljava/lang/Boolean;

    return-object p0
.end method

.method public b()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;
    .locals 24

    move-object/from16 v0, p0

    .line 420
    iget-object v1, v0, Lo/Chronometer$ActionBar;->c:Ljava/lang/Boolean;

    const-string v2, ""

    if-nez v1, :cond_0

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " titleVisible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 423
    :cond_0
    iget-object v1, v0, Lo/Chronometer$ActionBar;->d:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " titleAlignment"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 426
    :cond_1
    iget-object v1, v0, Lo/Chronometer$ActionBar;->a:Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " titleColor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    :cond_2
    iget-object v1, v0, Lo/Chronometer$ActionBar;->b:Ljava/lang/Integer;

    if-nez v1, :cond_3

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " titleAppearance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 432
    :cond_3
    iget-object v1, v0, Lo/Chronometer$ActionBar;->j:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " upActionVisible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 435
    :cond_4
    iget-object v1, v0, Lo/Chronometer$ActionBar;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_5

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " logoVisible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 438
    :cond_5
    iget-object v1, v0, Lo/Chronometer$ActionBar;->i:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    if-nez v1, :cond_6

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " logoType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 441
    :cond_6
    iget-object v1, v0, Lo/Chronometer$ActionBar;->k:Ljava/lang/Boolean;

    if-nez v1, :cond_7

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hideOnScroll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 444
    :cond_7
    iget-object v1, v0, Lo/Chronometer$ActionBar;->p:Ljava/lang/Integer;

    if-nez v1, :cond_8

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " subtitleColor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 447
    :cond_8
    iget-object v1, v0, Lo/Chronometer$ActionBar;->t:Ljava/lang/Integer;

    if-nez v1, :cond_9

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " subtitleAppearance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 450
    :cond_9
    iget-object v1, v0, Lo/Chronometer$ActionBar;->q:Ljava/lang/Boolean;

    if-nez v1, :cond_a

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " makeStatusBarMatch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 453
    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 456
    new-instance v1, Lo/Chronometer;

    move-object v3, v1

    iget-object v4, v0, Lo/Chronometer$ActionBar;->e:Ljava/lang/CharSequence;

    iget-object v2, v0, Lo/Chronometer$ActionBar;->c:Ljava/lang/Boolean;

    .line 458
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v2, v0, Lo/Chronometer$ActionBar;->d:Ljava/lang/Integer;

    .line 459
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v2, v0, Lo/Chronometer$ActionBar;->a:Ljava/lang/Integer;

    .line 460
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v2, v0, Lo/Chronometer$ActionBar;->b:Ljava/lang/Integer;

    .line 461
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v2, v0, Lo/Chronometer$ActionBar;->j:Ljava/lang/Boolean;

    .line 462
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget-object v10, v0, Lo/Chronometer$ActionBar;->g:Landroid/graphics/drawable/Drawable;

    iget-object v11, v0, Lo/Chronometer$ActionBar;->h:Ljava/lang/String;

    iget-object v2, v0, Lo/Chronometer$ActionBar;->f:Ljava/lang/Boolean;

    .line 465
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    iget-object v13, v0, Lo/Chronometer$ActionBar;->i:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    iget-object v14, v0, Lo/Chronometer$ActionBar;->o:Landroid/view/View;

    iget-object v15, v0, Lo/Chronometer$ActionBar;->l:Lo/Fragment$StateListAnimator;

    iget-object v2, v0, Lo/Chronometer$ActionBar;->n:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v2

    iget-object v2, v0, Lo/Chronometer$ActionBar;->k:Ljava/lang/Boolean;

    .line 470
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    iget-object v2, v0, Lo/Chronometer$ActionBar;->m:Ljava/lang/CharSequence;

    move-object/from16 v18, v2

    iget-object v2, v0, Lo/Chronometer$ActionBar;->p:Ljava/lang/Integer;

    .line 472
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    iget-object v2, v0, Lo/Chronometer$ActionBar;->t:Ljava/lang/Integer;

    .line 473
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v20

    iget-object v2, v0, Lo/Chronometer$ActionBar;->r:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;

    move-object/from16 v21, v2

    iget-object v2, v0, Lo/Chronometer$ActionBar;->q:Ljava/lang/Boolean;

    .line 475
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    const/16 v23, 0x0

    invoke-direct/range {v3 .. v23}, Lo/Chronometer;-><init>(Ljava/lang/CharSequence;ZIIIZLandroid/graphics/drawable/Drawable;Ljava/lang/String;ZLcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;Landroid/view/View;Lo/Fragment$StateListAnimator;Landroid/graphics/drawable/Drawable;ZLjava/lang/CharSequence;IILandroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;ZLo/Chronometer$4;)V

    return-object v1

    .line 454
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing required properties:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public c(I)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;
    .locals 0

    .line 404
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/Chronometer$ActionBar;->t:Ljava/lang/Integer;

    return-object p0
.end method

.method public c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;
    .locals 1

    if-eqz p1, :cond_0

    .line 369
    iput-object p1, p0, Lo/Chronometer$ActionBar;->i:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    return-object p0

    .line 367
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null logoType"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;
    .locals 0

    .line 321
    iput-object p1, p0, Lo/Chronometer$ActionBar;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;
    .locals 0

    .line 414
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo/Chronometer$ActionBar;->q:Ljava/lang/Boolean;

    return-object p0
.end method

.method public d(I)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;
    .locals 0

    .line 341
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/Chronometer$ActionBar;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;
    .locals 0

    .line 394
    iput-object p1, p0, Lo/Chronometer$ActionBar;->m:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public d(Lo/Fragment$StateListAnimator;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;
    .locals 0

    .line 379
    iput-object p1, p0, Lo/Chronometer$ActionBar;->l:Lo/Fragment$StateListAnimator;

    return-object p0
.end method

.method public d(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;
    .locals 0

    .line 361
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo/Chronometer$ActionBar;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method public e(I)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;
    .locals 0

    .line 331
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/Chronometer$ActionBar;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public e(Landroid/graphics/drawable/Drawable;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;
    .locals 0

    .line 351
    iput-object p1, p0, Lo/Chronometer$ActionBar;->g:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;
    .locals 0

    .line 356
    iput-object p1, p0, Lo/Chronometer$ActionBar;->h:Ljava/lang/String;

    return-object p0
.end method

.method public e(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;
    .locals 0

    .line 346
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo/Chronometer$ActionBar;->j:Ljava/lang/Boolean;

    return-object p0
.end method
