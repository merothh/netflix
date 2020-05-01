.class public final Lo/XA;
.super Lo/Vc;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/XA$Application;
    }
.end annotation


# static fields
.field public static final g:Lo/XA$Application;

.field private static final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/ImageSwitcher;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/MenuInflater;

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lo/XA$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/XA$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/XA;->g:Lo/XA$Application;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lo/akz;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lo/XA;->k:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/XA;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

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

    invoke-direct/range {v0 .. v5}, Lo/XA;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lo/Vc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/XA;->i:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 21
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 22
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/XA;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final B()Ljava/lang/String;
    .locals 5

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    iget-object v1, p0, Lo/XA;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ImageSwitcher;

    const-string v3, "answerTextView"

    .line 164
    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lo/ImageSwitcher;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "-"

    invoke-static {v3, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 165
    invoke-virtual {v2}, Lo/ImageSwitcher;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inputCode.toString()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final synthetic a(Lo/XA;)Ljava/lang/String;
    .locals 0

    .line 19
    invoke-direct {p0}, Lo/XA;->B()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lo/XA;)Ljava/util/ArrayList;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/XA;->i:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic b(Lo/XA;I)V
    .locals 0

    .line 19
    iput p1, p0, Lo/XA;->n:I

    return-void
.end method

.method public static final synthetic b(Lo/XA;Z)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lo/XA;->d(Z)V

    return-void
.end method

.method public static final synthetic c(Lo/XA;)Z
    .locals 0

    .line 19
    invoke-virtual {p0}, Lo/XA;->o()Z

    move-result p0

    return p0
.end method

.method public static final synthetic d(Lo/XA;)Lo/GridView;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lo/XA;->a()Lo/GridView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lo/XA;)I
    .locals 0

    .line 19
    iget p0, p0, Lo/XA;->n:I

    return p0
.end method

.method public static final synthetic f(Lo/XA;)Lcom/netflix/model/leafs/originals/interactive/Moment;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lo/XA;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j(Lo/XA;)Lo/Xt;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lo/XA;->s()Lo/Xt;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected b(F)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 61
    iput v1, v0, Lo/XA;->n:I

    .line 62
    iget-object v2, v0, Lo/XA;->j:Lo/MenuInflater;

    const-string v3, "selectionContainer"

    if-nez v2, :cond_0

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lo/MenuInflater;->setTranslationY(F)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Lo/XA;->l()Ljava/util/List;

    move-result-object v2

    .line 64
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 65
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/List;

    .line 66
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/List;

    .line 67
    invoke-virtual/range {p0 .. p0}, Lo/XA;->t()Lcom/netflix/model/leafs/originals/interactive/BaseLayout;

    move-result-object v8

    if-eqz v8, :cond_8

    check-cast v8, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

    .line 68
    invoke-virtual/range {p0 .. p0}, Lo/XA;->d()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, "i"

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 69
    invoke-static {v10, v11}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 73
    :cond_1
    sget-object v9, Lo/XA;->k:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v12, "ObjectAnimator.ofFloat(c\u2026f, 1f).setDuration(1000L)"

    const-string v15, "ObjectAnimator.ofFloat(c\u20261f, 0f).setDuration(400L)"

    move-object/from16 v16, v5

    const/4 v4, 0x2

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 74
    invoke-virtual/range {p0 .. p0}, Lo/XA;->d()Ljava/util/ArrayList;

    move-result-object v10

    invoke-static {v5, v11}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    const-string v13, "choicePointViews[i]"

    invoke-static {v10, v13}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroid/view/View;

    .line 75
    sget-object v13, Lo/Vj;->i:Lo/Vj$Activity;

    check-cast v13, Lo/MessagePdu;

    .line 76
    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lo/XA;->b()Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x0

    goto :goto_2

    :cond_2
    const/high16 v13, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v10, v13}, Landroid/view/View;->setAlpha(F)V

    .line 78
    move-object v13, v10

    check-cast v13, Lo/ImageSwitcher;

    invoke-virtual {v8}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->choices()Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;->text()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v13, v5}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 80
    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v4, [F

    fill-array-data v13, :array_0

    invoke-static {v10, v5, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v13, 0x3e8

    invoke-virtual {v5, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-static {v5, v12}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, v16

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-static {v10, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object v14, v2

    const-wide/16 v1, 0x190

    invoke-virtual {v4, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v1, v15}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v1, Lo/XA$TaskDescription;

    move-object v2, v14

    invoke-direct {v1, v0, v10, v2}, Lo/XA$TaskDescription;-><init>(Lo/XA;Landroid/view/View;Ljava/util/List;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v5, v13

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_4
    move-object/from16 v13, v16

    .line 131
    iget-object v1, v0, Lo/XA;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ImageSwitcher;

    const-string v8, "choicePoint"

    .line 132
    invoke-static {v2, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lo/ImageSwitcher;->setVisibility(I)V

    const-string v8, "-"

    .line 133
    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual/range {p0 .. p0}, Lo/XA;->b()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_5
    invoke-virtual {v2, v8}, Lo/ImageSwitcher;->setAlpha(F)V

    .line 135
    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v4, [F

    fill-array-data v9, :array_2

    invoke-static {v2, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v9, 0x3e8

    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-static {v8, v12}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v4, [F

    fill-array-data v11, :array_3

    invoke-static {v2, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v9, 0x190

    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-static {v8, v15}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p0 .. p0}, Lo/XA;->i()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 138
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v4, [F

    fill-array-data v9, :array_4

    invoke-static {v2, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v8, 0x190

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-static {v2, v15}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p0 .. p0}, Lo/XA;->i()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 141
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 144
    :cond_6
    iget-object v1, v0, Lo/XA;->j:Lo/MenuInflater;

    if-nez v1, :cond_7

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    .line 145
    :cond_7
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v4, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    .line 147
    invoke-virtual/range {p0 .. p0}, Lo/XA;->c()F

    move-result v5

    aput v5, v3, v4

    .line 143
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v2, "hideAnimation"

    .line 149
    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lo/XA;->i()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x118

    .line 150
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 151
    invoke-virtual/range {p0 .. p0}, Lo/XA;->e()Landroid/view/animation/PathInterpolator;

    move-result-object v2

    check-cast v2, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 153
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {v0, v6}, Lo/XA;->c(Ljava/util/List;)V

    .line 157
    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v0, v7}, Lo/XA;->e(Ljava/util/Collection;)V

    .line 158
    invoke-virtual {v0, v13}, Lo/XA;->e(Ljava/util/List;)V

    return-void

    .line 67
    :cond_8
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.netflix.model.leafs.originals.interactive.CommonMetaData.Layout"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 172
    invoke-direct {p0}, Lo/XA;->B()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 34
    invoke-super {p0}, Lo/Vc;->onFinishInflate()V

    .line 35
    invoke-virtual {p0}, Lo/XA;->d()Ljava/util/ArrayList;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->ig:I

    invoke-virtual {p0, v1}, Lo/XA;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {p0}, Lo/XA;->d()Ljava/util/ArrayList;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->id:I

    invoke-virtual {p0, v1}, Lo/XA;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {p0}, Lo/XA;->d()Ljava/util/ArrayList;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->ie:I

    invoke-virtual {p0, v1}, Lo/XA;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {p0}, Lo/XA;->d()Ljava/util/ArrayList;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->if:I

    invoke-virtual {p0, v1}, Lo/XA;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {p0}, Lo/XA;->d()Ljava/util/ArrayList;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->ic:I

    invoke-virtual {p0, v1}, Lo/XA;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {p0}, Lo/XA;->d()Ljava/util/ArrayList;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->il:I

    invoke-virtual {p0, v1}, Lo/XA;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {p0}, Lo/XA;->d()Ljava/util/ArrayList;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->ih:I

    invoke-virtual {p0, v1}, Lo/XA;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {p0}, Lo/XA;->d()Ljava/util/ArrayList;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->ii:I

    invoke-virtual {p0, v1}, Lo/XA;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {p0}, Lo/XA;->d()Ljava/util/ArrayList;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->ik:I

    invoke-virtual {p0, v1}, Lo/XA;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {p0}, Lo/XA;->d()Ljava/util/ArrayList;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->ij:I

    invoke-virtual {p0, v1}, Lo/XA;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lo/XA;->i:Ljava/util/ArrayList;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->iF:I

    invoke-virtual {p0, v1}, Lo/XA;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lo/XA;->i:Ljava/util/ArrayList;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->iB:I

    invoke-virtual {p0, v1}, Lo/XA;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lo/XA;->i:Ljava/util/ArrayList;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->iD:I

    invoke-virtual {p0, v1}, Lo/XA;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lo/XA;->i:Ljava/util/ArrayList;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->iJ:I

    invoke-virtual {p0, v1}, Lo/XA;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lo/XA;->i:Ljava/util/ArrayList;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->iI:I

    invoke-virtual {p0, v1}, Lo/XA;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->io:I

    invoke-virtual {p0, v0}, Lo/XA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.intera\u2026ce_point_phone_selection)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/MenuInflater;

    iput-object v0, p0, Lo/XA;->j:Lo/MenuInflater;

    return-void
.end method
