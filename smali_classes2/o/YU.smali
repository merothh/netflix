.class public Lo/YU;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/YU$StateListAnimator;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Lo/Am;

.field private e:Lo/EditText;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/CheckBox;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/view/View;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Lo/BC;

.field private p:Lo/BaseAdapter;

.field private q:Landroid/view/View;

.field private r:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

.field private s:Landroid/view/View;

.field private t:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

.field private u:Z

.field private v:Z

.field private final w:Lo/zU;

.field private final x:Lo/DatePickerCalendarDelegate$Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    .line 250
    new-instance v0, Lo/YU$2;

    invoke-direct {v0, p0}, Lo/YU$2;-><init>(Lo/YU;)V

    iput-object v0, p0, Lo/YU;->x:Lo/DatePickerCalendarDelegate$Activity;

    .line 261
    new-instance v0, Lo/YU$4;

    invoke-direct {v0, p0}, Lo/YU$4;-><init>(Lo/YU;)V

    iput-object v0, p0, Lo/YU;->w:Lo/zU;

    return-void
.end method

.method static synthetic a(Lo/YU;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;
    .locals 0

    .line 68
    iput-object p1, p0, Lo/YU;->t:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    return-object p1
.end method

.method private a()V
    .locals 5

    const/4 v0, 0x0

    .line 540
    iput-object v0, p0, Lo/YU;->o:Lo/BC;

    .line 542
    iget-object v1, p0, Lo/YU;->l:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 543
    iget-object v1, p0, Lo/YU;->d:Lo/Am;

    invoke-virtual {v1}, Lo/Am;->X()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 545
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/BC;

    if-eqz v2, :cond_0

    .line 546
    iget-object v3, p0, Lo/YU;->l:Ljava/lang/String;

    invoke-interface {v2}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 547
    iput-object v2, p0, Lo/YU;->o:Lo/BC;

    goto :goto_0

    :cond_1
    const-string v1, "ProfileDetailsActivity"

    const-string v2, "Profiles returned null!"

    .line 552
    invoke-static {v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_2
    :goto_0
    iget-object v1, p0, Lo/YU;->o:Lo/BC;

    if-nez v1, :cond_3

    .line 557
    iput-object v0, p0, Lo/YU;->l:Ljava/lang/String;

    const/4 v0, 0x1

    .line 558
    iput-boolean v0, p0, Lo/YU;->n:Z

    :cond_3
    return-void
.end method

.method static synthetic a(Lo/YU;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lo/YU;->a()V

    return-void
.end method

.method private a(ZZ)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 618
    iget-object v1, p0, Lo/YU;->e:Lo/EditText;

    invoke-virtual {v1, v0}, Lo/EditText;->c(Z)V

    goto :goto_0

    .line 620
    :cond_0
    iget-object v1, p0, Lo/YU;->e:Lo/EditText;

    invoke-virtual {v1, v0}, Lo/EditText;->a(Z)V

    .line 624
    :goto_0
    iget-object v1, p0, Lo/YU;->c:Landroid/view/View;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 625
    iget-object v1, p0, Lo/YU;->j:Landroid/widget/EditText;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    xor-int/lit8 v1, p1, 0x1

    .line 626
    invoke-direct {p0, v1}, Lo/YU;->b(Z)V

    .line 627
    iget-object v1, p0, Lo/YU;->b:Landroid/view/View;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 628
    iget-object v1, p0, Lo/YU;->b:Landroid/view/View;

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    const v4, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 629
    iget-object v1, p0, Lo/YU;->s:Landroid/view/View;

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 630
    iget-object v1, p0, Lo/YU;->i:Landroid/widget/CheckBox;

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 631
    iget-object v1, p0, Lo/YU;->h:Landroid/view/View;

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 634
    invoke-direct {p0}, Lo/YU;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 636
    :goto_2
    iget-object v1, p0, Lo/YU;->p:Lo/BaseAdapter;

    invoke-virtual {v1, v0}, Lo/BaseAdapter;->setEnabled(Z)V

    .line 637
    iget-object v1, p0, Lo/YU;->q:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_4

    .line 640
    iget-object p2, p0, Lo/YU;->c:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_5

    .line 642
    :cond_4
    iget-object p2, p0, Lo/YU;->c:Landroid/view/View;

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_5
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lo/YU;->o:Lo/BC;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/YU;->l:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method static synthetic b(Lo/YU;)Lo/BC;
    .locals 0

    .line 68
    iget-object p0, p0, Lo/YU;->o:Lo/BC;

    return-object p0
.end method

.method private b(Z)V
    .locals 1

    .line 664
    invoke-direct {p0}, Lo/YU;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 665
    :goto_0
    iget-object v0, p0, Lo/YU;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method static synthetic c(Lo/YU;Lo/Am;)Lo/Am;
    .locals 0

    .line 68
    iput-object p1, p0, Lo/YU;->d:Lo/Am;

    return-object p1
.end method

.method private c()V
    .locals 3

    .line 277
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->fe:I

    invoke-virtual {p0, v0}, Lo/YU;->setContentView(I)V

    .line 279
    invoke-virtual {p0}, Lo/YU;->getSupportActionBar()Lo/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Lo/Fragment;->b()V

    .line 281
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->pq:I

    invoke-virtual {p0, v0}, Lo/YU;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/YU;->c:Landroid/view/View;

    .line 282
    new-instance v0, Lo/EditText;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pu:I

    invoke-virtual {p0, v1}, Lo/YU;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lo/YU;->x:Lo/DatePickerCalendarDelegate$Activity;

    invoke-direct {v0, v1, v2}, Lo/EditText;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;)V

    iput-object v0, p0, Lo/YU;->e:Lo/EditText;

    .line 284
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->pn:I

    invoke-virtual {p0, v0}, Lo/YU;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/YU;->b:Landroid/view/View;

    .line 285
    iget-object v0, p0, Lo/YU;->b:Landroid/view/View;

    new-instance v1, Lo/YU$3;

    invoke-direct {v1, p0}, Lo/YU$3;-><init>(Lo/YU;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->po:I

    invoke-virtual {p0, v0}, Lo/YU;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/YU;->k:Landroid/view/View;

    .line 293
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->pp:I

    invoke-virtual {p0, v0}, Lo/YU;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/YU;->s:Landroid/view/View;

    .line 294
    iget-object v0, p0, Lo/YU;->s:Landroid/view/View;

    new-instance v1, Lo/YU$10;

    invoke-direct {v1, p0}, Lo/YU$10;-><init>(Lo/YU;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ps:I

    invoke-virtual {p0, v0}, Lo/YU;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/YU;->h:Landroid/view/View;

    .line 321
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->pw:I

    invoke-virtual {p0, v0}, Lo/YU;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/YU;->f:Landroid/widget/TextView;

    .line 322
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->iX:I

    invoke-virtual {p0, v0}, Lo/YU;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lo/YU;->i:Landroid/widget/CheckBox;

    .line 323
    iget-object v0, p0, Lo/YU;->i:Landroid/widget/CheckBox;

    new-instance v1, Lo/YU$7;

    invoke-direct {v1, p0}, Lo/YU$7;-><init>(Lo/YU;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 353
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->px:I

    invoke-virtual {p0, v0}, Lo/YU;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/YU;->a:Landroid/view/View;

    .line 354
    iget-object v0, p0, Lo/YU;->a:Landroid/view/View;

    new-instance v1, Lo/YU$9;

    invoke-direct {v1, p0}, Lo/YU$9;-><init>(Lo/YU;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->pA:I

    invoke-virtual {p0, v0}, Lo/YU;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lo/YU;->j:Landroid/widget/EditText;

    .line 404
    iget-object v0, p0, Lo/YU;->j:Landroid/widget/EditText;

    new-instance v1, Lo/YU$8;

    invoke-direct {v1, p0}, Lo/YU$8;-><init>(Lo/YU;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 420
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->pl:I

    invoke-virtual {p0, v0}, Lo/YU;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/BaseAdapter;

    iput-object v0, p0, Lo/YU;->p:Lo/BaseAdapter;

    .line 421
    new-instance v0, Lo/YU$6;

    invoke-direct {v0, p0}, Lo/YU$6;-><init>(Lo/YU;)V

    .line 444
    iget-object v1, p0, Lo/YU;->p:Lo/BaseAdapter;

    invoke-virtual {v1, v0}, Lo/BaseAdapter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->py:I

    invoke-virtual {p0, v1}, Lo/YU;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lo/YU;->q:Landroid/view/View;

    .line 446
    iget-object v1, p0, Lo/YU;->q:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mi:I

    invoke-virtual {p0, v0}, Lo/YU;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/YU;->g:Landroid/view/View;

    .line 451
    iget-boolean v0, p0, Lo/YU;->n:Z

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lo/YU;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 456
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->tE:I

    invoke-virtual {p0, v0}, Lo/YU;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 458
    iget-boolean v1, p0, Lo/YU;->n:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->pa:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->po:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    return-void
.end method

.method static synthetic c(Lo/YU;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lo/YU;->n:Z

    return p0
.end method

.method static synthetic d(Lo/YU;)Lo/Am;
    .locals 0

    .line 68
    iget-object p0, p0, Lo/YU;->d:Lo/Am;

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 564
    iget-object v0, p0, Lo/YU;->l:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/YU;->o:Lo/BC;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/BC;->isPrimaryProfile()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 565
    :goto_0
    iget-object v3, p0, Lo/YU;->k:Landroid/view/View;

    invoke-direct {p0, v3, v0}, Lo/YU;->e(Landroid/view/View;Z)V

    .line 567
    iget-object v0, p0, Lo/YU;->l:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/YU;->o:Lo/BC;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/BC;->isPrimaryProfile()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 568
    :goto_2
    iget-object v3, p0, Lo/YU;->h:Landroid/view/View;

    invoke-direct {p0, v3, v0}, Lo/YU;->e(Landroid/view/View;Z)V

    .line 570
    iget-object v0, p0, Lo/YU;->l:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/YU;->o:Lo/BC;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lo/BC;->isDefaultKidsProfile()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_4

    .line 575
    iget-object v0, p0, Lo/YU;->i:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lo/YU;->f:Landroid/widget/TextView;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->pp:I

    invoke-virtual {p0, v3}, Lo/YU;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 578
    :cond_4
    iget-object v0, p0, Lo/YU;->h:Landroid/view/View;

    new-instance v3, Lo/YU$1;

    invoke-direct {v3, p0}, Lo/YU$1;-><init>(Lo/YU;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    :goto_4
    iget-boolean v0, p0, Lo/YU;->n:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lo/YU;->o:Lo/BC;

    if-eqz v0, :cond_5

    .line 588
    iget-boolean v3, p0, Lo/YU;->m:Z

    if-nez v3, :cond_5

    .line 589
    iget-object v3, p0, Lo/YU;->j:Landroid/widget/EditText;

    invoke-interface {v0}, Lo/BC;->getProfileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v0, p0, Lo/YU;->i:Landroid/widget/CheckBox;

    iget-object v3, p0, Lo/YU;->o:Lo/BC;

    invoke-interface {v3}, Lo/BC;->isKidsProfile()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 591
    iput-boolean v2, p0, Lo/YU;->m:Z

    .line 595
    :cond_5
    iget-object v0, p0, Lo/YU;->d:Lo/Am;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_7

    .line 597
    invoke-direct {p0, v2, v1}, Lo/YU;->a(ZZ)V

    goto :goto_6

    .line 599
    :cond_7
    invoke-direct {p0, v1, v2}, Lo/YU;->a(ZZ)V

    .line 601
    invoke-direct {p0}, Lo/YU;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 602
    iget-object v0, p0, Lo/YU;->p:Lo/BaseAdapter;

    iget-object v1, p0, Lo/YU;->r:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/BaseAdapter;->b(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lo/YU;->p:Lo/BaseAdapter;

    iget-object v1, p0, Lo/YU;->r:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/BaseAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_6
    return-void
.end method

.method static synthetic d(Lo/YU;ZZ)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lo/YU;->a(ZZ)V

    return-void
.end method

.method static synthetic d(Lo/YU;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lo/YU;->u:Z

    return p1
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lo/YU;->e()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    const-string p0, "extra_profile_id"

    .line 116
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method static synthetic e(Lo/YU;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;
    .locals 0

    .line 68
    iput-object p1, p0, Lo/YU;->r:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    return-object p1
.end method

.method public static e()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 122
    invoke-static {}, Lo/ady;->l()Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    invoke-static {}, Lo/eS;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 127
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lo/YQ;

    goto :goto_0

    :cond_1
    const-class v0, Lo/YU;

    :goto_0
    return-object v0

    .line 124
    :cond_2
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->I()Z

    move-result v0

    if-eqz v0, :cond_3

    const-class v0, Lo/YT;

    goto :goto_2

    :cond_3
    const-class v0, Lo/YX;

    :goto_2
    return-object v0
.end method

.method private e(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 651
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic e(Lo/YU;Z)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lo/YU;->b(Z)V

    return-void
.end method

.method static synthetic e(Lo/YU;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lo/YU;->m:Z

    return p0
.end method

.method private f()Z
    .locals 1

    .line 673
    iget-object v0, p0, Lo/YU;->r:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/YU;->r:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic f(Lo/YU;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lo/YU;->v:Z

    return p0
.end method

.method static synthetic g(Lo/YU;)Lcom/netflix/cl/model/ProfileSettings;
    .locals 0

    .line 68
    invoke-direct {p0}, Lo/YU;->n()Lcom/netflix/cl/model/ProfileSettings;

    move-result-object p0

    return-object p0
.end method

.method private g()Z
    .locals 1

    .line 669
    invoke-direct {p0}, Lo/YU;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/YU;->d:Lo/Am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/YU;->r:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic h(Lo/YU;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lo/YU;->d()V

    return-void
.end method

.method private h()Z
    .locals 5

    .line 716
    iget-object v0, p0, Lo/YU;->j:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 718
    iget-object v0, p0, Lo/YU;->d:Lo/Am;

    const-string v1, "ProfileDetailsActivity"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "Manager isn\'t available!"

    .line 719
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 723
    :cond_0
    iget-object v0, p0, Lo/YU;->r:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    if-nez v0, :cond_1

    const-string v0, "Current avatar isn\'t ready yet, but Save button was clicked!"

    .line 724
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 728
    :cond_1
    iget-object v0, p0, Lo/YU;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    .line 731
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 738
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 739
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->py:I

    invoke-virtual {p0, v0}, Lo/YU;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 740
    iget-object v1, p0, Lo/YU;->j:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return v2

    .line 745
    :cond_3
    iget-object v1, p0, Lo/YU;->d:Lo/Am;

    invoke-virtual {v1}, Lo/Am;->X()Ljava/util/List;

    move-result-object v1

    .line 746
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/BC;

    .line 748
    invoke-interface {v3}, Lo/BC;->getProfileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 749
    invoke-interface {v3}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lo/YU;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    .line 752
    :cond_5
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->pm:I

    invoke-virtual {p0, v0}, Lo/YU;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 753
    iget-object v1, p0, Lo/YU;->j:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return v2

    :cond_6
    const/4 v0, 0x0

    return v0

    .line 732
    :cond_7
    :goto_1
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->px:I

    invoke-virtual {p0, v0}, Lo/YU;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 733
    iget-object v1, p0, Lo/YU;->j:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return v2
.end method

.method static synthetic i(Lo/YU;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;
    .locals 0

    .line 68
    iget-object p0, p0, Lo/YU;->t:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    return-object p0
.end method

.method private i()Z
    .locals 1

    .line 647
    iget-object v0, p0, Lo/YU;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic j(Lo/YU;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;
    .locals 0

    .line 68
    iget-object p0, p0, Lo/YU;->r:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    return-object p0
.end method

.method private j()V
    .locals 3

    .line 677
    sget-object v0, Lo/YV;->b:Lo/YV;

    invoke-direct {p0}, Lo/YU;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lo/YU;->n()Lcom/netflix/cl/model/ProfileSettings;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/YV;->d(Ljava/lang/String;Lcom/netflix/cl/model/ProfileSettings;)V

    .line 679
    iget-boolean v0, p0, Lo/YU;->u:Z

    if-nez v0, :cond_1

    .line 680
    iget-boolean v0, p0, Lo/YU;->n:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->oZ:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->pj:I

    :goto_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/adk;->c(II)V

    .line 682
    :cond_1
    invoke-virtual {p0}, Lo/YU;->finish()V

    return-void
.end method

.method static synthetic k(Lo/YU;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lo/YU;->m()V

    return-void
.end method

.method static synthetic l(Lo/YU;)Landroid/os/Handler;
    .locals 0

    .line 68
    iget-object p0, p0, Lo/YU;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic m(Lo/YU;)Landroid/os/Handler;
    .locals 0

    .line 68
    iget-object p0, p0, Lo/YU;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private m()V
    .locals 1

    .line 763
    iget-object v0, p0, Lo/YU;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 764
    iget-object v0, p0, Lo/YU;->j:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lo/adq;->d(Landroid/app/Activity;Landroid/widget/EditText;)V

    return-void
.end method

.method private n()Lcom/netflix/cl/model/ProfileSettings;
    .locals 6

    .line 778
    sget-object v0, Lo/YV;->b:Lo/YV;

    iget-object v1, p0, Lo/YU;->d:Lo/Am;

    iget-object v2, p0, Lo/YU;->r:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    iget-object v3, p0, Lo/YU;->i:Landroid/widget/CheckBox;

    .line 781
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 782
    invoke-direct {p0}, Lo/YU;->o()I

    move-result v4

    iget-object v5, p0, Lo/YU;->o:Lo/BC;

    .line 778
    invoke-virtual/range {v0 .. v5}, Lo/YV;->d(Lo/Am;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;ZILo/BC;)Lcom/netflix/cl/model/ProfileSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n(Lo/YU;)Ljava/lang/String;
    .locals 0

    .line 68
    invoke-direct {p0}, Lo/YU;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private o()I
    .locals 1

    .line 768
    iget-object v0, p0, Lo/YU;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x46

    return v0

    .line 770
    :cond_0
    iget-object v0, p0, Lo/YU;->o:Lo/BC;

    if-eqz v0, :cond_1

    .line 771
    invoke-interface {v0}, Lo/BC;->getMaturityLevel()I

    move-result v0

    return v0

    :cond_1
    const v0, 0xf4240

    return v0
.end method

.method static synthetic o(Lo/YU;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lo/YU;->j()V

    return-void
.end method

.method static synthetic p(Lo/YU;)Lo/zU;
    .locals 0

    .line 68
    iget-object p0, p0, Lo/YU;->w:Lo/zU;

    return-object p0
.end method

.method static synthetic q(Lo/YU;)Z
    .locals 0

    .line 68
    invoke-direct {p0}, Lo/YU;->f()Z

    move-result p0

    return p0
.end method

.method static synthetic r(Lo/YU;)Landroid/widget/CheckBox;
    .locals 0

    .line 68
    iget-object p0, p0, Lo/YU;->i:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic s(Lo/YU;)Landroid/widget/EditText;
    .locals 0

    .line 68
    iget-object p0, p0, Lo/YU;->j:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic t(Lo/YU;)Z
    .locals 0

    .line 68
    invoke-direct {p0}, Lo/YU;->h()Z

    move-result p0

    return p0
.end method

.method static synthetic y(Lo/YU;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lo/YU;->l:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public createManagerStatusListener()Lo/zT;
    .locals 1

    .line 185
    new-instance v0, Lo/YU$5;

    invoke-direct {v0, p0}, Lo/YU$5;-><init>(Lo/YU;)V

    return-object v0
.end method

.method public finish()V
    .locals 2

    .line 173
    sget-object v0, Lo/YS;->a:Lo/YS;

    invoke-virtual {v0}, Lo/YS;->e()V

    .line 175
    invoke-virtual {p0}, Lo/YU;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_ORIGINAL_ICONS_DEEPLINK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lo/YU;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/YU;->startActivity(Landroid/content/Intent;)V

    .line 180
    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    return-void
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 237
    iget-boolean v0, p0, Lo/YU;->n:Z

    if-eqz v0, :cond_0

    .line 238
    sget-object v0, Lcom/netflix/cl/model/AppView;->addProfile:Lcom/netflix/cl/model/AppView;

    return-object v0

    .line 240
    :cond_0
    sget-object v0, Lcom/netflix/cl/model/AppView;->editProfile:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 1

    .line 246
    invoke-direct {p0}, Lo/YU;->j()V

    const/4 v0, 0x1

    return v0
.end method

.method public handleProfilesListUpdated()V
    .locals 2

    const-string v0, "ProfileDetailsActivity"

    const-string v1, "handleProfilesListUpdated"

    .line 225
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Lo/YU;->finish()V

    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 528
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x1771

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string p1, "avatar_name"

    .line 531
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    iput-object p1, p0, Lo/YU;->r:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    .line 532
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Got url: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lo/YU;->r:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ProfileDetailsActivity"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-direct {p0}, Lo/YU;->d()V

    goto :goto_0

    .line 534
    :cond_0
    sget p3, Lo/ClientCertRequest;->a:I

    if-ne p1, p3, :cond_1

    .line 535
    const-class p1, Lo/IE;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/IE;

    invoke-interface {p1, p2}, Lo/IE;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "ProfileDetailsActivity"

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 691
    iget-object p2, p0, Lo/YU;->o:Lo/BC;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 692
    invoke-direct {p0, p1, p1}, Lo/YU;->a(ZZ)V

    .line 693
    iget-object p2, p0, Lo/YU;->d:Lo/Am;

    iget-object v0, p0, Lo/YU;->o:Lo/BC;

    invoke-interface {v0}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/YU;->w:Lo/zU;

    invoke-virtual {p2, v0, v1}, Lo/Am;->c(Ljava/lang/String;Lo/zU;)V

    .line 694
    iput-boolean p1, p0, Lo/YU;->u:Z

    .line 695
    iput-boolean p1, p0, Lo/YU;->v:Z

    goto :goto_0

    :cond_0
    const-string p2, "Weird use case: profile deletion needs to be started, but input profile is null"

    .line 697
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    new-instance p1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->b:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p1, p2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 699
    invoke-virtual {p0, p1}, Lo/YU;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    .line 700
    sget-object p1, Lo/YV;->b:Lo/YV;

    new-instance p2, Lcom/netflix/cl/model/event/session/action/DeleteProfile;

    iget-object v0, p0, Lo/YU;->l:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/netflix/cl/model/event/session/action/DeleteProfile;-><init>(Ljava/lang/String;)V

    sget-object v0, Lo/LegacyErrorStrings;->V:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p1, p2, v0}, Lo/YV;->d(Lcom/netflix/cl/model/event/session/action/Action;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    const-string p2, "Negative dialog button was clicked"

    .line 703
    invoke-static {p1, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance p2, Lcom/netflix/cl/model/event/session/action/DeleteProfile;

    invoke-direct {p0}, Lo/YU;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/netflix/cl/model/event/session/action/DeleteProfile;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 705
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    const-string p2, "DeleteProfile"

    invoke-virtual {p1, p2}, Lcom/netflix/cl/ExtLogger;->cancelExclusiveAction(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    const-string p2, "Unhandled dialog button was clicked"

    .line 707
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 134
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lo/YU;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v2, "extra_profile_id"

    .line 137
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lo/YU;->l:Ljava/lang/String;

    .line 140
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->po:I

    invoke-virtual {p0, v2}, Lo/YU;->setTitle(I)V

    goto :goto_0

    .line 142
    :cond_0
    iput-boolean v1, p0, Lo/YU;->n:Z

    .line 144
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->s:I

    invoke-virtual {p0, v2}, Lo/YU;->setTitle(I)V

    :goto_0
    if-eqz v0, :cond_1

    const-string v2, "avatar_name"

    .line 147
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    iput-object v0, p0, Lo/YU;->r:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    .line 152
    :cond_1
    invoke-direct {p0}, Lo/YU;->c()V

    if-eqz p1, :cond_2

    const-string v0, "bundle_name"

    .line 154
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "bundle_kids"

    .line 155
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "bundle_default_avatar"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "bundle_current_avatar"

    .line 156
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 157
    iget-object v5, p0, Lo/YU;->j:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lo/YU;->i:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 159
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    iput-object v0, p0, Lo/YU;->t:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    .line 160
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    iput-object p1, p0, Lo/YU;->r:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    .line 163
    iget-object p1, p0, Lo/YU;->r:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/YU;->t:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    if-eqz p1, :cond_2

    .line 164
    iput-boolean v1, p0, Lo/YU;->m:Z

    .line 166
    :cond_2
    invoke-direct {p0}, Lo/YU;->d()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 216
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 217
    iget-object v0, p0, Lo/YU;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bundle_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lo/YU;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, "bundle_kids"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    iget-object v0, p0, Lo/YU;->t:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    const-string v1, "bundle_default_avatar"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 220
    iget-object v0, p0, Lo/YU;->r:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    const-string v1, "bundle_current_avatar"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public showNoNetworkOverlayIfNeeded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
