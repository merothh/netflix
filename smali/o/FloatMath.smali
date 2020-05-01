.class public final Lo/FloatMath;
.super Lo/ChangeScroll;
.source ""


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/CharSequence;

.field private final e:Z

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Z

.field private final h:Ljava/lang/String;

.field private final i:Lo/InputBinding;

.field private final j:Z

.field private final k:Lo/DisplayMetrics;

.field private final l:Lo/LocaleSpan;

.field private final m:Lo/RelativeSizeSpan;

.field private final n:Lo/NotificationStats;

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lo/FastImmutableArraySet;

.field private final q:Lo/AlignmentSpan;

.field private final r:Lo/DigitsKeyListener;

.field private final s:Lo/TextClassificationSessionFactory;

.field private final t:Lo/TextClassificationSessionFactory;

.field private final x:Lo/TextClassificationSessionFactory;


# direct methods
.method public constructor <init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/DynamicDrawableSpan;Lo/TextClassifierService;Ljava/util/List;Lo/DisplayMetrics;Lo/NotificationStats;Lo/LocaleSpan;Lo/RelativeSizeSpan;Lo/AlignmentSpan;Lo/DigitsKeyListener;Lo/FastImmutableArraySet;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;Lo/TextClassificationSessionFactory;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TextClassifierImpl;",
            "Lo/InputBinding;",
            "Lo/DynamicDrawableSpan;",
            "Lo/TextClassifierService;",
            "Ljava/util/List<",
            "+",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;",
            "Lo/DisplayMetrics;",
            "Lo/NotificationStats;",
            "Lo/LocaleSpan;",
            "Lo/RelativeSizeSpan;",
            "Lo/AlignmentSpan;",
            "Lo/DigitsKeyListener;",
            "Lo/FastImmutableArraySet;",
            "Lo/TextClassificationSessionFactory;",
            "Lo/TextClassificationSessionFactory;",
            "Lo/TextClassificationSessionFactory;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    const-string v15, "signupNetworkManager"

    invoke-static {v1, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "stringProvider"

    invoke-static {v2, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "stepsViewModel"

    move-object/from16 v0, p3

    invoke-static {v0, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "errorMessageViewModel"

    invoke-static {v3, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "formFields"

    invoke-static {v4, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "lifecycleData"

    invoke-static {v5, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "changePlanViewModel"

    invoke-static {v6, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "touViewModel"

    invoke-static {v7, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "upgradeOnUsPlanViewModel"

    invoke-static {v8, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "startMembershipButtonViewModel"

    invoke-static {v9, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "giftCodeAppliedBannerViewModel"

    invoke-static {v10, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "parsedData"

    invoke-static {v11, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "startMembershipRequestLogger"

    invoke-static {v12, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "changePlanRequestLogger"

    invoke-static {v13, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "changePaymentRequestLogger"

    invoke-static {v14, v15}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 41
    invoke-direct {v0, v1, v2, v3}, Lo/ChangeScroll;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;)V

    iput-object v2, v0, Lo/FloatMath;->i:Lo/InputBinding;

    iput-object v4, v0, Lo/FloatMath;->o:Ljava/util/List;

    iput-object v5, v0, Lo/FloatMath;->k:Lo/DisplayMetrics;

    iput-object v6, v0, Lo/FloatMath;->n:Lo/NotificationStats;

    iput-object v7, v0, Lo/FloatMath;->l:Lo/LocaleSpan;

    iput-object v8, v0, Lo/FloatMath;->m:Lo/RelativeSizeSpan;

    iput-object v9, v0, Lo/FloatMath;->q:Lo/AlignmentSpan;

    iput-object v10, v0, Lo/FloatMath;->r:Lo/DigitsKeyListener;

    iput-object v11, v0, Lo/FloatMath;->p:Lo/FastImmutableArraySet;

    iput-object v12, v0, Lo/FloatMath;->t:Lo/TextClassificationSessionFactory;

    iput-object v13, v0, Lo/FloatMath;->s:Lo/TextClassificationSessionFactory;

    iput-object v14, v0, Lo/FloatMath;->x:Lo/TextClassificationSessionFactory;

    .line 43
    iget-object v1, v0, Lo/FloatMath;->p:Lo/FastImmutableArraySet;

    invoke-virtual {v1}, Lo/FastImmutableArraySet;->o()Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lo/TextLinksParams;->c:Lo/TextLinksParams$StateListAnimator;

    invoke-virtual {v2}, Lo/TextLinksParams$StateListAnimator;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/android/moneyball/fields/Field;->setValue(Ljava/lang/Object;)V

    .line 58
    :cond_0
    iget-object v1, v0, Lo/FloatMath;->p:Lo/FastImmutableArraySet;

    invoke-virtual {v1}, Lo/FastImmutableArraySet;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "dcbOptionMode"

    :goto_0
    iput-object v1, v0, Lo/FloatMath;->c:Ljava/lang/String;

    .line 59
    iget-object v1, v0, Lo/FloatMath;->p:Lo/FastImmutableArraySet;

    invoke-virtual {v1}, Lo/FastImmutableArraySet;->d()Z

    move-result v1

    iput-boolean v1, v0, Lo/FloatMath;->a:Z

    .line 61
    invoke-virtual/range {p3 .. p3}, Lo/DynamicDrawableSpan;->b()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lo/FloatMath;->d:Ljava/lang/CharSequence;

    .line 98
    iget-object v1, v0, Lo/FloatMath;->p:Lo/FastImmutableArraySet;

    invoke-virtual {v1}, Lo/FastImmutableArraySet;->a()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lo/FloatMath;->i:Lo/InputBinding;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ko:I

    invoke-virtual {v1, v2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lo/FloatMath;->b:Ljava/lang/String;

    .line 99
    iget-object v1, v0, Lo/FloatMath;->p:Lo/FastImmutableArraySet;

    invoke-virtual {v1}, Lo/FastImmutableArraySet;->c()Z

    move-result v1

    iput-boolean v1, v0, Lo/FloatMath;->e:Z

    .line 101
    iget-object v1, v0, Lo/FloatMath;->p:Lo/FastImmutableArraySet;

    invoke-virtual {v1}, Lo/FastImmutableArraySet;->e()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lo/FloatMath;->f:Ljava/util/List;

    .line 103
    iget-object v1, v0, Lo/FloatMath;->p:Lo/FastImmutableArraySet;

    invoke-virtual {v1}, Lo/FastImmutableArraySet;->f()Z

    move-result v1

    iput-boolean v1, v0, Lo/FloatMath;->j:Z

    .line 105
    iget-object v1, v0, Lo/FloatMath;->p:Lo/FastImmutableArraySet;

    invoke-virtual {v1}, Lo/FastImmutableArraySet;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/FloatMath;->h:Ljava/lang/String;

    .line 107
    invoke-virtual/range {p0 .. p0}, Lo/FloatMath;->d()Lo/Cloneable;

    move-result-object v1

    invoke-virtual {v1}, Lo/Cloneable;->d()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lo/FloatMath;->p:Lo/FastImmutableArraySet;

    invoke-virtual {v1}, Lo/FastImmutableArraySet;->j()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, v0, Lo/FloatMath;->g:Z

    return-void
.end method

.method private final C()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lo/FloatMath;->k:Lo/DisplayMetrics;

    invoke-virtual {v0}, Lo/DisplayMetrics;->c()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method private final y()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lo/FloatMath;->k:Lo/DisplayMetrics;

    invoke-virtual {v0}, Lo/DisplayMetrics;->b()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lo/FloatMath;->a:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lo/FloatMath;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()V
    .locals 3

    .line 47
    iget-object v0, p0, Lo/FloatMath;->p:Lo/FastImmutableArraySet;

    invoke-virtual {v0}, Lo/FastImmutableArraySet;->g()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    invoke-virtual {p0}, Lo/FloatMath;->p()Lo/Cloneable;

    move-result-object v1

    iget-object v2, p0, Lo/FloatMath;->t:Lo/TextClassificationSessionFactory;

    invoke-virtual {p0, v0, v1, v2}, Lo/FloatMath;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 2

    .line 81
    iget-object v0, p0, Lo/FloatMath;->p:Lo/FastImmutableArraySet;

    invoke-virtual {v0}, Lo/FastImmutableArraySet;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->fs:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->fM:I

    .line 83
    :goto_0
    iget-object v1, p0, Lo/FloatMath;->i:Lo/InputBinding;

    invoke-virtual {v1, v0}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final g()V
    .locals 3

    .line 55
    iget-object v0, p0, Lo/FloatMath;->p:Lo/FastImmutableArraySet;

    invoke-virtual {v0}, Lo/FastImmutableArraySet;->j()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    invoke-direct {p0}, Lo/FloatMath;->C()Lo/Cloneable;

    move-result-object v1

    iget-object v2, p0, Lo/FloatMath;->x:Lo/TextClassificationSessionFactory;

    invoke-virtual {p0, v0, v1, v2}, Lo/FloatMath;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public final h()Ljava/lang/CharSequence;
    .locals 1

    .line 61
    iget-object v0, p0, Lo/FloatMath;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final i()V
    .locals 3

    .line 51
    iget-object v0, p0, Lo/FloatMath;->n:Lo/NotificationStats;

    invoke-virtual {v0}, Lo/NotificationStats;->c()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    invoke-direct {p0}, Lo/FloatMath;->y()Lo/Cloneable;

    move-result-object v1

    iget-object v2, p0, Lo/FloatMath;->s:Lo/TextClassificationSessionFactory;

    invoke-virtual {p0, v0, v1, v2}, Lo/FloatMath;->b(Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;)V

    return-void
.end method

.method public final j()Ljava/lang/CharSequence;
    .locals 3

    .line 64
    iget-object v0, p0, Lo/FloatMath;->p:Lo/FastImmutableArraySet;

    invoke-virtual {v0}, Lo/FastImmutableArraySet;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lo/FloatMath;->i:Lo/InputBinding;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gx:I

    invoke-virtual {v0, v1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lo/FloatMath;->i:Lo/InputBinding;

    .line 70
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->qR:I

    invoke-virtual {v0, v1}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lo/FloatMath;->p:Lo/FastImmutableArraySet;

    invoke-virtual {v1}, Lo/FastImmutableArraySet;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "carrier"

    invoke-virtual {v0, v2, v1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lo/FloatMath;->i:Lo/InputBinding;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->qY:I

    invoke-virtual {v1, v2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lo/FloatMath;->p:Lo/FastImmutableArraySet;

    invoke-virtual {v2}, Lo/FastImmutableArraySet;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method public final k()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lo/FloatMath;->e:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lo/FloatMath;->j:Z

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lo/FloatMath;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lo/FloatMath;->f:Ljava/util/List;

    return-object v0
.end method

.method public final o()Ljava/lang/CharSequence;
    .locals 2

    .line 89
    iget-object v0, p0, Lo/FloatMath;->p:Lo/FastImmutableArraySet;

    invoke-virtual {v0}, Lo/FastImmutableArraySet;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/FloatMath;->p:Lo/FastImmutableArraySet;

    invoke-virtual {v0}, Lo/FastImmutableArraySet;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->fy:I

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lo/FloatMath;->p:Lo/FastImmutableArraySet;

    invoke-virtual {v0}, Lo/FastImmutableArraySet;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->fA:I

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lo/FloatMath;->p:Lo/FastImmutableArraySet;

    invoke-virtual {v0}, Lo/FastImmutableArraySet;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->fS:I

    goto :goto_0

    .line 92
    :cond_2
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->fT:I

    .line 95
    :goto_0
    iget-object v1, p0, Lo/FloatMath;->i:Lo/InputBinding;

    invoke-virtual {v1, v0}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final p()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lo/FloatMath;->k:Lo/DisplayMetrics;

    invoke-virtual {v0}, Lo/DisplayMetrics;->d()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lo/FloatMath;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lo/FloatMath;->g:Z

    return v0
.end method

.method public final s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lo/FloatMath;->o:Ljava/util/List;

    return-object v0
.end method

.method public final t()Lo/NotificationStats;
    .locals 1

    .line 32
    iget-object v0, p0, Lo/FloatMath;->n:Lo/NotificationStats;

    return-object v0
.end method

.method public final u()Lo/DigitsKeyListener;
    .locals 1

    .line 36
    iget-object v0, p0, Lo/FloatMath;->r:Lo/DigitsKeyListener;

    return-object v0
.end method

.method public final v()Lo/LocaleSpan;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/FloatMath;->l:Lo/LocaleSpan;

    return-object v0
.end method

.method public final w()Lo/RelativeSizeSpan;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/FloatMath;->m:Lo/RelativeSizeSpan;

    return-object v0
.end method

.method public final x()Lo/AlignmentSpan;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/FloatMath;->q:Lo/AlignmentSpan;

    return-object v0
.end method
