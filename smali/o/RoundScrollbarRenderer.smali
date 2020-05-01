.class public final Lo/RoundScrollbarRenderer;
.super Lo/InputChannel;
.source ""


# instance fields
.field private a:Lo/Cloneable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Cloneable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/RecordingCanvas;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/RecordingCanvas;",
            ">;"
        }
    .end annotation
.end field

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:I

.field private final j:Landroid/text/Spannable;

.field private final l:Lo/InputEventReceiver;

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/RemoteAnimationTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/InputEventReceiver;Lo/InputEventConsistencyVerifier;Ljava/util/List;Lo/RelativeSizeSpan;Ljava/util/List;Lo/RenderNodeAnimator;Ljava/util/List;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/TextClassifierImpl;Lo/TextClassifierService;Lo/SystemTextClassifier;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputBinding;",
            "Lo/InputEventReceiver;",
            "Lo/InputEventConsistencyVerifier;",
            "Ljava/util/List<",
            "Lo/GhostView;",
            ">;",
            "Lo/RelativeSizeSpan;",
            "Ljava/util/List<",
            "Lo/RemoteAnimationTarget;",
            ">;",
            "Lo/RenderNodeAnimator;",
            "Ljava/util/List<",
            "Lo/GestureDetector;",
            ">;",
            "Lo/TextClassificationSessionFactory;",
            "Lo/DynamicDrawableSpan;",
            "Lo/TextClassifierImpl;",
            "Lo/TextClassifierService;",
            "Lo/SystemTextClassifier;",
            ")V"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p6

    const-string v0, "stringProvider"

    invoke-static {v13, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {v14, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleData"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "planOptionViewModels"

    move-object/from16 v4, p4

    invoke-static {v4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradeOnUsPlanViewModel"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "planCardViewModelsList"

    invoke-static {v15, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auctorPlanUIData"

    move-object/from16 v11, p7

    invoke-static {v11, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "planRowParsedData"

    move-object/from16 v6, p8

    invoke-static {v6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "planSelectionRequestLogger"

    move-object/from16 v7, p9

    invoke-static {v7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepsViewModel"

    move-object/from16 v8, p10

    invoke-static {v8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupNetworkManager"

    move-object/from16 v9, p11

    invoke-static {v9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    move-object/from16 v10, p12

    invoke-static {v10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupErrorReporter"

    move-object/from16 v2, p13

    invoke-static {v2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v11, p13

    .line 31
    invoke-direct/range {v0 .. v11}, Lo/InputChannel;-><init>(Lo/InputBinding;Lo/InputEventReceiver;Lo/InputEventConsistencyVerifier;Ljava/util/List;Lo/RelativeSizeSpan;Ljava/util/List;Lo/TextClassificationSessionFactory;Lo/DynamicDrawableSpan;Lo/TextClassifierImpl;Lo/TextClassifierService;Lo/SystemTextClassifier;)V

    iput-object v14, v12, Lo/RoundScrollbarRenderer;->l:Lo/InputEventReceiver;

    iput-object v15, v12, Lo/RoundScrollbarRenderer;->o:Ljava/util/List;

    .line 45
    iget-object v0, v12, Lo/RoundScrollbarRenderer;->o:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 139
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 140
    check-cast v3, Lo/RemoteAnimationTarget;

    .line 46
    new-instance v4, Lo/RecordingCanvas;

    .line 47
    invoke-virtual {v3}, Lo/RemoteAnimationTarget;->d()Ljava/lang/String;

    move-result-object v15

    .line 48
    invoke-virtual {v3}, Lo/RemoteAnimationTarget;->a()Ljava/lang/String;

    move-result-object v16

    .line 49
    invoke-virtual {v3}, Lo/RemoteAnimationTarget;->i()Ljava/lang/String;

    move-result-object v17

    .line 50
    invoke-virtual {v3}, Lo/RemoteAnimationTarget;->h()Ljava/lang/String;

    move-result-object v18

    .line 51
    invoke-virtual {v3}, Lo/RemoteAnimationTarget;->e()Ljava/util/List;

    move-result-object v19

    .line 52
    invoke-virtual {v3}, Lo/RemoteAnimationTarget;->g()Ljava/util/List;

    move-result-object v20

    .line 53
    invoke-virtual {v3}, Lo/RemoteAnimationTarget;->b()Ljava/lang/String;

    move-result-object v21

    .line 54
    iget-object v5, v12, Lo/RoundScrollbarRenderer;->o:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v22

    .line 55
    invoke-virtual {v3}, Lo/RemoteAnimationTarget;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lo/RoundScrollbarRenderer;->p()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v23

    move-object v14, v4

    .line 46
    invoke-direct/range {v14 .. v23}, Lo/RecordingCanvas;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IZ)V

    .line 56
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :cond_0
    check-cast v1, Ljava/util/List;

    iput-object v1, v12, Lo/RoundScrollbarRenderer;->b:Ljava/util/List;

    .line 59
    iget-object v0, v12, Lo/RoundScrollbarRenderer;->b:Ljava/util/List;

    const/4 v1, 0x0

    .line 143
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 144
    check-cast v3, Lo/RecordingCanvas;

    .line 59
    invoke-virtual {v3}, Lo/RecordingCanvas;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    .line 148
    :goto_2
    iput v1, v12, Lo/RoundScrollbarRenderer;->c:I

    .line 62
    new-instance v0, Lo/Cloneable;

    invoke-direct {v0}, Lo/Cloneable;-><init>()V

    iget-object v1, v12, Lo/RoundScrollbarRenderer;->b:Ljava/util/List;

    iget v3, v12, Lo/RoundScrollbarRenderer;->c:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/RecordingCanvas;

    invoke-virtual {v1}, Lo/RecordingCanvas;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Cloneable;->e(Ljava/lang/Object;)V

    iput-object v0, v12, Lo/RoundScrollbarRenderer;->a:Lo/Cloneable;

    .line 64
    iget-object v0, v12, Lo/RoundScrollbarRenderer;->o:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 150
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lo/RemoteAnimationTarget;

    .line 65
    invoke-virtual {v4}, Lo/RemoteAnimationTarget;->c()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 151
    :cond_4
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 153
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 154
    check-cast v2, Lo/RemoteAnimationTarget;

    .line 67
    new-instance v3, Lo/RecordingCanvas;

    .line 68
    invoke-virtual {v2}, Lo/RemoteAnimationTarget;->d()Ljava/lang/String;

    move-result-object v15

    .line 69
    invoke-virtual {v2}, Lo/RemoteAnimationTarget;->a()Ljava/lang/String;

    move-result-object v16

    .line 70
    invoke-virtual {v2}, Lo/RemoteAnimationTarget;->i()Ljava/lang/String;

    move-result-object v17

    .line 71
    invoke-virtual {v2}, Lo/RemoteAnimationTarget;->h()Ljava/lang/String;

    move-result-object v18

    .line 72
    invoke-virtual {v2}, Lo/RemoteAnimationTarget;->e()Ljava/util/List;

    move-result-object v19

    .line 73
    invoke-virtual {v2}, Lo/RemoteAnimationTarget;->g()Ljava/util/List;

    move-result-object v20

    .line 74
    invoke-virtual {v2}, Lo/RemoteAnimationTarget;->b()Ljava/lang/String;

    move-result-object v21

    .line 75
    iget-object v4, v12, Lo/RoundScrollbarRenderer;->o:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v22

    .line 76
    invoke-virtual {v2}, Lo/RemoteAnimationTarget;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lo/RoundScrollbarRenderer;->p()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v23

    move-object v14, v3

    .line 67
    invoke-direct/range {v14 .. v23}, Lo/RecordingCanvas;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IZ)V

    .line 77
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 155
    :cond_5
    check-cast v0, Ljava/util/List;

    iput-object v0, v12, Lo/RoundScrollbarRenderer;->e:Ljava/util/List;

    .line 106
    invoke-virtual/range {p7 .. p7}, Lo/RenderNodeAnimator;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v0

    :goto_5
    iput-object v0, v12, Lo/RoundScrollbarRenderer;->d:Ljava/util/List;

    .line 108
    invoke-virtual/range {p7 .. p7}, Lo/RenderNodeAnimator;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lo/RoundScrollbarRenderer;->g:Ljava/lang/String;

    .line 110
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->pO:I

    invoke-virtual {v13, v0}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lo/RoundScrollbarRenderer;->h:Ljava/lang/String;

    .line 112
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->qw:I

    invoke-virtual {v13, v0}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Landroid/text/Spannable;

    iput-object v0, v12, Lo/RoundScrollbarRenderer;->j:Landroid/text/Spannable;

    .line 114
    iget-object v0, v12, Lo/RoundScrollbarRenderer;->j:Landroid/text/Spannable;

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, v12, Lo/RoundScrollbarRenderer;->h:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v1

    move/from16 p3, v2

    move/from16 p4, v3

    move/from16 p5, v4

    move-object/from16 p6, v5

    invoke-static/range {p1 .. p6}, Lo/anv;->e(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    iput v0, v12, Lo/RoundScrollbarRenderer;->f:I

    .line 116
    iget-object v0, v12, Lo/RoundScrollbarRenderer;->j:Landroid/text/Spannable;

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, v12, Lo/RoundScrollbarRenderer;->h:Ljava/lang/String;

    move-object/from16 p1, v0

    move-object/from16 p2, v1

    invoke-static/range {p1 .. p6}, Lo/anv;->e(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    iget-object v1, v12, Lo/RoundScrollbarRenderer;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v12, Lo/RoundScrollbarRenderer;->i:I

    return-void

    .line 112
    :cond_7
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.text.Spannable"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lo/RoundScrollbarRenderer;->a:Lo/Cloneable;

    return-object v0
.end method

.method public final B()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lo/RoundScrollbarRenderer;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final C()Landroid/text/Spannable;
    .locals 1

    .line 112
    iget-object v0, p0, Lo/RoundScrollbarRenderer;->j:Landroid/text/Spannable;

    return-object v0
.end method

.method public final D()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 93
    iget-object v1, p0, Lo/RoundScrollbarRenderer;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 94
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "magenta"

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->ab:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_1
    const-string v3, "lightBlue"

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->aa:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    const-string v3, "green"

    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->V:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_3
    const-string v3, "blue"

    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->X:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_4
    const-string v3, "red"

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :cond_0
    :goto_1
    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1b891 -> :sswitch_4
        0x2e305a -> :sswitch_3
        0x5e0cf03 -> :sswitch_2
        0x28d65e90 -> :sswitch_1
        0x316858a9 -> :sswitch_0
    .end sparse-switch
.end method

.method public final E()I
    .locals 1

    .line 114
    iget v0, p0, Lo/RoundScrollbarRenderer;->f:I

    return v0
.end method

.method public final I()I
    .locals 1

    .line 116
    iget v0, p0, Lo/RoundScrollbarRenderer;->i:I

    return v0
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/RecordingCanvas;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/RecordingCanvas;",
            ">;"
        }
    .end annotation

    const-string v0, "dataList"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/RecordingCanvas;

    .line 86
    invoke-virtual {v1}, Lo/RecordingCanvas;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lo/RecordingCanvas;->c(Z)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/RecordingCanvas;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lo/RoundScrollbarRenderer;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/RoundScrollbarRenderer;->b:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/RoundScrollbarRenderer;->e:Ljava/util/List;

    :goto_0
    return-object v0
.end method
