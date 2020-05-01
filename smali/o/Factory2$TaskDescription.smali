.class Lo/Factory2$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Factory2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation


# instance fields
.field public A:F

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:F

.field public P:I

.field public Q:F

.field public R:I

.field public S:I

.field public T:F

.field public U:I

.field public V:F

.field public W:F

.field public X:Z

.field public Y:F

.field public Z:F

.field a:I

.field public aa:F

.field public ab:F

.field public ac:F

.field public ad:F

.field public ae:Z

.field public af:F

.field public ag:F

.field public ah:F

.field public ai:I

.field public aj:I

.field public ak:I

.field public al:Z

.field public am:I

.field public an:F

.field public ao:I

.field public ap:F

.field public aq:Z

.field public ar:I

.field public as:Ljava/lang/String;

.field public at:I

.field public av:[I

.field public aw:I

.field b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:F

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:F

.field public v:F

.field public w:Ljava/lang/String;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 359
    iput-boolean v0, p0, Lo/Factory2$TaskDescription;->b:Z

    const/4 v1, -0x1

    .line 364
    iput v1, p0, Lo/Factory2$TaskDescription;->e:I

    .line 365
    iput v1, p0, Lo/Factory2$TaskDescription;->j:I

    const/high16 v2, -0x40800000    # -1.0f

    .line 366
    iput v2, p0, Lo/Factory2$TaskDescription;->f:F

    .line 368
    iput v1, p0, Lo/Factory2$TaskDescription;->g:I

    .line 369
    iput v1, p0, Lo/Factory2$TaskDescription;->h:I

    .line 370
    iput v1, p0, Lo/Factory2$TaskDescription;->i:I

    .line 371
    iput v1, p0, Lo/Factory2$TaskDescription;->l:I

    .line 372
    iput v1, p0, Lo/Factory2$TaskDescription;->m:I

    .line 373
    iput v1, p0, Lo/Factory2$TaskDescription;->o:I

    .line 374
    iput v1, p0, Lo/Factory2$TaskDescription;->k:I

    .line 375
    iput v1, p0, Lo/Factory2$TaskDescription;->n:I

    .line 376
    iput v1, p0, Lo/Factory2$TaskDescription;->p:I

    .line 378
    iput v1, p0, Lo/Factory2$TaskDescription;->t:I

    .line 379
    iput v1, p0, Lo/Factory2$TaskDescription;->r:I

    .line 380
    iput v1, p0, Lo/Factory2$TaskDescription;->s:I

    .line 381
    iput v1, p0, Lo/Factory2$TaskDescription;->q:I

    const/high16 v2, 0x3f000000    # 0.5f

    .line 383
    iput v2, p0, Lo/Factory2$TaskDescription;->v:F

    .line 384
    iput v2, p0, Lo/Factory2$TaskDescription;->u:F

    const/4 v2, 0x0

    .line 385
    iput-object v2, p0, Lo/Factory2$TaskDescription;->w:Ljava/lang/String;

    .line 387
    iput v1, p0, Lo/Factory2$TaskDescription;->y:I

    .line 388
    iput v0, p0, Lo/Factory2$TaskDescription;->x:I

    const/4 v2, 0x0

    .line 389
    iput v2, p0, Lo/Factory2$TaskDescription;->A:F

    .line 391
    iput v1, p0, Lo/Factory2$TaskDescription;->B:I

    .line 392
    iput v1, p0, Lo/Factory2$TaskDescription;->z:I

    .line 394
    iput v1, p0, Lo/Factory2$TaskDescription;->D:I

    .line 395
    iput v1, p0, Lo/Factory2$TaskDescription;->C:I

    .line 396
    iput v1, p0, Lo/Factory2$TaskDescription;->G:I

    .line 397
    iput v1, p0, Lo/Factory2$TaskDescription;->E:I

    .line 398
    iput v1, p0, Lo/Factory2$TaskDescription;->H:I

    .line 399
    iput v1, p0, Lo/Factory2$TaskDescription;->F:I

    .line 400
    iput v1, p0, Lo/Factory2$TaskDescription;->I:I

    .line 401
    iput v0, p0, Lo/Factory2$TaskDescription;->K:I

    .line 402
    iput v1, p0, Lo/Factory2$TaskDescription;->L:I

    .line 403
    iput v1, p0, Lo/Factory2$TaskDescription;->N:I

    .line 404
    iput v1, p0, Lo/Factory2$TaskDescription;->J:I

    .line 405
    iput v1, p0, Lo/Factory2$TaskDescription;->M:I

    .line 406
    iput v1, p0, Lo/Factory2$TaskDescription;->R:I

    .line 407
    iput v1, p0, Lo/Factory2$TaskDescription;->S:I

    .line 408
    iput v2, p0, Lo/Factory2$TaskDescription;->Q:F

    .line 409
    iput v2, p0, Lo/Factory2$TaskDescription;->O:F

    .line 410
    iput v0, p0, Lo/Factory2$TaskDescription;->P:I

    .line 411
    iput v0, p0, Lo/Factory2$TaskDescription;->U:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 412
    iput v3, p0, Lo/Factory2$TaskDescription;->V:F

    .line 413
    iput-boolean v0, p0, Lo/Factory2$TaskDescription;->X:Z

    .line 414
    iput v2, p0, Lo/Factory2$TaskDescription;->T:F

    .line 415
    iput v2, p0, Lo/Factory2$TaskDescription;->W:F

    .line 416
    iput v2, p0, Lo/Factory2$TaskDescription;->ac:F

    .line 417
    iput v2, p0, Lo/Factory2$TaskDescription;->Y:F

    .line 418
    iput v3, p0, Lo/Factory2$TaskDescription;->ab:F

    .line 419
    iput v3, p0, Lo/Factory2$TaskDescription;->Z:F

    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 420
    iput v4, p0, Lo/Factory2$TaskDescription;->aa:F

    .line 421
    iput v4, p0, Lo/Factory2$TaskDescription;->ad:F

    .line 422
    iput v2, p0, Lo/Factory2$TaskDescription;->ah:F

    .line 423
    iput v2, p0, Lo/Factory2$TaskDescription;->af:F

    .line 424
    iput v2, p0, Lo/Factory2$TaskDescription;->ag:F

    .line 425
    iput-boolean v0, p0, Lo/Factory2$TaskDescription;->ae:Z

    .line 426
    iput-boolean v0, p0, Lo/Factory2$TaskDescription;->al:Z

    .line 427
    iput v0, p0, Lo/Factory2$TaskDescription;->am:I

    .line 428
    iput v0, p0, Lo/Factory2$TaskDescription;->ai:I

    .line 429
    iput v1, p0, Lo/Factory2$TaskDescription;->ak:I

    .line 430
    iput v1, p0, Lo/Factory2$TaskDescription;->aj:I

    .line 431
    iput v1, p0, Lo/Factory2$TaskDescription;->ao:I

    .line 432
    iput v1, p0, Lo/Factory2$TaskDescription;->ar:I

    .line 433
    iput v3, p0, Lo/Factory2$TaskDescription;->an:F

    .line 434
    iput v3, p0, Lo/Factory2$TaskDescription;->ap:F

    .line 435
    iput-boolean v0, p0, Lo/Factory2$TaskDescription;->aq:Z

    .line 436
    iput v1, p0, Lo/Factory2$TaskDescription;->at:I

    .line 437
    iput v1, p0, Lo/Factory2$TaskDescription;->aw:I

    return-void
.end method

.method synthetic constructor <init>(Lo/Factory2$3;)V
    .locals 0

    .line 358
    invoke-direct {p0}, Lo/Factory2$TaskDescription;-><init>()V

    return-void
.end method

.method private a(Lo/Menu;ILo/TouchDelegate$Application;)V
    .locals 0

    .line 526
    invoke-direct {p0, p2, p3}, Lo/Factory2$TaskDescription;->d(ILo/TouchDelegate$Application;)V

    .line 527
    instance-of p2, p1, Lo/LayoutInflater;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 528
    iput p2, p0, Lo/Factory2$TaskDescription;->aw:I

    .line 529
    check-cast p1, Lo/LayoutInflater;

    .line 530
    invoke-virtual {p1}, Lo/LayoutInflater;->b()I

    move-result p2

    iput p2, p0, Lo/Factory2$TaskDescription;->at:I

    .line 531
    invoke-virtual {p1}, Lo/LayoutInflater;->e()[I

    move-result-object p1

    iput-object p1, p0, Lo/Factory2$TaskDescription;->av:[I

    :cond_0
    return-void
.end method

.method private b(ILo/MenuInflater$StateListAnimator;)V
    .locals 1

    .line 553
    iput p1, p0, Lo/Factory2$TaskDescription;->a:I

    .line 554
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->e:I

    iput p1, p0, Lo/Factory2$TaskDescription;->g:I

    .line 555
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->d:I

    iput p1, p0, Lo/Factory2$TaskDescription;->h:I

    .line 556
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->h:I

    iput p1, p0, Lo/Factory2$TaskDescription;->i:I

    .line 557
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->i:I

    iput p1, p0, Lo/Factory2$TaskDescription;->l:I

    .line 558
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->j:I

    iput p1, p0, Lo/Factory2$TaskDescription;->m:I

    .line 559
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->f:I

    iput p1, p0, Lo/Factory2$TaskDescription;->o:I

    .line 560
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->g:I

    iput p1, p0, Lo/Factory2$TaskDescription;->k:I

    .line 561
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->o:I

    iput p1, p0, Lo/Factory2$TaskDescription;->n:I

    .line 562
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->m:I

    iput p1, p0, Lo/Factory2$TaskDescription;->p:I

    .line 563
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->q:I

    iput p1, p0, Lo/Factory2$TaskDescription;->t:I

    .line 564
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->r:I

    iput p1, p0, Lo/Factory2$TaskDescription;->r:I

    .line 565
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->t:I

    iput p1, p0, Lo/Factory2$TaskDescription;->s:I

    .line 566
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->s:I

    iput p1, p0, Lo/Factory2$TaskDescription;->q:I

    .line 568
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->D:F

    iput p1, p0, Lo/Factory2$TaskDescription;->v:F

    .line 569
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->C:F

    iput p1, p0, Lo/Factory2$TaskDescription;->u:F

    .line 570
    iget-object p1, p2, Lo/MenuInflater$StateListAnimator;->A:Ljava/lang/String;

    iput-object p1, p0, Lo/Factory2$TaskDescription;->w:Ljava/lang/String;

    .line 572
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->l:I

    iput p1, p0, Lo/Factory2$TaskDescription;->y:I

    .line 573
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->n:I

    iput p1, p0, Lo/Factory2$TaskDescription;->x:I

    .line 574
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->k:F

    iput p1, p0, Lo/Factory2$TaskDescription;->A:F

    .line 576
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->P:I

    iput p1, p0, Lo/Factory2$TaskDescription;->B:I

    .line 577
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->O:I

    iput p1, p0, Lo/Factory2$TaskDescription;->z:I

    .line 578
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->Q:I

    iput p1, p0, Lo/Factory2$TaskDescription;->D:I

    .line 579
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->a:F

    iput p1, p0, Lo/Factory2$TaskDescription;->f:F

    .line 580
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->b:I

    iput p1, p0, Lo/Factory2$TaskDescription;->e:I

    .line 581
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->c:I

    iput p1, p0, Lo/Factory2$TaskDescription;->j:I

    .line 582
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->width:I

    iput p1, p0, Lo/Factory2$TaskDescription;->d:I

    .line 583
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->height:I

    iput p1, p0, Lo/Factory2$TaskDescription;->c:I

    .line 584
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->leftMargin:I

    iput p1, p0, Lo/Factory2$TaskDescription;->C:I

    .line 585
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->rightMargin:I

    iput p1, p0, Lo/Factory2$TaskDescription;->G:I

    .line 586
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->topMargin:I

    iput p1, p0, Lo/Factory2$TaskDescription;->E:I

    .line 587
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->bottomMargin:I

    iput p1, p0, Lo/Factory2$TaskDescription;->H:I

    .line 588
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->I:F

    iput p1, p0, Lo/Factory2$TaskDescription;->Q:F

    .line 589
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->G:F

    iput p1, p0, Lo/Factory2$TaskDescription;->O:F

    .line 590
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->E:I

    iput p1, p0, Lo/Factory2$TaskDescription;->U:I

    .line 591
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->F:I

    iput p1, p0, Lo/Factory2$TaskDescription;->P:I

    .line 592
    iget-boolean p1, p2, Lo/MenuInflater$StateListAnimator;->U:Z

    iput-boolean p1, p0, Lo/Factory2$TaskDescription;->ae:Z

    .line 593
    iget-boolean p1, p2, Lo/MenuInflater$StateListAnimator;->W:Z

    iput-boolean p1, p0, Lo/Factory2$TaskDescription;->al:Z

    .line 594
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->H:I

    iput p1, p0, Lo/Factory2$TaskDescription;->am:I

    .line 595
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->M:I

    iput p1, p0, Lo/Factory2$TaskDescription;->ai:I

    .line 596
    iget-boolean p1, p2, Lo/MenuInflater$StateListAnimator;->U:Z

    iput-boolean p1, p0, Lo/Factory2$TaskDescription;->ae:Z

    .line 597
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->K:I

    iput p1, p0, Lo/Factory2$TaskDescription;->ak:I

    .line 598
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->N:I

    iput p1, p0, Lo/Factory2$TaskDescription;->aj:I

    .line 599
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->J:I

    iput p1, p0, Lo/Factory2$TaskDescription;->ao:I

    .line 600
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->L:I

    iput p1, p0, Lo/Factory2$TaskDescription;->ar:I

    .line 601
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->S:F

    iput p1, p0, Lo/Factory2$TaskDescription;->an:F

    .line 602
    iget p1, p2, Lo/MenuInflater$StateListAnimator;->R:F

    iput p1, p0, Lo/Factory2$TaskDescription;->ap:F

    .line 604
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    .line 606
    invoke-virtual {p2}, Lo/MenuInflater$StateListAnimator;->getMarginEnd()I

    move-result p1

    iput p1, p0, Lo/Factory2$TaskDescription;->F:I

    .line 607
    invoke-virtual {p2}, Lo/MenuInflater$StateListAnimator;->getMarginStart()I

    move-result p1

    iput p1, p0, Lo/Factory2$TaskDescription;->I:I

    :cond_0
    return-void
.end method

.method static synthetic b(Lo/Factory2$TaskDescription;ILo/TouchDelegate$Application;)V
    .locals 0

    .line 358
    invoke-direct {p0, p1, p2}, Lo/Factory2$TaskDescription;->d(ILo/TouchDelegate$Application;)V

    return-void
.end method

.method static synthetic b(Lo/Factory2$TaskDescription;Lo/Menu;ILo/TouchDelegate$Application;)V
    .locals 0

    .line 358
    invoke-direct {p0, p1, p2, p3}, Lo/Factory2$TaskDescription;->a(Lo/Menu;ILo/TouchDelegate$Application;)V

    return-void
.end method

.method private d(ILo/TouchDelegate$Application;)V
    .locals 0

    .line 536
    invoke-direct {p0, p1, p2}, Lo/Factory2$TaskDescription;->b(ILo/MenuInflater$StateListAnimator;)V

    .line 537
    iget p1, p2, Lo/TouchDelegate$Application;->ap:F

    iput p1, p0, Lo/Factory2$TaskDescription;->V:F

    .line 538
    iget p1, p2, Lo/TouchDelegate$Application;->ar:F

    iput p1, p0, Lo/Factory2$TaskDescription;->W:F

    .line 539
    iget p1, p2, Lo/TouchDelegate$Application;->an:F

    iput p1, p0, Lo/Factory2$TaskDescription;->ac:F

    .line 540
    iget p1, p2, Lo/TouchDelegate$Application;->av:F

    iput p1, p0, Lo/Factory2$TaskDescription;->Y:F

    .line 541
    iget p1, p2, Lo/TouchDelegate$Application;->as:F

    iput p1, p0, Lo/Factory2$TaskDescription;->ab:F

    .line 542
    iget p1, p2, Lo/TouchDelegate$Application;->at:F

    iput p1, p0, Lo/Factory2$TaskDescription;->Z:F

    .line 543
    iget p1, p2, Lo/TouchDelegate$Application;->au:F

    iput p1, p0, Lo/Factory2$TaskDescription;->aa:F

    .line 544
    iget p1, p2, Lo/TouchDelegate$Application;->aw:F

    iput p1, p0, Lo/Factory2$TaskDescription;->ad:F

    .line 545
    iget p1, p2, Lo/TouchDelegate$Application;->aA:F

    iput p1, p0, Lo/Factory2$TaskDescription;->ah:F

    .line 546
    iget p1, p2, Lo/TouchDelegate$Application;->ax:F

    iput p1, p0, Lo/Factory2$TaskDescription;->af:F

    .line 547
    iget p1, p2, Lo/TouchDelegate$Application;->ay:F

    iput p1, p0, Lo/Factory2$TaskDescription;->ag:F

    .line 548
    iget p1, p2, Lo/TouchDelegate$Application;->aq:F

    iput p1, p0, Lo/Factory2$TaskDescription;->T:F

    .line 549
    iget-boolean p1, p2, Lo/TouchDelegate$Application;->ao:Z

    iput-boolean p1, p0, Lo/Factory2$TaskDescription;->X:Z

    return-void
.end method

.method static synthetic e(Lo/Factory2$TaskDescription;ILo/MenuInflater$StateListAnimator;)V
    .locals 0

    .line 358
    invoke-direct {p0, p1, p2}, Lo/Factory2$TaskDescription;->b(ILo/MenuInflater$StateListAnimator;)V

    return-void
.end method


# virtual methods
.method public b()Lo/Factory2$TaskDescription;
    .locals 3

    .line 442
    new-instance v0, Lo/Factory2$TaskDescription;

    invoke-direct {v0}, Lo/Factory2$TaskDescription;-><init>()V

    .line 443
    iget-boolean v1, p0, Lo/Factory2$TaskDescription;->b:Z

    iput-boolean v1, v0, Lo/Factory2$TaskDescription;->b:Z

    .line 444
    iget v1, p0, Lo/Factory2$TaskDescription;->d:I

    iput v1, v0, Lo/Factory2$TaskDescription;->d:I

    .line 445
    iget v1, p0, Lo/Factory2$TaskDescription;->c:I

    iput v1, v0, Lo/Factory2$TaskDescription;->c:I

    .line 446
    iget v1, p0, Lo/Factory2$TaskDescription;->e:I

    iput v1, v0, Lo/Factory2$TaskDescription;->e:I

    .line 447
    iget v1, p0, Lo/Factory2$TaskDescription;->j:I

    iput v1, v0, Lo/Factory2$TaskDescription;->j:I

    .line 448
    iget v1, p0, Lo/Factory2$TaskDescription;->f:F

    iput v1, v0, Lo/Factory2$TaskDescription;->f:F

    .line 449
    iget v1, p0, Lo/Factory2$TaskDescription;->g:I

    iput v1, v0, Lo/Factory2$TaskDescription;->g:I

    .line 450
    iget v1, p0, Lo/Factory2$TaskDescription;->h:I

    iput v1, v0, Lo/Factory2$TaskDescription;->h:I

    .line 451
    iget v1, p0, Lo/Factory2$TaskDescription;->i:I

    iput v1, v0, Lo/Factory2$TaskDescription;->i:I

    .line 452
    iget v1, p0, Lo/Factory2$TaskDescription;->l:I

    iput v1, v0, Lo/Factory2$TaskDescription;->l:I

    .line 453
    iget v1, p0, Lo/Factory2$TaskDescription;->m:I

    iput v1, v0, Lo/Factory2$TaskDescription;->m:I

    .line 454
    iget v1, p0, Lo/Factory2$TaskDescription;->o:I

    iput v1, v0, Lo/Factory2$TaskDescription;->o:I

    .line 455
    iget v1, p0, Lo/Factory2$TaskDescription;->k:I

    iput v1, v0, Lo/Factory2$TaskDescription;->k:I

    .line 456
    iget v1, p0, Lo/Factory2$TaskDescription;->n:I

    iput v1, v0, Lo/Factory2$TaskDescription;->n:I

    .line 457
    iget v1, p0, Lo/Factory2$TaskDescription;->p:I

    iput v1, v0, Lo/Factory2$TaskDescription;->p:I

    .line 458
    iget v1, p0, Lo/Factory2$TaskDescription;->t:I

    iput v1, v0, Lo/Factory2$TaskDescription;->t:I

    .line 459
    iget v1, p0, Lo/Factory2$TaskDescription;->r:I

    iput v1, v0, Lo/Factory2$TaskDescription;->r:I

    .line 460
    iget v1, p0, Lo/Factory2$TaskDescription;->s:I

    iput v1, v0, Lo/Factory2$TaskDescription;->s:I

    .line 461
    iget v1, p0, Lo/Factory2$TaskDescription;->q:I

    iput v1, v0, Lo/Factory2$TaskDescription;->q:I

    .line 462
    iget v1, p0, Lo/Factory2$TaskDescription;->v:F

    iput v1, v0, Lo/Factory2$TaskDescription;->v:F

    .line 463
    iget v1, p0, Lo/Factory2$TaskDescription;->u:F

    iput v1, v0, Lo/Factory2$TaskDescription;->u:F

    .line 464
    iget-object v1, p0, Lo/Factory2$TaskDescription;->w:Ljava/lang/String;

    iput-object v1, v0, Lo/Factory2$TaskDescription;->w:Ljava/lang/String;

    .line 465
    iget v1, p0, Lo/Factory2$TaskDescription;->B:I

    iput v1, v0, Lo/Factory2$TaskDescription;->B:I

    .line 466
    iget v1, p0, Lo/Factory2$TaskDescription;->z:I

    iput v1, v0, Lo/Factory2$TaskDescription;->z:I

    .line 467
    iget v1, p0, Lo/Factory2$TaskDescription;->v:F

    iput v1, v0, Lo/Factory2$TaskDescription;->v:F

    .line 468
    iget v1, p0, Lo/Factory2$TaskDescription;->v:F

    iput v1, v0, Lo/Factory2$TaskDescription;->v:F

    .line 469
    iget v1, p0, Lo/Factory2$TaskDescription;->v:F

    iput v1, v0, Lo/Factory2$TaskDescription;->v:F

    .line 470
    iget v1, p0, Lo/Factory2$TaskDescription;->v:F

    iput v1, v0, Lo/Factory2$TaskDescription;->v:F

    .line 471
    iget v1, p0, Lo/Factory2$TaskDescription;->v:F

    iput v1, v0, Lo/Factory2$TaskDescription;->v:F

    .line 472
    iget v1, p0, Lo/Factory2$TaskDescription;->D:I

    iput v1, v0, Lo/Factory2$TaskDescription;->D:I

    .line 473
    iget v1, p0, Lo/Factory2$TaskDescription;->C:I

    iput v1, v0, Lo/Factory2$TaskDescription;->C:I

    .line 474
    iget v1, p0, Lo/Factory2$TaskDescription;->G:I

    iput v1, v0, Lo/Factory2$TaskDescription;->G:I

    .line 475
    iget v1, p0, Lo/Factory2$TaskDescription;->E:I

    iput v1, v0, Lo/Factory2$TaskDescription;->E:I

    .line 476
    iget v1, p0, Lo/Factory2$TaskDescription;->H:I

    iput v1, v0, Lo/Factory2$TaskDescription;->H:I

    .line 477
    iget v1, p0, Lo/Factory2$TaskDescription;->F:I

    iput v1, v0, Lo/Factory2$TaskDescription;->F:I

    .line 478
    iget v1, p0, Lo/Factory2$TaskDescription;->I:I

    iput v1, v0, Lo/Factory2$TaskDescription;->I:I

    .line 479
    iget v1, p0, Lo/Factory2$TaskDescription;->K:I

    iput v1, v0, Lo/Factory2$TaskDescription;->K:I

    .line 480
    iget v1, p0, Lo/Factory2$TaskDescription;->L:I

    iput v1, v0, Lo/Factory2$TaskDescription;->L:I

    .line 481
    iget v1, p0, Lo/Factory2$TaskDescription;->N:I

    iput v1, v0, Lo/Factory2$TaskDescription;->N:I

    .line 482
    iget v1, p0, Lo/Factory2$TaskDescription;->J:I

    iput v1, v0, Lo/Factory2$TaskDescription;->J:I

    .line 483
    iget v1, p0, Lo/Factory2$TaskDescription;->M:I

    iput v1, v0, Lo/Factory2$TaskDescription;->M:I

    .line 484
    iget v1, p0, Lo/Factory2$TaskDescription;->R:I

    iput v1, v0, Lo/Factory2$TaskDescription;->R:I

    .line 485
    iget v1, p0, Lo/Factory2$TaskDescription;->S:I

    iput v1, v0, Lo/Factory2$TaskDescription;->S:I

    .line 486
    iget v1, p0, Lo/Factory2$TaskDescription;->Q:F

    iput v1, v0, Lo/Factory2$TaskDescription;->Q:F

    .line 487
    iget v1, p0, Lo/Factory2$TaskDescription;->O:F

    iput v1, v0, Lo/Factory2$TaskDescription;->O:F

    .line 488
    iget v1, p0, Lo/Factory2$TaskDescription;->P:I

    iput v1, v0, Lo/Factory2$TaskDescription;->P:I

    .line 489
    iget v1, p0, Lo/Factory2$TaskDescription;->U:I

    iput v1, v0, Lo/Factory2$TaskDescription;->U:I

    .line 490
    iget v1, p0, Lo/Factory2$TaskDescription;->V:F

    iput v1, v0, Lo/Factory2$TaskDescription;->V:F

    .line 491
    iget-boolean v1, p0, Lo/Factory2$TaskDescription;->X:Z

    iput-boolean v1, v0, Lo/Factory2$TaskDescription;->X:Z

    .line 492
    iget v1, p0, Lo/Factory2$TaskDescription;->T:F

    iput v1, v0, Lo/Factory2$TaskDescription;->T:F

    .line 493
    iget v1, p0, Lo/Factory2$TaskDescription;->W:F

    iput v1, v0, Lo/Factory2$TaskDescription;->W:F

    .line 494
    iget v1, p0, Lo/Factory2$TaskDescription;->ac:F

    iput v1, v0, Lo/Factory2$TaskDescription;->ac:F

    .line 495
    iget v1, p0, Lo/Factory2$TaskDescription;->Y:F

    iput v1, v0, Lo/Factory2$TaskDescription;->Y:F

    .line 496
    iget v1, p0, Lo/Factory2$TaskDescription;->ab:F

    iput v1, v0, Lo/Factory2$TaskDescription;->ab:F

    .line 497
    iget v1, p0, Lo/Factory2$TaskDescription;->Z:F

    iput v1, v0, Lo/Factory2$TaskDescription;->Z:F

    .line 498
    iget v1, p0, Lo/Factory2$TaskDescription;->aa:F

    iput v1, v0, Lo/Factory2$TaskDescription;->aa:F

    .line 499
    iget v1, p0, Lo/Factory2$TaskDescription;->ad:F

    iput v1, v0, Lo/Factory2$TaskDescription;->ad:F

    .line 500
    iget v1, p0, Lo/Factory2$TaskDescription;->ah:F

    iput v1, v0, Lo/Factory2$TaskDescription;->ah:F

    .line 501
    iget v1, p0, Lo/Factory2$TaskDescription;->af:F

    iput v1, v0, Lo/Factory2$TaskDescription;->af:F

    .line 502
    iget v1, p0, Lo/Factory2$TaskDescription;->ag:F

    iput v1, v0, Lo/Factory2$TaskDescription;->ag:F

    .line 503
    iget-boolean v1, p0, Lo/Factory2$TaskDescription;->ae:Z

    iput-boolean v1, v0, Lo/Factory2$TaskDescription;->ae:Z

    .line 504
    iget-boolean v1, p0, Lo/Factory2$TaskDescription;->al:Z

    iput-boolean v1, v0, Lo/Factory2$TaskDescription;->al:Z

    .line 505
    iget v1, p0, Lo/Factory2$TaskDescription;->am:I

    iput v1, v0, Lo/Factory2$TaskDescription;->am:I

    .line 506
    iget v1, p0, Lo/Factory2$TaskDescription;->ai:I

    iput v1, v0, Lo/Factory2$TaskDescription;->ai:I

    .line 507
    iget v1, p0, Lo/Factory2$TaskDescription;->ak:I

    iput v1, v0, Lo/Factory2$TaskDescription;->ak:I

    .line 508
    iget v1, p0, Lo/Factory2$TaskDescription;->aj:I

    iput v1, v0, Lo/Factory2$TaskDescription;->aj:I

    .line 509
    iget v1, p0, Lo/Factory2$TaskDescription;->ao:I

    iput v1, v0, Lo/Factory2$TaskDescription;->ao:I

    .line 510
    iget v1, p0, Lo/Factory2$TaskDescription;->ar:I

    iput v1, v0, Lo/Factory2$TaskDescription;->ar:I

    .line 511
    iget v1, p0, Lo/Factory2$TaskDescription;->an:F

    iput v1, v0, Lo/Factory2$TaskDescription;->an:F

    .line 512
    iget v1, p0, Lo/Factory2$TaskDescription;->ap:F

    iput v1, v0, Lo/Factory2$TaskDescription;->ap:F

    .line 513
    iget v1, p0, Lo/Factory2$TaskDescription;->at:I

    iput v1, v0, Lo/Factory2$TaskDescription;->at:I

    .line 514
    iget v1, p0, Lo/Factory2$TaskDescription;->aw:I

    iput v1, v0, Lo/Factory2$TaskDescription;->aw:I

    .line 515
    iget-object v1, p0, Lo/Factory2$TaskDescription;->av:[I

    if-eqz v1, :cond_0

    .line 516
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Lo/Factory2$TaskDescription;->av:[I

    .line 518
    :cond_0
    iget v1, p0, Lo/Factory2$TaskDescription;->y:I

    iput v1, v0, Lo/Factory2$TaskDescription;->y:I

    .line 519
    iget v1, p0, Lo/Factory2$TaskDescription;->x:I

    iput v1, v0, Lo/Factory2$TaskDescription;->x:I

    .line 520
    iget v1, p0, Lo/Factory2$TaskDescription;->A:F

    iput v1, v0, Lo/Factory2$TaskDescription;->A:F

    .line 521
    iget-boolean v1, p0, Lo/Factory2$TaskDescription;->aq:Z

    iput-boolean v1, v0, Lo/Factory2$TaskDescription;->aq:Z

    return-object v0
.end method

.method public b(Lo/MenuInflater$StateListAnimator;)V
    .locals 2

    .line 612
    iget v0, p0, Lo/Factory2$TaskDescription;->g:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->e:I

    .line 613
    iget v0, p0, Lo/Factory2$TaskDescription;->h:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->d:I

    .line 614
    iget v0, p0, Lo/Factory2$TaskDescription;->i:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->h:I

    .line 615
    iget v0, p0, Lo/Factory2$TaskDescription;->l:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->i:I

    .line 617
    iget v0, p0, Lo/Factory2$TaskDescription;->m:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->j:I

    .line 618
    iget v0, p0, Lo/Factory2$TaskDescription;->o:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->f:I

    .line 619
    iget v0, p0, Lo/Factory2$TaskDescription;->k:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->g:I

    .line 620
    iget v0, p0, Lo/Factory2$TaskDescription;->n:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->o:I

    .line 622
    iget v0, p0, Lo/Factory2$TaskDescription;->p:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->m:I

    .line 624
    iget v0, p0, Lo/Factory2$TaskDescription;->t:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->q:I

    .line 625
    iget v0, p0, Lo/Factory2$TaskDescription;->r:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->r:I

    .line 626
    iget v0, p0, Lo/Factory2$TaskDescription;->s:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->t:I

    .line 627
    iget v0, p0, Lo/Factory2$TaskDescription;->q:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->s:I

    .line 629
    iget v0, p0, Lo/Factory2$TaskDescription;->C:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->leftMargin:I

    .line 630
    iget v0, p0, Lo/Factory2$TaskDescription;->G:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->rightMargin:I

    .line 631
    iget v0, p0, Lo/Factory2$TaskDescription;->E:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->topMargin:I

    .line 632
    iget v0, p0, Lo/Factory2$TaskDescription;->H:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->bottomMargin:I

    .line 633
    iget v0, p0, Lo/Factory2$TaskDescription;->S:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->w:I

    .line 634
    iget v0, p0, Lo/Factory2$TaskDescription;->R:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->u:I

    .line 636
    iget v0, p0, Lo/Factory2$TaskDescription;->v:F

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->D:F

    .line 637
    iget v0, p0, Lo/Factory2$TaskDescription;->u:F

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->C:F

    .line 639
    iget v0, p0, Lo/Factory2$TaskDescription;->y:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->l:I

    .line 640
    iget v0, p0, Lo/Factory2$TaskDescription;->x:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->n:I

    .line 641
    iget v0, p0, Lo/Factory2$TaskDescription;->A:F

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->k:F

    .line 643
    iget-object v0, p0, Lo/Factory2$TaskDescription;->w:Ljava/lang/String;

    iput-object v0, p1, Lo/MenuInflater$StateListAnimator;->A:Ljava/lang/String;

    .line 644
    iget v0, p0, Lo/Factory2$TaskDescription;->B:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->P:I

    .line 645
    iget v0, p0, Lo/Factory2$TaskDescription;->z:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->O:I

    .line 646
    iget v0, p0, Lo/Factory2$TaskDescription;->Q:F

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->I:F

    .line 647
    iget v0, p0, Lo/Factory2$TaskDescription;->O:F

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->G:F

    .line 648
    iget v0, p0, Lo/Factory2$TaskDescription;->U:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->E:I

    .line 649
    iget v0, p0, Lo/Factory2$TaskDescription;->P:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->F:I

    .line 650
    iget-boolean v0, p0, Lo/Factory2$TaskDescription;->ae:Z

    iput-boolean v0, p1, Lo/MenuInflater$StateListAnimator;->U:Z

    .line 651
    iget-boolean v0, p0, Lo/Factory2$TaskDescription;->al:Z

    iput-boolean v0, p1, Lo/MenuInflater$StateListAnimator;->W:Z

    .line 652
    iget v0, p0, Lo/Factory2$TaskDescription;->am:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->H:I

    .line 653
    iget v0, p0, Lo/Factory2$TaskDescription;->ai:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->M:I

    .line 654
    iget v0, p0, Lo/Factory2$TaskDescription;->ak:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->K:I

    .line 655
    iget v0, p0, Lo/Factory2$TaskDescription;->aj:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->N:I

    .line 656
    iget v0, p0, Lo/Factory2$TaskDescription;->ao:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->J:I

    .line 657
    iget v0, p0, Lo/Factory2$TaskDescription;->ar:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->L:I

    .line 658
    iget v0, p0, Lo/Factory2$TaskDescription;->an:F

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->S:F

    .line 659
    iget v0, p0, Lo/Factory2$TaskDescription;->ap:F

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->R:F

    .line 660
    iget v0, p0, Lo/Factory2$TaskDescription;->D:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->Q:I

    .line 661
    iget v0, p0, Lo/Factory2$TaskDescription;->f:F

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->a:F

    .line 662
    iget v0, p0, Lo/Factory2$TaskDescription;->e:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->b:I

    .line 663
    iget v0, p0, Lo/Factory2$TaskDescription;->j:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->c:I

    .line 664
    iget v0, p0, Lo/Factory2$TaskDescription;->d:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->width:I

    .line 665
    iget v0, p0, Lo/Factory2$TaskDescription;->c:I

    iput v0, p1, Lo/MenuInflater$StateListAnimator;->height:I

    .line 668
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 669
    iget v0, p0, Lo/Factory2$TaskDescription;->I:I

    invoke-virtual {p1, v0}, Lo/MenuInflater$StateListAnimator;->setMarginStart(I)V

    .line 670
    iget v0, p0, Lo/Factory2$TaskDescription;->F:I

    invoke-virtual {p1, v0}, Lo/MenuInflater$StateListAnimator;->setMarginEnd(I)V

    .line 673
    :cond_0
    invoke-virtual {p1}, Lo/MenuInflater$StateListAnimator;->b()V

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 358
    invoke-virtual {p0}, Lo/Factory2$TaskDescription;->b()Lo/Factory2$TaskDescription;

    move-result-object v0

    return-object v0
.end method
