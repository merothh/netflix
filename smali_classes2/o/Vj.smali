.class public final Lo/Vj;
.super Lo/Vc;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Vj$Activity;
    }
.end annotation


# static fields
.field public static final i:Lo/Vj$Activity;


# instance fields
.field private j:Lo/HorizontalScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Vj$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Vj$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/Vj;->i:Lo/Vj$Activity;

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

    invoke-direct/range {v0 .. v5}, Lo/Vj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

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

    invoke-direct/range {v0 .. v5}, Lo/Vj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lo/Vc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 23
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 24
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/Vj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected b(F)V
    .locals 26

    move-object/from16 v6, p0

    .line 41
    invoke-virtual/range {p0 .. p0}, Lo/Vj;->t()Lcom/netflix/model/leafs/originals/interactive/BaseLayout;

    move-result-object v0

    if-eqz v0, :cond_17

    move-object v7, v0

    check-cast v7, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

    .line 42
    invoke-virtual/range {p0 .. p0}, Lo/Vj;->l()Ljava/util/List;

    move-result-object v8

    .line 43
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    check-cast v9, Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    check-cast v10, Ljava/util/List;

    .line 50
    invoke-virtual/range {p0 .. p0}, Lo/Vj;->d()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v11

    const/4 v12, 0x0

    const/4 v0, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x2

    const/4 v1, 0x0

    const/16 v5, 0x8

    if-ge v13, v11, :cond_10

    .line 51
    invoke-virtual/range {p0 .. p0}, Lo/Vj;->d()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "choicePointViews[i]"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    .line 53
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 54
    invoke-virtual {v7}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->choices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_f

    .line 55
    invoke-virtual {v7}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->choices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;

    .line 57
    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;->visible()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 58
    invoke-virtual/range {p0 .. p0}, Lo/Vj;->b()Z

    move-result v3

    const/high16 v16, 0x3f800000    # 1.0f

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    .line 59
    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;->visible()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_e

    .line 60
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/netflix/model/leafs/originals/interactive/Choice;

    add-int/lit8 v17, v0, 0x1

    if-eqz v3, :cond_d

    .line 65
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->iK:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 64
    move-object v2, v0

    check-cast v2, Lo/ImageSwitcher;

    .line 66
    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/Choice;->text()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    if-eqz v2, :cond_6

    .line 67
    invoke-virtual {v2, v5}, Lo/ImageSwitcher;->setVisibility(I)V

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    .line 69
    invoke-virtual {v2, v12}, Lo/ImageSwitcher;->setVisibility(I)V

    :cond_4
    if-eqz v2, :cond_5

    .line 70
    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/Choice;->text()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_5
    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/Choice;->text()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 75
    :cond_6
    :goto_3
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->iu:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 74
    check-cast v0, Lo/GridView;

    if-eqz v0, :cond_a

    .line 77
    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/Choice;->assetId()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_7

    .line 78
    invoke-virtual {v0, v5}, Lo/GridView;->setVisibility(I)V

    goto :goto_4

    .line 80
    :cond_7
    invoke-virtual {v0, v12}, Lo/GridView;->setVisibility(I)V

    if-eqz v2, :cond_8

    .line 81
    invoke-virtual {v2, v5}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 82
    :cond_8
    sget-object v18, Lo/XJ;->c:Lo/XJ;

    .line 83
    invoke-virtual/range {p0 .. p0}, Lo/Vj;->q()Lo/ErrorCodes;

    move-result-object v19

    .line 85
    invoke-virtual/range {p0 .. p0}, Lo/Vj;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/netflix/model/leafs/originals/interactive/Moment;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/Choice;->assetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v1

    :cond_9
    move-object/from16 v22, v1

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    .line 88
    new-instance v20, Lo/Vj$ActionBar;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v5, v2

    move-object v2, v3

    move-object v15, v3

    move-object v3, v5

    move-object v5, v4

    move-object/from16 v4, v25

    move-object v12, v5

    move/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lo/Vj$ActionBar;-><init>(Lo/Vj;Lcom/netflix/model/leafs/originals/interactive/Choice;Lo/ImageSwitcher;Lo/GridView;F)V

    move-object/from16 v0, v20

    check-cast v0, Lo/XK;

    move-object/from16 v20, v25

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move/from16 v23, v24

    move-object/from16 v24, v0

    .line 82
    invoke-virtual/range {v18 .. v24}, Lo/XJ;->b(Lo/ErrorCodes;Lo/GridView;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/SourceRect;FLo/XK;)V

    goto :goto_5

    :cond_a
    :goto_4
    move-object v15, v3

    move-object v12, v4

    .line 110
    :goto_5
    new-instance v0, Lo/Vj$TaskDescription;

    invoke-direct {v0, v6, v13, v15}, Lo/Vj$TaskDescription;-><init>(Lo/Vj;ILcom/netflix/model/leafs/originals/interactive/Choice;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v14, [F

    fill-array-data v1, :array_0

    invoke-static {v12, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v1, "ObjectAnimator.ofFloat(c\u2026      .setDuration(1000L)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p0 .. p0}, Lo/Vj;->e()Landroid/view/animation/PathInterpolator;

    move-result-object v1

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 164
    invoke-virtual/range {p0 .. p0}, Lo/Vj;->j()I

    move-result v1

    if-ne v13, v1, :cond_b

    .line 167
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    .line 165
    invoke-static {v12, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x320

    .line 170
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v2, "ObjectAnimator.ofFloat(\n\u2026       ).setDuration(800)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lo/Vj;->e()Landroid/view/animation/PathInterpolator;

    move-result-object v2

    check-cast v2, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 172
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 174
    :cond_b
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v14, [F

    fill-array-data v2, :array_2

    invoke-static {v12, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x15e

    .line 175
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v2, "ObjectAnimator.ofFloat(c\u2026        .setDuration(350)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p0 .. p0}, Lo/Vj;->e()Landroid/view/animation/PathInterpolator;

    move-result-object v2

    check-cast v2, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 177
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lo/Vj;->b()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_7

    :cond_c
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_7
    invoke-virtual {v12, v1}, Landroid/view/View;->setAlpha(F)V

    .line 180
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    move/from16 v0, v17

    goto :goto_8

    :cond_e
    move-object v12, v4

    .line 183
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->iK:I

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "choicePointView.findView\u2026ctive_text_choice_option)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lo/ImageSwitcher;

    const-string v2, ""

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    :goto_8
    add-int/lit8 v13, v13, 0x1

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_10
    const/16 v2, 0x8

    .line 191
    iget-object v0, v6, Lo/Vj;->j:Lo/HorizontalScrollView;

    const-string v3, "skipCreditsTextView"

    if-nez v0, :cond_11

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v0, v2}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 192
    invoke-virtual {v7}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->choices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ge v0, v2, :cond_16

    invoke-virtual {v7}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->endButton()Lcom/netflix/model/leafs/originals/interactive/Button;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 193
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/interactive/Choice;

    if-eqz v0, :cond_16

    .line 194
    iget-object v2, v6, Lo/Vj;->j:Lo/HorizontalScrollView;

    if-nez v2, :cond_12

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_12
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 195
    iget-object v2, v6, Lo/Vj;->j:Lo/HorizontalScrollView;

    if-nez v2, :cond_13

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_13
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Choice;->text()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v2, v6, Lo/Vj;->j:Lo/HorizontalScrollView;

    if-nez v2, :cond_14

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_14
    new-instance v5, Lo/Vj$Application;

    invoke-direct {v5, v0, v6}, Lo/Vj$Application;-><init>(Lcom/netflix/model/leafs/originals/interactive/Choice;Lo/Vj;)V

    check-cast v5, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, v6, Lo/Vj;->j:Lo/HorizontalScrollView;

    if-nez v0, :cond_15

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    .line 211
    :cond_15
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v14, [F

    .line 212
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v5

    const-string v7, "NetflixApplication.getInstance()"

    invoke-static {v5, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/netflix/mediaclient/NetflixApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/netflix/mediaclient/ui/R$TaskDescription;->ah:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    const/4 v7, 0x0

    aput v5, v3, v7

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 209
    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1c2

    .line 214
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 218
    :cond_16
    invoke-virtual {v6, v10}, Lo/Vj;->c(Ljava/util/List;)V

    .line 219
    invoke-static {v6, v1, v4, v1}, Lo/Vc;->a(Lo/Vc;Ljava/util/Collection;ILjava/lang/Object;)V

    .line 220
    invoke-virtual {v6, v9}, Lo/Vj;->e(Ljava/util/List;)V

    return-void

    .line 41
    :cond_17
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.netflix.model.leafs.originals.interactive.CommonMetaData.Layout"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f333333    # 0.7f
    .end array-data

    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f333333    # 0.7f
        0x0
    .end array-data
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 32
    invoke-super {p0}, Lo/Vc;->onFinishInflate()V

    .line 33
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->im:I

    invoke-virtual {p0, v0}, Lo/Vj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.interactive_exit_credits)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/HorizontalScrollView;

    iput-object v0, p0, Lo/Vj;->j:Lo/HorizontalScrollView;

    .line 34
    invoke-virtual {p0}, Lo/Vj;->d()Ljava/util/ArrayList;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->ip:I

    invoke-virtual {p0, v1}, Lo/Vj;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {p0}, Lo/Vj;->d()Ljava/util/ArrayList;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->in:I

    invoke-virtual {p0, v1}, Lo/Vj;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
