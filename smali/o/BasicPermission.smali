.class public Lo/BasicPermission;
.super Lo/CharsetDecoder;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BasicPermission$ActionBar;
    }
.end annotation


# instance fields
.field a:I

.field private b:Z

.field private c:I

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/CharsetDecoder;",
            ">;"
        }
    .end annotation
.end field

.field e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Lo/CharsetDecoder;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lo/BasicPermission;->b:Z

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lo/BasicPermission;->e:Z

    .line 87
    iput v0, p0, Lo/BasicPermission;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 113
    invoke-direct {p0, p1, p2}, Lo/CharsetDecoder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lo/BasicPermission;->b:Z

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lo/BasicPermission;->e:Z

    .line 87
    iput v0, p0, Lo/BasicPermission;->c:I

    .line 114
    sget-object v1, Lo/AbstractInterruptibleChannel;->g:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 115
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v1, "transitionOrdering"

    invoke-static {p1, p2, v1, v0, v0}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    .line 118
    invoke-virtual {p0, p2}, Lo/BasicPermission;->a(I)Lo/BasicPermission;

    .line 119
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private b()V
    .locals 3

    .line 408
    new-instance v0, Lo/BasicPermission$ActionBar;

    invoke-direct {v0, p0}, Lo/BasicPermission$ActionBar;-><init>(Lo/BasicPermission;)V

    .line 409
    iget-object v1, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/CharsetDecoder;

    .line 410
    invoke-virtual {v2, v0}, Lo/CharsetDecoder;->addListener(Lo/CharsetDecoder$StateListAnimator;)Lo/CharsetDecoder;

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lo/BasicPermission;->a:I

    return-void
.end method


# virtual methods
.method public a(I)Lo/BasicPermission;
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 134
    iput-boolean p1, p0, Lo/BasicPermission;->b:Z

    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    iput-boolean v0, p0, Lo/BasicPermission;->b:Z

    :goto_0
    return-object p0
.end method

.method public a(J)Lo/BasicPermission;
    .locals 0

    .line 244
    invoke-super {p0, p1, p2}, Lo/CharsetDecoder;->setStartDelay(J)Lo/CharsetDecoder;

    move-result-object p1

    check-cast p1, Lo/BasicPermission;

    return-object p1
.end method

.method public synthetic addListener(Lo/CharsetDecoder$StateListAnimator;)Lo/CharsetDecoder;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lo/BasicPermission;->e(Lo/CharsetDecoder$StateListAnimator;)Lo/BasicPermission;

    move-result-object p1

    return-object p1
.end method

.method public synthetic addTarget(I)Lo/CharsetDecoder;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lo/BasicPermission;->b(I)Lo/BasicPermission;

    move-result-object p1

    return-object p1
.end method

.method public synthetic addTarget(Landroid/view/View;)Lo/CharsetDecoder;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lo/BasicPermission;->d(Landroid/view/View;)Lo/BasicPermission;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lo/BasicPermission;
    .locals 2

    const/4 v0, 0x0

    .line 272
    :goto_0
    iget-object v1, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 273
    iget-object v1, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CharsetDecoder;

    invoke-virtual {v1, p1}, Lo/CharsetDecoder;->addTarget(I)Lo/CharsetDecoder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_0
    invoke-super {p0, p1}, Lo/CharsetDecoder;->addTarget(I)Lo/CharsetDecoder;

    move-result-object p1

    check-cast p1, Lo/BasicPermission;

    return-object p1
.end method

.method public c(Lo/CharsetDecoder$StateListAnimator;)Lo/BasicPermission;
    .locals 0

    .line 377
    invoke-super {p0, p1}, Lo/CharsetDecoder;->removeListener(Lo/CharsetDecoder$StateListAnimator;)Lo/CharsetDecoder;

    move-result-object p1

    check-cast p1, Lo/BasicPermission;

    return-object p1
.end method

.method public captureEndValues(Lo/AlgorithmParameters;)V
    .locals 3

    .line 526
    iget-object v0, p1, Lo/AlgorithmParameters;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lo/BasicPermission;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CharsetDecoder;

    .line 528
    iget-object v2, p1, Lo/AlgorithmParameters;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Lo/CharsetDecoder;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 529
    invoke-virtual {v1, p1}, Lo/CharsetDecoder;->captureEndValues(Lo/AlgorithmParameters;)V

    .line 530
    iget-object v2, p1, Lo/AlgorithmParameters;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method capturePropagationValues(Lo/AlgorithmParameters;)V
    .locals 3

    .line 538
    invoke-super {p0, p1}, Lo/CharsetDecoder;->capturePropagationValues(Lo/AlgorithmParameters;)V

    .line 539
    iget-object v0, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 541
    iget-object v2, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/CharsetDecoder;

    invoke-virtual {v2, p1}, Lo/CharsetDecoder;->capturePropagationValues(Lo/AlgorithmParameters;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public captureStartValues(Lo/AlgorithmParameters;)V
    .locals 3

    .line 514
    iget-object v0, p1, Lo/AlgorithmParameters;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lo/BasicPermission;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CharsetDecoder;

    .line 516
    iget-object v2, p1, Lo/AlgorithmParameters;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Lo/CharsetDecoder;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    invoke-virtual {v1, p1}, Lo/CharsetDecoder;->captureStartValues(Lo/AlgorithmParameters;)V

    .line 518
    iget-object v2, p1, Lo/AlgorithmParameters;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lo/BasicPermission;->clone()Lo/CharsetDecoder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lo/CharsetDecoder;
    .locals 4

    .line 639
    invoke-super {p0}, Lo/CharsetDecoder;->clone()Lo/CharsetDecoder;

    move-result-object v0

    check-cast v0, Lo/BasicPermission;

    .line 640
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    .line 641
    iget-object v1, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 643
    iget-object v3, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/CharsetDecoder;

    invoke-virtual {v3}, Lo/CharsetDecoder;->clone()Lo/CharsetDecoder;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/BasicPermission;->d(Lo/CharsetDecoder;)Lo/BasicPermission;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Lo/GeneralSecurityException;Lo/GeneralSecurityException;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lo/GeneralSecurityException;",
            "Lo/GeneralSecurityException;",
            "Ljava/util/ArrayList<",
            "Lo/AlgorithmParameters;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lo/AlgorithmParameters;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 456
    invoke-virtual {p0}, Lo/BasicPermission;->getStartDelay()J

    move-result-wide v1

    .line 457
    iget-object v3, v0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 459
    iget-object v5, v0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lo/CharsetDecoder;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    .line 462
    iget-boolean v5, v0, Lo/BasicPermission;->b:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    .line 463
    :cond_0
    invoke-virtual {v6}, Lo/CharsetDecoder;->getStartDelay()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    .line 465
    invoke-virtual {v6, v9, v10}, Lo/CharsetDecoder;->setStartDelay(J)Lo/CharsetDecoder;

    goto :goto_1

    .line 467
    :cond_1
    invoke-virtual {v6, v1, v2}, Lo/CharsetDecoder;->setStartDelay(J)Lo/CharsetDecoder;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 470
    invoke-virtual/range {v6 .. v11}, Lo/CharsetDecoder;->createAnimators(Landroid/view/ViewGroup;Lo/GeneralSecurityException;Lo/GeneralSecurityException;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public d()I
    .locals 1

    .line 204
    iget-object v0, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public d(J)Lo/BasicPermission;
    .locals 5

    .line 231
    invoke-super {p0, p1, p2}, Lo/CharsetDecoder;->setDuration(J)Lo/CharsetDecoder;

    .line 232
    iget-wide v0, p0, Lo/BasicPermission;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 233
    iget-object v0, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 235
    iget-object v2, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/CharsetDecoder;

    invoke-virtual {v2, p1, p2}, Lo/CharsetDecoder;->setDuration(J)Lo/CharsetDecoder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public d(Landroid/view/View;)Lo/BasicPermission;
    .locals 2

    const/4 v0, 0x0

    .line 263
    :goto_0
    iget-object v1, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 264
    iget-object v1, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CharsetDecoder;

    invoke-virtual {v1, p1}, Lo/CharsetDecoder;->addTarget(Landroid/view/View;)Lo/CharsetDecoder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_0
    invoke-super {p0, p1}, Lo/CharsetDecoder;->addTarget(Landroid/view/View;)Lo/CharsetDecoder;

    move-result-object p1

    check-cast p1, Lo/BasicPermission;

    return-object p1
.end method

.method public d(Lo/CharsetDecoder;)Lo/BasicPermission;
    .locals 5

    .line 176
    iget-object v0, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iput-object p0, p1, Lo/CharsetDecoder;->mParent:Lo/BasicPermission;

    .line 178
    iget-wide v0, p0, Lo/BasicPermission;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 179
    iget-wide v0, p0, Lo/BasicPermission;->mDuration:J

    invoke-virtual {p1, v0, v1}, Lo/CharsetDecoder;->setDuration(J)Lo/CharsetDecoder;

    .line 181
    :cond_0
    iget v0, p0, Lo/BasicPermission;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p0}, Lo/BasicPermission;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/CharsetDecoder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lo/CharsetDecoder;

    .line 184
    :cond_1
    iget v0, p0, Lo/BasicPermission;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {p0}, Lo/BasicPermission;->getPropagation()Lo/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/CharsetDecoder;->setPropagation(Lo/Path;)V

    .line 187
    :cond_2
    iget v0, p0, Lo/BasicPermission;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 188
    invoke-virtual {p0}, Lo/BasicPermission;->getPathMotion()Lo/Buffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/CharsetDecoder;->setPathMotion(Lo/Buffer;)V

    .line 190
    :cond_3
    iget v0, p0, Lo/BasicPermission;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 191
    invoke-virtual {p0}, Lo/BasicPermission;->getEpicenterCallback()Lo/CharsetDecoder$Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/CharsetDecoder;->setEpicenterCallback(Lo/CharsetDecoder$Application;)V

    :cond_4
    return-object p0
.end method

.method public e(Landroid/animation/TimeInterpolator;)Lo/BasicPermission;
    .locals 3

    .line 250
    iget v0, p0, Lo/BasicPermission;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/BasicPermission;->c:I

    .line 251
    iget-object v0, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 254
    iget-object v2, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/CharsetDecoder;

    invoke-virtual {v2, p1}, Lo/CharsetDecoder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lo/CharsetDecoder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_0
    invoke-super {p0, p1}, Lo/CharsetDecoder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lo/CharsetDecoder;

    move-result-object p1

    check-cast p1, Lo/BasicPermission;

    return-object p1
.end method

.method public e(Landroid/view/View;)Lo/BasicPermission;
    .locals 2

    const/4 v0, 0x0

    .line 314
    :goto_0
    iget-object v1, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 315
    iget-object v1, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CharsetDecoder;

    invoke-virtual {v1, p1}, Lo/CharsetDecoder;->removeTarget(Landroid/view/View;)Lo/CharsetDecoder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_0
    invoke-super {p0, p1}, Lo/CharsetDecoder;->removeTarget(Landroid/view/View;)Lo/CharsetDecoder;

    move-result-object p1

    check-cast p1, Lo/BasicPermission;

    return-object p1
.end method

.method public e(Lo/CharsetDecoder$StateListAnimator;)Lo/BasicPermission;
    .locals 0

    .line 299
    invoke-super {p0, p1}, Lo/CharsetDecoder;->addListener(Lo/CharsetDecoder$StateListAnimator;)Lo/CharsetDecoder;

    move-result-object p1

    check-cast p1, Lo/BasicPermission;

    return-object p1
.end method

.method public e(I)Lo/CharsetDecoder;
    .locals 1

    if-ltz p1, :cond_1

    .line 215
    iget-object v0, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/CharsetDecoder;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public pause(Landroid/view/View;)V
    .locals 3

    .line 549
    invoke-super {p0, p1}, Lo/CharsetDecoder;->pause(Landroid/view/View;)V

    .line 550
    iget-object v0, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 552
    iget-object v2, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/CharsetDecoder;

    invoke-virtual {v2, p1}, Lo/CharsetDecoder;->pause(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic removeListener(Lo/CharsetDecoder$StateListAnimator;)Lo/CharsetDecoder;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lo/BasicPermission;->c(Lo/CharsetDecoder$StateListAnimator;)Lo/BasicPermission;

    move-result-object p1

    return-object p1
.end method

.method public synthetic removeTarget(Landroid/view/View;)Lo/CharsetDecoder;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lo/BasicPermission;->e(Landroid/view/View;)Lo/BasicPermission;

    move-result-object p1

    return-object p1
.end method

.method public resume(Landroid/view/View;)V
    .locals 3

    .line 560
    invoke-super {p0, p1}, Lo/CharsetDecoder;->resume(Landroid/view/View;)V

    .line 561
    iget-object v0, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 563
    iget-object v2, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/CharsetDecoder;

    invoke-virtual {v2, p1}, Lo/CharsetDecoder;->resume(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected runAnimators()V
    .locals 4

    .line 481
    iget-object v0, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lo/BasicPermission;->start()V

    .line 483
    invoke-virtual {p0}, Lo/BasicPermission;->end()V

    return-void

    .line 486
    :cond_0
    invoke-direct {p0}, Lo/BasicPermission;->b()V

    .line 487
    iget-boolean v0, p0, Lo/BasicPermission;->b:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 490
    :goto_0
    iget-object v1, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 491
    iget-object v1, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CharsetDecoder;

    .line 492
    iget-object v2, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/CharsetDecoder;

    .line 493
    new-instance v3, Lo/BasicPermission$4;

    invoke-direct {v3, p0, v2}, Lo/BasicPermission$4;-><init>(Lo/BasicPermission;Lo/CharsetDecoder;)V

    invoke-virtual {v1, v3}, Lo/CharsetDecoder;->addListener(Lo/CharsetDecoder$StateListAnimator;)Lo/CharsetDecoder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    :cond_1
    iget-object v0, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CharsetDecoder;

    if-eqz v0, :cond_3

    .line 503
    invoke-virtual {v0}, Lo/CharsetDecoder;->runAnimators()V

    goto :goto_2

    .line 506
    :cond_2
    iget-object v0, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CharsetDecoder;

    .line 507
    invoke-virtual {v1}, Lo/CharsetDecoder;->runAnimators()V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public synthetic setDuration(J)Lo/CharsetDecoder;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2}, Lo/BasicPermission;->d(J)Lo/BasicPermission;

    move-result-object p1

    return-object p1
.end method

.method public setEpicenterCallback(Lo/CharsetDecoder$Application;)V
    .locals 3

    .line 620
    invoke-super {p0, p1}, Lo/CharsetDecoder;->setEpicenterCallback(Lo/CharsetDecoder$Application;)V

    .line 621
    iget v0, p0, Lo/BasicPermission;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lo/BasicPermission;->c:I

    .line 622
    iget-object v0, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 624
    iget-object v2, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/CharsetDecoder;

    invoke-virtual {v2, p1}, Lo/CharsetDecoder;->setEpicenterCallback(Lo/CharsetDecoder$Application;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic setInterpolator(Landroid/animation/TimeInterpolator;)Lo/CharsetDecoder;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lo/BasicPermission;->e(Landroid/animation/TimeInterpolator;)Lo/BasicPermission;

    move-result-object p1

    return-object p1
.end method

.method public setPathMotion(Lo/Buffer;)V
    .locals 2

    .line 382
    invoke-super {p0, p1}, Lo/CharsetDecoder;->setPathMotion(Lo/Buffer;)V

    .line 383
    iget v0, p0, Lo/BasicPermission;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lo/BasicPermission;->c:I

    const/4 v0, 0x0

    .line 384
    :goto_0
    iget-object v1, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 385
    iget-object v1, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CharsetDecoder;

    invoke-virtual {v1, p1}, Lo/CharsetDecoder;->setPathMotion(Lo/Buffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPropagation(Lo/Path;)V
    .locals 3

    .line 610
    invoke-super {p0, p1}, Lo/CharsetDecoder;->setPropagation(Lo/Path;)V

    .line 611
    iget v0, p0, Lo/BasicPermission;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/BasicPermission;->c:I

    .line 612
    iget-object v0, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 614
    iget-object v2, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/CharsetDecoder;

    invoke-virtual {v2, p1}, Lo/CharsetDecoder;->setPropagation(Lo/Path;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic setStartDelay(J)Lo/CharsetDecoder;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2}, Lo/BasicPermission;->a(J)Lo/BasicPermission;

    move-result-object p1

    return-object p1
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 630
    invoke-super {p0, p1}, Lo/CharsetDecoder;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 631
    :goto_0
    iget-object v2, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/BasicPermission;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CharsetDecoder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/CharsetDecoder;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
