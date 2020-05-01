.class public Lo/ContentResolver;
.super Lo/Intent;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ContentResolver$ActionBar;,
        Lo/ContentResolver$TaskDescription;,
        Lo/ContentResolver$Application;,
        Lo/ContentResolver$StateListAnimator;,
        Lo/ContentResolver$Activity;,
        Lo/ContentResolver$LoaderManager;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private a:Lo/ContentResolver$LoaderManager;

.field private c:I

.field private d:I

.field private e:Lo/ContentResolver$TaskDescription;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    const-class v0, Lo/ContentResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/ContentResolver;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0, v0}, Lo/ContentResolver;-><init>(Lo/ContentResolver$TaskDescription;Landroid/content/res/Resources;)V

    return-void
.end method

.method constructor <init>(Lo/ContentResolver$TaskDescription;Landroid/content/res/Resources;)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, v0}, Lo/Intent;-><init>(Lo/Intent$Application;)V

    const/4 v0, -0x1

    .line 103
    iput v0, p0, Lo/ContentResolver;->d:I

    .line 105
    iput v0, p0, Lo/ContentResolver;->c:I

    .line 116
    new-instance v0, Lo/ContentResolver$TaskDescription;

    invoke-direct {v0, p1, p0, p2}, Lo/ContentResolver$TaskDescription;-><init>(Lo/ContentResolver$TaskDescription;Lo/ContentResolver;Landroid/content/res/Resources;)V

    .line 117
    invoke-virtual {p0, v0}, Lo/ContentResolver;->c(Lo/Context$Application;)V

    .line 118
    invoke-virtual {p0}, Lo/ContentResolver;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/ContentResolver;->onStateChange([I)Z

    .line 119
    invoke-virtual {p0}, Lo/ContentResolver;->jumpToCurrentState()V

    return-void
.end method

.method private a()V
    .locals 1

    .line 471
    invoke-virtual {p0}, Lo/ContentResolver;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ContentResolver;->onStateChange([I)Z

    return-void
.end method

.method private a(I)Z
    .locals 9

    .line 292
    iget-object v0, p0, Lo/ContentResolver;->a:Lo/ContentResolver$LoaderManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 294
    iget v2, p0, Lo/ContentResolver;->d:I

    if-ne p1, v2, :cond_0

    return v1

    .line 297
    :cond_0
    iget v2, p0, Lo/ContentResolver;->c:I

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Lo/ContentResolver$LoaderManager;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    invoke-virtual {v0}, Lo/ContentResolver$LoaderManager;->c()V

    .line 300
    iget v0, p0, Lo/ContentResolver;->c:I

    iput v0, p0, Lo/ContentResolver;->d:I

    .line 301
    iput p1, p0, Lo/ContentResolver;->c:I

    return v1

    .line 305
    :cond_1
    iget v2, p0, Lo/ContentResolver;->d:I

    .line 307
    invoke-virtual {v0}, Lo/ContentResolver$LoaderManager;->d()V

    goto :goto_0

    .line 309
    :cond_2
    invoke-virtual {p0}, Lo/ContentResolver;->c()I

    move-result v2

    :goto_0
    const/4 v0, 0x0

    .line 312
    iput-object v0, p0, Lo/ContentResolver;->a:Lo/ContentResolver$LoaderManager;

    const/4 v0, -0x1

    .line 313
    iput v0, p0, Lo/ContentResolver;->c:I

    .line 314
    iput v0, p0, Lo/ContentResolver;->d:I

    .line 315
    iget-object v0, p0, Lo/ContentResolver;->e:Lo/ContentResolver$TaskDescription;

    .line 316
    invoke-virtual {v0, v2}, Lo/ContentResolver$TaskDescription;->c(I)I

    move-result v3

    .line 317
    invoke-virtual {v0, p1}, Lo/ContentResolver$TaskDescription;->c(I)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    if-nez v3, :cond_3

    goto :goto_2

    .line 322
    :cond_3
    invoke-virtual {v0, v3, v4}, Lo/ContentResolver$TaskDescription;->c(II)I

    move-result v6

    if-gez v6, :cond_4

    return v5

    .line 327
    :cond_4
    invoke-virtual {v0, v3, v4}, Lo/ContentResolver$TaskDescription;->e(II)Z

    move-result v7

    .line 329
    invoke-virtual {p0, v6}, Lo/ContentResolver;->b(I)Z

    .line 331
    invoke-virtual {p0}, Lo/ContentResolver;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 332
    instance-of v8, v6, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v8, :cond_5

    .line 333
    invoke-virtual {v0, v3, v4}, Lo/ContentResolver$TaskDescription;->b(II)Z

    move-result v0

    .line 334
    new-instance v3, Lo/ContentResolver$StateListAnimator;

    check-cast v6, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3, v6, v0, v7}, Lo/ContentResolver$StateListAnimator;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    goto :goto_1

    .line 336
    :cond_5
    instance-of v0, v6, Lo/ECPrivateKeySpec;

    if-eqz v0, :cond_6

    .line 338
    new-instance v3, Lo/ContentResolver$Application;

    check-cast v6, Lo/ECPrivateKeySpec;

    invoke-direct {v3, v6}, Lo/ContentResolver$Application;-><init>(Lo/ECPrivateKeySpec;)V

    goto :goto_1

    .line 339
    :cond_6
    instance-of v0, v6, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_7

    .line 340
    new-instance v3, Lo/ContentResolver$Activity;

    check-cast v6, Landroid/graphics/drawable/Animatable;

    invoke-direct {v3, v6}, Lo/ContentResolver$Activity;-><init>(Landroid/graphics/drawable/Animatable;)V

    .line 345
    :goto_1
    invoke-virtual {v3}, Lo/ContentResolver$LoaderManager;->e()V

    .line 346
    iput-object v3, p0, Lo/ContentResolver;->a:Lo/ContentResolver$LoaderManager;

    .line 347
    iput v2, p0, Lo/ContentResolver;->c:I

    .line 348
    iput p1, p0, Lo/ContentResolver;->d:I

    return v1

    :cond_7
    :goto_2
    return v5
.end method

.method private b(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 4

    .line 563
    sget-object v0, Lo/LoaderManager$Dialog;->W:[I

    invoke-static {p2, p5, p4, v0}, Lo/ViewParent;->b(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 565
    sget v1, Lo/LoaderManager$Dialog;->Z:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 568
    sget v2, Lo/LoaderManager$Dialog;->aa:I

    const/4 v3, -0x1

    .line 569
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-lez v2, :cond_0

    .line 571
    invoke-static {p1, v2}, Lo/DialogInterface;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 573
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 574
    invoke-virtual {p0, p4}, Lo/ContentResolver;->a(Landroid/util/AttributeSet;)[I

    move-result-object v0

    const-string v2, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez p1, :cond_5

    .line 579
    :goto_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 587
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "vector"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 588
    invoke-static {p2, p3, p4, p5}, Lo/PKCS8EncodedKeySpec;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lo/PKCS8EncodedKeySpec;

    move-result-object p1

    goto :goto_2

    .line 589
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt p1, v3, :cond_3

    .line 590
    invoke-static {p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_2

    .line 592
    :cond_3
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_2

    .line 583
    :cond_4
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 584
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    .line 599
    iget-object p2, p0, Lo/ContentResolver;->e:Lo/ContentResolver$TaskDescription;

    invoke-virtual {p2, v0, p1, v1}, Lo/ContentResolver$TaskDescription;->d([ILandroid/graphics/drawable/Drawable;I)I

    move-result p1

    return p1

    .line 596
    :cond_6
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 7

    .line 509
    sget-object v0, Lo/LoaderManager$Dialog;->Y:[I

    invoke-static {p2, p5, p4, v0}, Lo/ViewParent;->b(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 511
    sget v1, Lo/LoaderManager$Dialog;->af:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 513
    sget v3, Lo/LoaderManager$Dialog;->ac:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 516
    sget v4, Lo/LoaderManager$Dialog;->ab:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-lez v4, :cond_0

    .line 519
    invoke-static {p1, v4}, Lo/DialogInterface;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 521
    :goto_0
    sget v5, Lo/LoaderManager$Dialog;->ad:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 523
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string v0, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez v4, :cond_5

    .line 528
    :goto_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    if-ne v4, v6, :cond_4

    .line 536
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "animated-vector"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 537
    invoke-static {p1, p2, p3, p4, p5}, Lo/ECPrivateKeySpec;->e(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lo/ECPrivateKeySpec;

    move-result-object v4

    goto :goto_2

    .line 539
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt p1, v4, :cond_3

    .line 540
    invoke-static {p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    .line 542
    :cond_3
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    .line 532
    :cond_4
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    if-eqz v4, :cond_7

    if-eq v1, v2, :cond_6

    if-eq v3, v2, :cond_6

    .line 553
    iget-object p1, p0, Lo/ContentResolver;->e:Lo/ContentResolver$TaskDescription;

    invoke-virtual {p1, v1, v3, v4, v5}, Lo/ContentResolver$TaskDescription;->d(IILandroid/graphics/drawable/Drawable;Z)I

    move-result p1

    return p1

    .line 550
    :cond_6
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": <transition> tag requires \'fromId\' & \'toId\' attributes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 546
    :cond_7
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 5

    .line 482
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 484
    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_5

    .line 485
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_5

    :cond_1
    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    goto :goto_0

    :cond_2
    if-le v3, v0, :cond_3

    goto :goto_0

    .line 493
    :cond_3
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 494
    invoke-direct/range {p0 .. p5}, Lo/ContentResolver;->b(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_0

    .line 495
    :cond_4
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "transition"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    invoke-direct/range {p0 .. p5}, Lo/ContentResolver;->c(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_0

    :cond_5
    return-void
.end method

.method private d(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 448
    iget-object v0, p0, Lo/ContentResolver;->e:Lo/ContentResolver$TaskDescription;

    .line 450
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 451
    iget v1, v0, Lo/ContentResolver$TaskDescription;->i:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lo/ContentResolver$TaskDescription;->i:I

    .line 454
    :cond_0
    sget v1, Lo/LoaderManager$Dialog;->T:I

    iget-boolean v2, v0, Lo/ContentResolver$TaskDescription;->l:Z

    .line 455
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 454
    invoke-virtual {v0, v1}, Lo/ContentResolver$TaskDescription;->e(Z)V

    .line 457
    sget v1, Lo/LoaderManager$Dialog;->V:I

    iget-boolean v2, v0, Lo/ContentResolver$TaskDescription;->k:Z

    .line 458
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 457
    invoke-virtual {v0, v1}, Lo/ContentResolver$TaskDescription;->c(Z)V

    .line 460
    sget v1, Lo/LoaderManager$Dialog;->X:I

    iget v2, v0, Lo/ContentResolver$TaskDescription;->z:I

    .line 461
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 460
    invoke-virtual {v0, v1}, Lo/ContentResolver$TaskDescription;->a(I)V

    .line 463
    sget v1, Lo/LoaderManager$Dialog;->U:I

    iget v2, v0, Lo/ContentResolver$TaskDescription;->D:I

    .line 464
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 463
    invoke-virtual {v0, v1}, Lo/ContentResolver$TaskDescription;->e(I)V

    .line 466
    sget v1, Lo/LoaderManager$Dialog;->Q:I

    iget-boolean v0, v0, Lo/ContentResolver$TaskDescription;->C:Z

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lo/ContentResolver;->setDither(Z)V

    return-void
.end method

.method public static e(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lo/ContentResolver;
    .locals 8

    .line 170
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "animated-selector"

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    new-instance v0, Lo/ContentResolver;

    invoke-direct {v0}, Lo/ContentResolver;-><init>()V

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 176
    invoke-virtual/range {v2 .. v7}, Lo/ContentResolver;->a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0

    .line 172
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": invalid animated-selector tag "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3

    .line 200
    sget-object v0, Lo/LoaderManager$Dialog;->R:[I

    invoke-static {p2, p5, p4, v0}, Lo/ViewParent;->b(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 202
    sget v1, Lo/LoaderManager$Dialog;->S:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1, v2}, Lo/ContentResolver;->setVisible(ZZ)Z

    .line 204
    invoke-direct {p0, v0}, Lo/ContentResolver;->d(Landroid/content/res/TypedArray;)V

    .line 205
    invoke-virtual {p0, p2}, Lo/ContentResolver;->b(Landroid/content/res/Resources;)V

    .line 206
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    invoke-direct/range {p0 .. p5}, Lo/ContentResolver;->d(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 208
    invoke-direct {p0}, Lo/ContentResolver;->a()V

    return-void
.end method

.method public bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lo/Intent;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method b()Lo/ContentResolver$TaskDescription;
    .locals 3

    .line 613
    new-instance v0, Lo/ContentResolver$TaskDescription;

    iget-object v1, p0, Lo/ContentResolver;->e:Lo/ContentResolver$TaskDescription;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lo/ContentResolver$TaskDescription;-><init>(Lo/ContentResolver$TaskDescription;Lo/ContentResolver;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method protected c(Lo/Context$Application;)V
    .locals 1

    .line 717
    invoke-super {p0, p1}, Lo/Intent;->c(Lo/Context$Application;)V

    .line 718
    instance-of v0, p1, Lo/ContentResolver$TaskDescription;

    if-eqz v0, :cond_0

    .line 719
    check-cast p1, Lo/ContentResolver$TaskDescription;

    iput-object p1, p0, Lo/ContentResolver;->e:Lo/ContentResolver$TaskDescription;

    :cond_0
    return-void
.end method

.method public bridge synthetic canApplyTheme()Z
    .locals 1

    .line 89
    invoke-super {p0}, Lo/Intent;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method synthetic d()Lo/Context$Application;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lo/ContentResolver;->b()Lo/ContentResolver$TaskDescription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lo/Intent;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method synthetic e()Lo/Intent$Application;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lo/ContentResolver;->b()Lo/ContentResolver$TaskDescription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAlpha()I
    .locals 1

    .line 89
    invoke-super {p0}, Lo/Intent;->getAlpha()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getChangingConfigurations()I
    .locals 1

    .line 89
    invoke-super {p0}, Lo/Intent;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 89
    invoke-super {p0}, Lo/Intent;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lo/Intent;->getHotspotBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic getIntrinsicHeight()I
    .locals 1

    .line 89
    invoke-super {p0}, Lo/Intent;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getIntrinsicWidth()I
    .locals 1

    .line 89
    invoke-super {p0}, Lo/Intent;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 1

    .line 89
    invoke-super {p0}, Lo/Intent;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 1

    .line 89
    invoke-super {p0}, Lo/Intent;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOpacity()I
    .locals 1

    .line 89
    invoke-super {p0}, Lo/Intent;->getOpacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOutline(Landroid/graphics/Outline;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lo/Intent;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lo/Intent;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lo/Intent;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic isAutoMirrored()Z
    .locals 1

    .line 89
    invoke-super {p0}, Lo/Intent;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .line 263
    invoke-super {p0}, Lo/Intent;->jumpToCurrentState()V

    .line 264
    iget-object v0, p0, Lo/ContentResolver;->a:Lo/ContentResolver$LoaderManager;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Lo/ContentResolver$LoaderManager;->d()V

    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Lo/ContentResolver;->a:Lo/ContentResolver$LoaderManager;

    .line 267
    iget v0, p0, Lo/ContentResolver;->d:I

    invoke-virtual {p0, v0}, Lo/ContentResolver;->b(I)Z

    const/4 v0, -0x1

    .line 268
    iput v0, p0, Lo/ContentResolver;->d:I

    .line 269
    iput v0, p0, Lo/ContentResolver;->c:I

    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 604
    iget-boolean v0, p0, Lo/ContentResolver;->g:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lo/Intent;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 605
    iget-object v0, p0, Lo/ContentResolver;->e:Lo/ContentResolver$TaskDescription;

    invoke-virtual {v0}, Lo/ContentResolver$TaskDescription;->a()V

    const/4 v0, 0x1

    .line 606
    iput-boolean v0, p0, Lo/ContentResolver;->g:Z

    :cond_0
    return-object p0
.end method

.method public bridge synthetic onLayoutDirectionChanged(I)Z
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lo/Intent;->onLayoutDirectionChanged(I)Z

    move-result p1

    return p1
.end method

.method protected onStateChange([I)Z
    .locals 2

    .line 277
    iget-object v0, p0, Lo/ContentResolver;->e:Lo/ContentResolver$TaskDescription;

    invoke-virtual {v0, p1}, Lo/ContentResolver$TaskDescription;->a([I)I

    move-result v0

    .line 278
    invoke-virtual {p0}, Lo/ContentResolver;->c()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 279
    invoke-direct {p0, v0}, Lo/ContentResolver;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lo/ContentResolver;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 283
    :goto_0
    invoke-virtual {p0}, Lo/ContentResolver;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 285
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method public bridge synthetic scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Lo/Intent;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public bridge synthetic setAlpha(I)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lo/Intent;->setAlpha(I)V

    return-void
.end method

.method public bridge synthetic setAutoMirrored(Z)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lo/Intent;->setAutoMirrored(Z)V

    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lo/Intent;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public bridge synthetic setDither(Z)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lo/Intent;->setDither(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2}, Lo/Intent;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Lo/Intent;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lo/Intent;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lo/Intent;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 213
    invoke-super {p0, p1, p2}, Lo/Intent;->setVisible(ZZ)Z

    move-result v0

    .line 214
    iget-object v1, p0, Lo/ContentResolver;->a:Lo/ContentResolver$LoaderManager;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 216
    iget-object p1, p0, Lo/ContentResolver;->a:Lo/ContentResolver$LoaderManager;

    invoke-virtual {p1}, Lo/ContentResolver$LoaderManager;->e()V

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p0}, Lo/ContentResolver;->jumpToCurrentState()V

    :cond_2
    :goto_0
    return v0
.end method

.method public bridge synthetic unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2}, Lo/Intent;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method
