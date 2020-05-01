.class public final Lo/Vm;
.super Lo/Ve;
.source ""


# instance fields
.field private g:Lo/ExpandableListAdapter;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Z

.field private l:Z

.field private final n:Landroid/view/animation/ScaleAnimation;

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/Vm;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

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

    invoke-direct/range {v0 .. v5}, Lo/Vm;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lo/Ve;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 39
    iput p1, p0, Lo/Vm;->j:I

    .line 41
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/Vm;->i:Ljava/util/List;

    .line 47
    new-instance p1, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 57
    new-instance p2, Lo/Vm$TaskDescription;

    invoke-direct {p2, p1, p0}, Lo/Vm$TaskDescription;-><init>(Landroid/view/animation/ScaleAnimation;Lo/Vm;)V

    check-cast p2, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, p2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 56
    iput-object p1, p0, Lo/Vm;->n:Landroid/view/animation/ScaleAnimation;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 34
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 35
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/Vm;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final B()V
    .locals 7

    .line 382
    iget-object v0, p0, Lo/Vm;->i:Ljava/util/List;

    .line 383
    invoke-virtual {p0}, Lo/Vm;->t()Lcom/netflix/model/leafs/originals/interactive/BaseLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;

    const/4 v2, 0x0

    .line 384
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_0

    .line 385
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->elements()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;->choices()Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveTemplateChoicePoint$setupChoices$1;

    invoke-direct {v6, p0, v2}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveTemplateChoicePoint$setupChoices$1;-><init>(Lo/Vm;I)V

    check-cast v6, Lo/alN;

    invoke-static {v4, v5, v6}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 383
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.netflix.model.leafs.originals.interactive.UiDefinition.Layout"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final C()V
    .locals 6

    .line 565
    invoke-virtual {p0}, Lo/Vm;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->ftueText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 566
    invoke-virtual {p0}, Lo/Vm;->t()Lcom/netflix/model/leafs/originals/interactive/BaseLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;

    .line 567
    sget v2, Lcom/netflix/mediaclient/ui/R$Dialog;->bU:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p0, v2, v3, v4, v5}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    const-string v2, "it"

    .line 568
    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lo/Vm;->a(Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;)V

    goto :goto_0

    .line 566
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.netflix.model.leafs.originals.interactive.UiDefinition.Layout"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private final a(ILcom/netflix/model/leafs/originals/interactive/Choice;)V
    .locals 11

    const/4 v0, 0x1

    .line 576
    iput-boolean v0, p0, Lo/Vm;->o:Z

    .line 577
    iput p1, p0, Lo/Vm;->j:I

    .line 578
    sget-object v0, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast v0, Lo/MessagePdu;

    const-string v0, "explicitSelection"

    .line 580
    invoke-virtual {p0, v0}, Lo/Vm;->b(Ljava/lang/String;)V

    const-string v0, "selected"

    .line 582
    invoke-virtual {p0, p1, v0}, Lo/Vm;->a(ILjava/lang/String;)V

    .line 584
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Choice;->segmentId()Ljava/lang/String;

    move-result-object v0

    .line 585
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Choice;->action()Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;->type()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "playNextEpisode"

    invoke-static {v1, v5, v3, v4, v2}, Lo/anv;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v10

    if-nez v0, :cond_1

    .line 590
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    .line 591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "choiceDetail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    if-nez v10, :cond_1

    .line 593
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v2, "next segment Id is null."

    .line 594
    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 600
    :cond_1
    iget-boolean v1, p0, Lo/Vm;->k:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 601
    invoke-virtual {p0}, Lo/Vm;->s()Lo/Xt;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 603
    invoke-virtual {p0}, Lo/Vm;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v3

    .line 604
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Choice;->id()Ljava/lang/String;

    move-result-object v4

    const-string v5, "choiceDetail.id()"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Choice;->impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v5, v0

    .line 601
    invoke-static/range {v1 .. v9}, Lo/Xt$StateListAnimator;->d(Lo/Xt;ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;Ljava/lang/String;ILjava/lang/Object;)V

    .line 610
    :cond_2
    new-instance v1, Lo/Vm$PendingIntent;

    invoke-direct {v1, p0, v10, p2, v0}, Lo/Vm$PendingIntent;-><init>(Lo/Vm;ZLcom/netflix/model/leafs/originals/interactive/Choice;Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0}, Lo/Vm;->c()Lo/Vv;

    move-result-object p2

    iget-boolean v0, p0, Lo/Vm;->k:Z

    check-cast v1, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p2, v0, p1, v1}, Lo/Vv;->d(ZILandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private final a(ILcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;Lcom/netflix/model/leafs/originals/interactive/Choice;)V
    .locals 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    .line 432
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->bY:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v6, v0, v1, v2, v3}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    move-object v9, v0

    check-cast v9, Lo/Vn;

    .line 433
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {v9, v0}, Lo/Vn;->setId(I)V

    .line 434
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lo/Vn;->setTag(Ljava/lang/Object;)V

    .line 435
    invoke-virtual/range {p3 .. p3}, Lcom/netflix/model/leafs/originals/interactive/Choice;->text()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v9, v0}, Lo/Vn;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 437
    new-instance v0, Lo/Vm$Activity;

    invoke-direct {v0, v6, v7, v8}, Lo/Vm$Activity;-><init>(Lo/Vm;ILcom/netflix/model/leafs/originals/interactive/Choice;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v0}, Lo/Vn;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    new-instance v0, Lo/Vm$ActionBar;

    invoke-direct {v0, v6, v7, v8}, Lo/Vm$ActionBar;-><init>(Lo/Vm;ILcom/netflix/model/leafs/originals/interactive/Choice;)V

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {v9, v0}, Lo/Vn;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 508
    invoke-virtual/range {p0 .. p0}, Lo/Vm;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {v9}, Lo/Vn;->b()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lcom/netflix/model/leafs/originals/interactive/Choice;->segmentId()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 510
    sget-object v10, Lo/XJ;->c:Lo/XJ;

    .line 511
    invoke-virtual {v9}, Lo/Vn;->b()Lo/ImageSwitcher;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/view/View;

    const/4 v12, -0x2

    const/4 v13, -0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 516
    invoke-virtual/range {p0 .. p0}, Lo/Vm;->e()F

    move-result v16

    .line 510
    invoke-virtual/range {v10 .. v16}, Lo/XJ;->e(Landroid/view/View;IIIIF)V

    .line 520
    :cond_0
    move-object v1, v9

    check-cast v1, Landroid/view/View;

    move-object/from16 v2, p2

    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/template/Element;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lo/Ve;->setupElement$default(Lo/Ve;Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/lang/String;ILjava/lang/Object;)V

    .line 522
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;->children()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice$ChoiceChildren;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 523
    invoke-virtual {v9}, Lo/Vn;->a()Landroid/widget/FrameLayout;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const-string v0, "choiceLayoutChildren"

    invoke-static {v10, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v10

    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/template/Element;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lo/Ve;->setupElement$default(Lo/Ve;Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/lang/String;ILjava/lang/Object;)V

    .line 525
    invoke-virtual {v10}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice$ChoiceChildren;->background()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object v0

    .line 528
    invoke-virtual/range {p3 .. p3}, Lcom/netflix/model/leafs/originals/interactive/Choice;->background()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 529
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;->hasVisualStates()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    if-eqz v0, :cond_1

    .line 530
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;->toBuilder()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;->visualStates()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;->setVisualStates(Ljava/util/Map;)Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;->build()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 533
    invoke-virtual {v9}, Lo/Vn;->h()Lo/GridView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v2, v0

    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/template/Element;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lo/Ve;->setupElement$default(Lo/Ve;Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/lang/String;ILjava/lang/Object;)V

    .line 536
    :cond_3
    invoke-virtual {v9}, Lo/Vn;->j()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v10}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice$ChoiceChildren;->label()Lcom/netflix/model/leafs/originals/interactive/template/SimpleElement;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcom/netflix/model/leafs/originals/interactive/Choice;->text()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveTemplateChoicePoint$loadTemplateStandardChoice$$inlined$let$lambda$1;

    invoke-direct {v3, v6, v9, v8}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveTemplateChoicePoint$loadTemplateStandardChoice$$inlined$let$lambda$1;-><init>(Lo/Vm;Lo/Vn;Lcom/netflix/model/leafs/originals/interactive/Choice;)V

    check-cast v3, Lo/alO;

    invoke-static {v0, v1, v2, v3}, Lo/NfcA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lo/alO;)Ljava/lang/Object;

    .line 543
    invoke-virtual {v10}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice$ChoiceChildren;->underline()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 544
    invoke-virtual {v9}, Lo/Vn;->d()Landroid/view/View;

    move-result-object v1

    const-string v2, "underline"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/template/Element;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lo/Ve;->setupElement$default(Lo/Ve;Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/lang/String;ILjava/lang/Object;)V

    .line 548
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/netflix/model/leafs/originals/interactive/Choice;->icon()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 549
    invoke-virtual {v9}, Lo/Vn;->g()Lo/Vp;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const-string v2, "it"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/template/Element;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lo/Ve;->setupElement$default(Lo/Ve;Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/lang/String;ILjava/lang/Object;)V

    .line 551
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/netflix/model/leafs/originals/interactive/Choice;->icon()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object v0

    .line 552
    invoke-virtual {v10}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice$ChoiceChildren;->icon()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object v1

    if-eqz v0, :cond_7

    .line 553
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;->hasVisualStates()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 554
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;->toBuilder()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;->visualStates()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;->setVisualStates(Ljava/util/Map;)Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;->build()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    move-object v1, v0

    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    .line 557
    invoke-virtual {v9}, Lo/Vn;->g()Lo/Vp;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    move-object v3, v1

    check-cast v3, Lcom/netflix/model/leafs/originals/interactive/template/Element;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v8

    invoke-static/range {v0 .. v5}, Lo/Ve;->setupElement$default(Lo/Ve;Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_8
    const-string v0, "default"

    .line 561
    invoke-virtual {v6, v7, v0}, Lo/Vm;->a(ILjava/lang/String;)V

    return-void

    .line 432
    :cond_9
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.netflix.mediaclient.ui.player.v2.interactive.InteractiveChoicePointLayout"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic a(Lo/Vm;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lo/Vm;->o:Z

    return p0
.end method

.method public static final synthetic b(Lo/Vm;ILcom/netflix/model/leafs/originals/interactive/Choice;Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lo/Vm;->d(ILcom/netflix/model/leafs/originals/interactive/Choice;Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;)V

    return-void
.end method

.method public static final synthetic b(Lo/Vm;Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lo/Vm;->l:Z

    return-void
.end method

.method public static final synthetic b(Lo/Vm;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lo/Vm;->l:Z

    return p0
.end method

.method public static final synthetic c(Lo/Vm;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lo/Vm;->l()V

    return-void
.end method

.method public static final synthetic c(Lo/Vm;ILcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;Lcom/netflix/model/leafs/originals/interactive/Choice;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lo/Vm;->a(ILcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;Lcom/netflix/model/leafs/originals/interactive/Choice;)V

    return-void
.end method

.method public static final synthetic d(Lo/Vm;)Lo/ExpandableListAdapter;
    .locals 0

    .line 32
    iget-object p0, p0, Lo/Vm;->g:Lo/ExpandableListAdapter;

    return-object p0
.end method

.method private final d(ILcom/netflix/model/leafs/originals/interactive/Choice;Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;)V
    .locals 1

    .line 409
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->iH:I

    invoke-virtual {p0, p3}, Lo/Vm;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lo/ExpandableListAdapter;

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 410
    invoke-virtual {p3, v0}, Lo/ExpandableListAdapter;->setVisibility(I)V

    .line 412
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Choice;->text()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 413
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Lo/ExpandableListAdapter;->setText(Ljava/lang/CharSequence;)V

    .line 414
    invoke-virtual {p3, v0}, Lo/ExpandableListAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 416
    new-instance v0, Lo/Vm$StateListAnimator;

    invoke-direct {v0, p3, p0, p2, p1}, Lo/Vm$StateListAnimator;-><init>(Lo/ExpandableListAdapter;Lo/Vm;Lcom/netflix/model/leafs/originals/interactive/Choice;I)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Lo/ExpandableListAdapter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 409
    :cond_1
    :goto_0
    iput-object p3, p0, Lo/Vm;->g:Lo/ExpandableListAdapter;

    return-void
.end method

.method public static final synthetic e(Lo/Vm;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lo/Vm;->o()V

    return-void
.end method

.method public static final synthetic e(Lo/Vm;ILcom/netflix/model/leafs/originals/interactive/Choice;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lo/Vm;->a(ILcom/netflix/model/leafs/originals/interactive/Choice;)V

    return-void
.end method

.method public static final synthetic g(Lo/Vm;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lo/Vm;->k:Z

    return p0
.end method

.method private final k()V
    .locals 2

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v0}, Lo/Vm;->setVisibility(I)V

    .line 123
    invoke-virtual {p0}, Lo/Vm;->c()Lo/Vv;

    move-result-object v0

    new-instance v1, Lo/Vm$Application;

    invoke-direct {v1, p0}, Lo/Vm$Application;-><init>(Lo/Vm;)V

    check-cast v1, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Lo/Vv;->d(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private final l()V
    .locals 13

    .line 194
    sget-object v0, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 195
    iget-object v0, p0, Lo/Vm;->g:Lo/ExpandableListAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lo/ExpandableListAdapter;->d(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lo/Vm;->l:Z

    .line 197
    iget-boolean v2, p0, Lo/Vm;->o:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lo/Vm;->k:Z

    if-eqz v2, :cond_1

    .line 198
    invoke-virtual {p0}, Lo/Vm;->c()Lo/Vv;

    move-result-object v0

    iget-boolean v2, p0, Lo/Vm;->k:Z

    iget v4, p0, Lo/Vm;->j:I

    invoke-virtual {v0, v2, v4, v1, v3}, Lo/Vv;->b(ZIZLandroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_3

    .line 200
    :cond_1
    invoke-virtual {p0}, Lo/Vm;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/Moment;->timeoutSegment()Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;->getTimeoutSegmentId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 201
    :goto_0
    invoke-virtual {p0}, Lo/Vm;->r()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v4

    const/4 v11, -0x1

    if-eqz v2, :cond_7

    .line 203
    sget-object v3, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast v3, Lo/MessagePdu;

    .line 204
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v0, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    .line 205
    instance-of v5, v4, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    if-eqz v5, :cond_4

    .line 206
    check-cast v4, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->o()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, v5, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 207
    sget-object v6, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast v6, Lo/MessagePdu;

    .line 209
    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->m()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 208
    invoke-virtual {v4, v5}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->e(Ljava/lang/String;)Lo/Bj;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, v4, Lo/Bj;->b:[Lo/Bo;

    if-eqz v4, :cond_4

    .line 735
    array-length v5, v4

    :goto_1
    if-ge v0, v5, :cond_4

    aget-object v6, v4, v0

    .line 210
    sget-object v7, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast v7, Lo/MessagePdu;

    .line 211
    iget-object v6, v6, Lo/Bo;->a:Ljava/lang/String;

    invoke-static {v6, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 212
    sget-object v6, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast v6, Lo/MessagePdu;

    .line 213
    iput-boolean v1, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 219
    :cond_4
    iget-boolean v0, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    if-eqz v0, :cond_6

    .line 220
    sget-object v0, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 221
    invoke-virtual {p0}, Lo/Vm;->s()Lo/Xt;

    move-result-object v4

    if-eqz v4, :cond_5

    const/4 v5, 0x0

    .line 223
    invoke-virtual {p0}, Lo/Vm;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v2

    move-object v8, v2

    .line 221
    invoke-interface/range {v4 .. v10}, Lo/Xt;->d(ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;Ljava/lang/String;)V

    .line 229
    :cond_5
    iput v11, p0, Lo/Vm;->j:I

    .line 233
    :cond_6
    invoke-virtual {p0}, Lo/Vm;->c()Lo/Vv;

    move-result-object v0

    new-instance v1, Lo/Vm$FragmentManager;

    invoke-direct {v1, p0, v3, v2}, Lo/Vm$FragmentManager;-><init>(Lo/Vm;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;)V

    check-cast v1, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Lo/Vv;->b(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_3

    .line 253
    :cond_7
    iget-object v2, p0, Lo/Vm;->i:Ljava/util/List;

    .line 254
    sget-object v4, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast v4, Lo/MessagePdu;

    .line 255
    iget v4, p0, Lo/Vm;->j:I

    if-ne v4, v11, :cond_8

    move-object v1, v3

    goto :goto_2

    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    iget v1, p0, Lo/Vm;->j:I

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/originals/interactive/Choice;

    :goto_2
    if-eqz v1, :cond_9

    .line 256
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->segmentId()Ljava/lang/String;

    move-result-object v3

    .line 257
    :cond_9
    iget-boolean v2, p0, Lo/Vm;->k:Z

    if-eqz v2, :cond_a

    if-eqz v3, :cond_a

    .line 258
    invoke-virtual {p0}, Lo/Vm;->s()Lo/Xt;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 259
    iget-boolean v5, p0, Lo/Vm;->o:Z

    .line 260
    invoke-virtual {p0}, Lo/Vm;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v6

    .line 261
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->id()Ljava/lang/String;

    move-result-object v7

    const-string v2, "nextChoice.id()"

    invoke-static {v7, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v11, 0x20

    const/4 v12, 0x0

    move-object v8, v3

    .line 258
    invoke-static/range {v4 .. v12}, Lo/Xt$StateListAnimator;->d(Lo/Xt;ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_a
    if-eqz v1, :cond_b

    .line 268
    invoke-virtual {p0}, Lo/Vm;->a()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->elements()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;->choices()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b

    iget v4, p0, Lo/Vm;->j:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;

    if-eqz v2, :cond_b

    const-string v2, "explicitSelection"

    .line 269
    invoke-virtual {p0, v2}, Lo/Vm;->b(Ljava/lang/String;)V

    .line 270
    iget v2, p0, Lo/Vm;->j:I

    const-string v4, "selected"

    invoke-virtual {p0, v2, v4}, Lo/Vm;->a(ILjava/lang/String;)V

    .line 274
    :cond_b
    new-instance v2, Lo/Vm$Dialog;

    invoke-direct {v2, v1, v3, p0}, Lo/Vm$Dialog;-><init>(Lcom/netflix/model/leafs/originals/interactive/Choice;Ljava/lang/String;Lo/Vm;)V

    .line 304
    invoke-virtual {p0}, Lo/Vm;->c()Lo/Vv;

    move-result-object v1

    iget-boolean v3, p0, Lo/Vm;->k:Z

    .line 305
    iget v4, p0, Lo/Vm;->j:I

    .line 307
    check-cast v2, Landroid/view/animation/Animation$AnimationListener;

    .line 304
    invoke-virtual {v1, v3, v4, v0, v2}, Lo/Vv;->b(ZIZLandroid/view/animation/Animation$AnimationListener;)V

    :goto_3
    return-void
.end method

.method private final m()V
    .locals 12

    .line 327
    invoke-virtual {p0}, Lo/Vm;->a()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->elements()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;->timer()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 329
    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->bV:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Landroid/widget/FrameLayout;

    .line 330
    move-object v3, v1

    check-cast v3, Landroid/view/View;

    const-string v2, "timerViewModel"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Lcom/netflix/model/leafs/originals/interactive/template/Element;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lo/Ve;->setupElement$default(Lo/Ve;Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/lang/String;ILjava/lang/Object;)V

    .line 332
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer;->children()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren;->background()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object v2

    const-string v3, "this"

    if-eqz v2, :cond_0

    .line 335
    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->tk:I

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/GridView;

    if-eqz v4, :cond_0

    .line 336
    move-object v6, v4

    check-cast v6, Landroid/view/View;

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v2

    check-cast v7, Lcom/netflix/model/leafs/originals/interactive/template/Element;

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lo/Ve;->setupElement$default(Lo/Ve;Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/lang/String;ILjava/lang/Object;)V

    .line 340
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren;->overlay()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 341
    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->to:I

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/GridView;

    if-eqz v4, :cond_1

    .line 343
    move-object v6, v4

    check-cast v6, Landroid/view/View;

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v2

    check-cast v7, Lcom/netflix/model/leafs/originals/interactive/template/Element;

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lo/Ve;->setupElement$default(Lo/Ve;Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/lang/String;ILjava/lang/Object;)V

    .line 347
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren;->fillContainer()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 348
    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->th:I

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/MenuInflater;

    if-eqz v4, :cond_4

    .line 350
    move-object v6, v4

    check-cast v6, Landroid/view/View;

    move-object v7, v2

    check-cast v7, Lcom/netflix/model/leafs/originals/interactive/template/Element;

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lo/Ve;->setupElement$default(Lo/Ve;Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/lang/String;ILjava/lang/Object;)V

    .line 352
    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar;->children()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;->leftCap()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 353
    sget v5, Lcom/netflix/mediaclient/ui/R$Fragment;->ti:I

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/GridView;

    if-eqz v5, :cond_2

    .line 354
    move-object v7, v5

    check-cast v7, Landroid/view/View;

    invoke-static {v4, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v4

    check-cast v8, Lcom/netflix/model/leafs/originals/interactive/template/Element;

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lo/Ve;->setupElement$default(Lo/Ve;Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/lang/String;ILjava/lang/Object;)V

    .line 358
    :cond_2
    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar;->children()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;->fill()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object v4

    .line 359
    sget v5, Lcom/netflix/mediaclient/ui/R$Fragment;->tg:I

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/GridView;

    if-eqz v5, :cond_3

    .line 360
    move-object v7, v5

    check-cast v7, Landroid/view/View;

    invoke-static {v4, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v4

    check-cast v8, Lcom/netflix/model/leafs/originals/interactive/template/Element;

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lo/Ve;->setupElement$default(Lo/Ve;Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/lang/String;ILjava/lang/Object;)V

    .line 363
    :cond_3
    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar;->children()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;->rightCap()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 364
    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->tm:I

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/GridView;

    if-eqz v4, :cond_4

    .line 366
    move-object v6, v4

    check-cast v6, Landroid/view/View;

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v2

    check-cast v7, Lcom/netflix/model/leafs/originals/interactive/template/Element;

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lo/Ve;->setupElement$default(Lo/Ve;Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/lang/String;ILjava/lang/Object;)V

    .line 372
    :cond_4
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren;->deviceIcon()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 373
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->tl:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/GridView;

    if-eqz v1, :cond_6

    .line 375
    move-object v5, v1

    check-cast v5, Landroid/view/View;

    invoke-static {v0, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v0

    check-cast v6, Lcom/netflix/model/leafs/originals/interactive/template/Element;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lo/Ve;->setupElement$default(Lo/Ve;Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 329
    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    return-void
.end method

.method private final n()V
    .locals 11

    .line 316
    invoke-virtual {p0}, Lo/Vm;->a()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->elements()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;->background()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->ca:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object v6

    .line 319
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->setId(I)V

    const-string v1, "backgroundViewElement"

    .line 321
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v0

    check-cast v7, Lcom/netflix/model/leafs/originals/interactive/template/Element;

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lo/Ve;->setupElement$default(Lo/Ve;Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final o()V
    .locals 6

    .line 149
    sget-object v0, Lo/Vq;->b:Lo/Vq;

    invoke-virtual {p0}, Lo/Vm;->r()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v1

    invoke-virtual {p0}, Lo/Vm;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/Vq;->a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/model/leafs/originals/interactive/Moment;)J

    move-result-wide v0

    .line 150
    invoke-virtual {p0}, Lo/Vm;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "animator_duration_scale"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    cmpg-float v2, v2, v3

    if-nez v2, :cond_0

    .line 153
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->tg:I

    invoke-virtual {p0, v2}, Lo/Vm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const-string v4, "timerBarFillView"

    .line 155
    invoke-static {v2, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    aput v5, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 156
    new-instance v1, Lo/Vm$Fragment;

    invoke-direct {v1, v2}, Lo/Vm$Fragment;-><init>(Landroid/view/View;)V

    check-cast v1, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 161
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v5, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    const-string v3, "timerAnimatorImpl"

    .line 162
    invoke-static {v0, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lo/Vf;->h:Lo/Vf$Activity;

    invoke-virtual {v3}, Lo/Vf$Activity;->c()Landroid/view/animation/LinearInterpolator;

    move-result-object v3

    check-cast v3, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 163
    new-instance v3, Lo/Vm$LoaderManager;

    invoke-direct {v3, p0, v1, v2}, Lo/Vm$LoaderManager;-><init>(Lo/Vm;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/View;)V

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 183
    move-object v1, v0

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {p0, v1}, Lo/Vm;->e(Landroid/animation/Animator;)V

    .line 184
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 186
    :cond_0
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->th:I

    invoke-virtual {p0, v2}, Lo/Vm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 187
    iget-object v3, p0, Lo/Vm;->n:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v3, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 188
    iget-object v0, p0, Lo/Vm;->n:Landroid/view/animation/ScaleAnimation;

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lo/ErrorCodes;Lo/Xz;Lcom/netflix/model/leafs/originals/interactive/Moment;Lcom/netflix/model/leafs/originals/interactive/BaseLayout;Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/UiDefinition;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;",
            "Lo/ErrorCodes;",
            "Lo/Xz;",
            "Lcom/netflix/model/leafs/originals/interactive/Moment;",
            "Lcom/netflix/model/leafs/originals/interactive/BaseLayout;",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;",
            "Lcom/netflix/model/leafs/originals/interactive/UiDefinition;",
            "I)V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p6

    const-string v0, "imageLoaderRepository"

    move-object v2, p2

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moment"

    move-object v9, p4

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseLayout"

    move-object v5, p5

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "choices"

    invoke-static {v8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    move-object v3, p3

    check-cast v3, Lo/Xt;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object/from16 v6, p7

    .line 85
    invoke-super/range {v0 .. v6}, Lo/Ve;->a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lo/ErrorCodes;Lo/Xt;Lcom/netflix/model/leafs/originals/interactive/Moment;Lcom/netflix/model/leafs/originals/interactive/BaseLayout;Lcom/netflix/model/leafs/originals/interactive/UiDefinition;)V

    .line 94
    iput-object v8, v7, Lo/Vm;->i:Ljava/util/List;

    .line 95
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast v0, Lo/MessagePdu;

    return-void

    :cond_0
    move/from16 v0, p8

    .line 101
    iput v0, v7, Lo/Vm;->j:I

    .line 103
    invoke-virtual {p4}, Lcom/netflix/model/leafs/originals/interactive/Moment;->config()Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->autoSelectChoiceOnTimeout()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    .line 104
    iput v0, v7, Lo/Vm;->j:I

    .line 107
    :cond_2
    invoke-virtual {p4}, Lcom/netflix/model/leafs/originals/interactive/Moment;->config()Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveSceneConfig;->queueSelectedChoice()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lo/Vm;->a()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->config()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Config;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Config;->queueSelectedChoice()Ljava/lang/Boolean;

    move-result-object v1

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 108
    :cond_5
    iput-boolean v2, v7, Lo/Vm;->k:Z

    .line 110
    invoke-virtual {p0}, Lo/Vm;->a()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->config()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Config;->subtitleRect()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Config$SubtitleRect;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Config$SubtitleRect;->y()I

    move-result v0

    goto :goto_2

    :cond_6
    const/16 v0, 0x12c

    :goto_2
    int-to-float v0, v0

    invoke-virtual {p0}, Lo/Vm;->e()F

    move-result v1

    mul-float v0, v0, v1

    invoke-virtual {p0}, Lo/Vm;->d()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lo/Vm;->setSubtitleY(F)V

    .line 111
    sget-object v0, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 113
    invoke-direct {p0}, Lo/Vm;->n()V

    .line 114
    invoke-direct {p0}, Lo/Vm;->m()V

    .line 115
    invoke-direct {p0}, Lo/Vm;->B()V

    .line 116
    invoke-direct {p0}, Lo/Vm;->C()V

    .line 117
    invoke-direct {p0}, Lo/Vm;->k()V

    return-void
.end method

.method public f()V
    .locals 3

    .line 687
    invoke-virtual {p0}, Lo/Vm;->u()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 688
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 689
    sget-object v1, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast v1, Lo/MessagePdu;

    .line 690
    invoke-virtual {v0}, Landroid/animation/Animator;->pause()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    const/16 v0, 0x8

    .line 673
    invoke-virtual {p0, v0}, Lo/Vm;->setVisibility(I)V

    .line 674
    invoke-virtual {p0}, Lo/Vm;->clearAnimation()V

    .line 675
    invoke-virtual {p0}, Lo/Vm;->u()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 676
    :cond_0
    invoke-super {p0}, Lo/Ve;->g()V

    return-void
.end method

.method public h()V
    .locals 3

    .line 695
    invoke-virtual {p0}, Lo/Vm;->u()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {v0}, Landroid/animation/Animator;->isPaused()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 697
    sget-object v1, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast v1, Lo/MessagePdu;

    .line 698
    invoke-virtual {v0}, Landroid/animation/Animator;->resume()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 703
    invoke-super {p0, p1}, Lo/Ve;->setVisibility(I)V

    .line 704
    sget-object p1, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method
