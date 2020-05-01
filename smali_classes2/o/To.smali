.class public final Lo/To;
.super Lo/Tn;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/To$StateListAnimator;
    }
.end annotation


# static fields
.field public static final e:Lo/To$StateListAnimator;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/To$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/To$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/To;->e:Lo/To$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lo/Tn;-><init>()V

    .line 35
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-string v1, "emptyList()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/To;->b:Ljava/util/List;

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/To;->c:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Lo/To;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lo/To;->r()V

    return-void
.end method

.method private final r()V
    .locals 4

    .line 91
    invoke-virtual {p0}, Lo/To;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p0}, Lo/To;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 97
    :cond_1
    new-instance v1, Lo/To$StateListAnimator$Application;

    invoke-direct {v1}, Lo/To$StateListAnimator$Application;-><init>()V

    const-wide/16 v2, 0x2bc

    .line 98
    invoke-virtual {v1, v2, v3}, Lo/To$StateListAnimator$Application;->setDuration(J)Landroid/transition/Transition;

    .line 99
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    check-cast v2, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Lo/To$StateListAnimator$Application;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 100
    check-cast v1, Landroid/transition/Transition;

    invoke-static {v0, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 102
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->oz:I

    invoke-virtual {p0, v0}, Lo/To;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.plan_\u2026ade_confirm_to_watch_now)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->oP:I

    invoke-static {v1}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v1

    .line 105
    invoke-virtual {p0}, Lo/To;->d()Lcom/netflix/mediaclient/ui/player/PlanChoice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlanChoice;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object v1

    invoke-virtual {v1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v1

    .line 106
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->oB:I

    invoke-virtual {p0, v2}, Lo/To;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.plan_upgrade_and_watch)"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "planScreensText"

    .line 108
    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v2}, Lo/To;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final t()V
    .locals 26

    move-object/from16 v0, p0

    .line 50
    invoke-virtual/range {p0 .. p0}, Lo/To;->d()Lcom/netflix/mediaclient/ui/player/PlanChoice;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/ui/player/PlanChoice;->c:Lcom/netflix/mediaclient/ui/player/PlanChoice$ActionBar;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlanChoice$ActionBar;->e()Lcom/netflix/mediaclient/ui/player/PlanChoice;

    move-result-object v2

    invoke-static {v1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "java.lang.String.format(format, *args)"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v7, "upgrade_button"

    const/16 v8, 0xa

    const-string v9, "message"

    if-eqz v1, :cond_2

    .line 51
    iget-object v1, v0, Lo/To;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->kA:I

    invoke-virtual {v0, v1}, Lo/To;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/ImageSwitcher;

    invoke-static {v1, v9}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget v9, Lcom/netflix/mediaclient/ui/R$AssistContent;->oN:I

    invoke-virtual {v0, v9}, Lo/To;->getString(I)Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v1, v9}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 54
    :cond_0
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->kA:I

    invoke-virtual {v0, v1}, Lo/To;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/ImageSwitcher;

    invoke-static {v1, v9}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget v10, Lcom/netflix/mediaclient/ui/R$AssistContent;->oJ:I

    invoke-virtual {v0, v10}, Lo/To;->getString(I)Ljava/lang/String;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v1, v10}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 57
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->kA:I

    invoke-virtual {v0, v1}, Lo/To;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/ImageSwitcher;

    invoke-static {v1, v9}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget v11, Lcom/netflix/mediaclient/ui/R$Fragment;->kA:I

    invoke-virtual {v0, v11}, Lo/To;->e(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lo/ImageSwitcher;

    invoke-static {v11, v9}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lo/ImageSwitcher;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v11, v0, Lo/To;->b:Ljava/util/List;

    check-cast v11, Ljava/lang/Iterable;

    iget-object v12, v0, Lo/To;->c:Ljava/util/List;

    check-cast v12, Ljava/lang/Iterable;

    .line 158
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 159
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 160
    invoke-static {v11, v8}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-static {v12, v8}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 162
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    check-cast v11, Ljava/lang/String;

    .line 59
    sget-object v16, Lo/amj;->c:Lo/amj;

    sget v8, Lcom/netflix/mediaclient/ui/R$AssistContent;->oG:I

    invoke-virtual {v0, v8}, Lo/To;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v6, "getString(R.string.plan_upgrade_device_dash_video)"

    invoke-static {v8, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v11, v6, v4

    aput-object v15, v6, v2

    array-length v11, v6

    invoke-static {v6, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v8, 0xa

    goto :goto_0

    .line 164
    :cond_1
    check-cast v12, Ljava/util/List;

    check-cast v12, Ljava/lang/Iterable;

    .line 165
    new-instance v6, Lo/To$ActionBar;

    invoke-direct {v6}, Lo/To$ActionBar;-><init>()V

    check-cast v6, Ljava/util/Comparator;

    invoke-static {v12, v6}, Lo/akz;->b(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v17, v6

    check-cast v17, Ljava/lang/Iterable;

    .line 60
    move-object/from16 v18, v9

    check-cast v18, Ljava/lang/CharSequence;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x3e

    const/16 v25, 0x0

    invoke-static/range {v17 .. v25}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Lo/ImageSwitcher;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 65
    :goto_1
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->uf:I

    invoke-virtual {v0, v1}, Lo/To;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/HorizontalScrollView;

    invoke-static {v1, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->oK:I

    invoke-static {v6}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v6

    .line 65
    invoke-virtual/range {p0 .. p0}, Lo/To;->d()Lcom/netflix/mediaclient/ui/player/PlanChoice;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netflix/mediaclient/ui/player/PlanChoice;->b()I

    move-result v7

    invoke-virtual {v6, v7}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object v6

    invoke-virtual {v6}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->uf:I

    invoke-virtual {v0, v1}, Lo/To;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/HorizontalScrollView;

    new-instance v6, Lo/To$Activity;

    invoke-direct {v6, v0}, Lo/To$Activity;-><init>(Lo/To;)V

    check-cast v6, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v6}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->qv:I

    invoke-virtual {v0, v1}, Lo/To;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/HorizontalScrollView;

    sget v6, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->o:I

    invoke-virtual {v1, v6}, Lo/HorizontalScrollView;->b(I)V

    goto :goto_2

    .line 71
    :cond_2
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->kA:I

    invoke-virtual {v0, v1}, Lo/To;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/ImageSwitcher;

    invoke-static {v1, v9}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->oH:I

    invoke-virtual {v0, v6}, Lo/To;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 72
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->uf:I

    invoke-virtual {v0, v1}, Lo/To;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/HorizontalScrollView;

    invoke-static {v1, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 73
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->qv:I

    invoke-virtual {v0, v1}, Lo/To;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/HorizontalScrollView;

    sget v6, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->m:I

    invoke-virtual {v1, v6}, Lo/HorizontalScrollView;->b(I)V

    .line 76
    :goto_2
    iget-object v1, v0, Lo/To;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v6, "devices_streaming"

    if-eqz v1, :cond_3

    .line 77
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->ew:I

    invoke-virtual {v0, v1}, Lo/To;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/ImageSwitcher;

    invoke-static {v1, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setVisibility(I)V

    goto/16 :goto_4

    .line 79
    :cond_3
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->ew:I

    invoke-virtual {v0, v1}, Lo/To;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/ImageSwitcher;

    invoke-static {v1, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v0, Lo/To;->b:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    iget-object v7, v0, Lo/To;->c:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    .line 166
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 167
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/16 v10, 0xa

    .line 168
    invoke-static {v6, v10}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-static {v7, v10}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 169
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 170
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    check-cast v6, Ljava/lang/String;

    .line 80
    sget-object v11, Lo/amj;->c:Lo/amj;

    sget v11, Lcom/netflix/mediaclient/ui/R$AssistContent;->oF:I

    invoke-virtual {v0, v11}, Lo/To;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "getString(R.string.plan_\u2026matted_device_dash_video)"

    invoke-static {v11, v12}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v12, v5, [Ljava/lang/Object;

    aput-object v6, v12, v4

    aput-object v10, v12, v2

    array-length v6, v12

    invoke-static {v12, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v11, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 172
    :cond_4
    check-cast v7, Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    .line 173
    new-instance v2, Lo/To$TaskDescription;

    invoke-direct {v2}, Lo/To$TaskDescription;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v7, v2}, Lo/akz;->b(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    const-string v2, "<br>"

    .line 81
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v2}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :goto_4
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->qv:I

    invoke-virtual {v0, v1}, Lo/To;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/HorizontalScrollView;

    new-instance v2, Lo/To$Application;

    invoke-direct {v2, v0}, Lo/To$Application;-><init>(Lo/To;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 117
    invoke-virtual {p0}, Lo/To;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Serializable;->finish()V

    :cond_0
    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/To;->j:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/To;->j:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/To;->j:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/To;->j:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public e()V
    .locals 3

    .line 112
    invoke-virtual {p0}, Lo/To;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "ACTION_RELOAD_VIDEO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/Serializable;->sendBroadcast(Landroid/content/Intent;)V

    .line 113
    :cond_0
    invoke-virtual {p0}, Lo/To;->dismiss()V

    return-void
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const-string v0, "StreamLimitUpgrade"

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->dI:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/Tn;->onDestroyView()V

    invoke-virtual {p0}, Lo/To;->p()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-super {p0, p1, p2}, Lo/Tn;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lo/To;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "emptyList()"

    if-eqz p1, :cond_0

    const-string v0, "devices"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Lo/To;->b:Ljava/util/List;

    .line 44
    invoke-virtual {p0}, Lo/To;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "streams"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/util/List;

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    iput-object p1, p0, Lo/To;->c:Ljava/util/List;

    .line 46
    invoke-direct {p0}, Lo/To;->t()V

    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lo/To;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public q()I
    .locals 1

    .line 128
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->oM:I

    return v0
.end method
