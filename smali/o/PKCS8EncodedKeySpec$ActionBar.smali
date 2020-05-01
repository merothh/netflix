.class Lo/PKCS8EncodedKeySpec$ActionBar;
.super Lo/PKCS8EncodedKeySpec$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PKCS8EncodedKeySpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation


# instance fields
.field a:I

.field b:F

.field final c:Landroid/graphics/Matrix;

.field final d:Landroid/graphics/Matrix;

.field final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/PKCS8EncodedKeySpec$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:[I

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    .line 1495
    invoke-direct {p0, v0}, Lo/PKCS8EncodedKeySpec$StateListAnimator;-><init>(Lo/PKCS8EncodedKeySpec$5;)V

    .line 1434
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->d:Landroid/graphics/Matrix;

    .line 1438
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1440
    iput v1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->b:F

    .line 1441
    iput v1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->f:F

    .line 1442
    iput v1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->g:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1443
    iput v2, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->j:F

    .line 1444
    iput v2, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->h:F

    .line 1445
    iput v1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->i:F

    .line 1446
    iput v1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->k:F

    .line 1450
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->c:Landroid/graphics/Matrix;

    .line 1453
    iput-object v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lo/PKCS8EncodedKeySpec$ActionBar;Lo/Spanned;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PKCS8EncodedKeySpec$ActionBar;",
            "Lo/Spanned<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1455
    invoke-direct {p0, v0}, Lo/PKCS8EncodedKeySpec$StateListAnimator;-><init>(Lo/PKCS8EncodedKeySpec$5;)V

    .line 1434
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->d:Landroid/graphics/Matrix;

    .line 1438
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1440
    iput v1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->b:F

    .line 1441
    iput v1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->f:F

    .line 1442
    iput v1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->g:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1443
    iput v2, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->j:F

    .line 1444
    iput v2, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->h:F

    .line 1445
    iput v1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->i:F

    .line 1446
    iput v1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->k:F

    .line 1450
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->c:Landroid/graphics/Matrix;

    .line 1453
    iput-object v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->o:Ljava/lang/String;

    .line 1456
    iget v0, p1, Lo/PKCS8EncodedKeySpec$ActionBar;->b:F

    iput v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->b:F

    .line 1457
    iget v0, p1, Lo/PKCS8EncodedKeySpec$ActionBar;->f:F

    iput v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->f:F

    .line 1458
    iget v0, p1, Lo/PKCS8EncodedKeySpec$ActionBar;->g:F

    iput v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->g:F

    .line 1459
    iget v0, p1, Lo/PKCS8EncodedKeySpec$ActionBar;->j:F

    iput v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->j:F

    .line 1460
    iget v0, p1, Lo/PKCS8EncodedKeySpec$ActionBar;->h:F

    iput v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->h:F

    .line 1461
    iget v0, p1, Lo/PKCS8EncodedKeySpec$ActionBar;->i:F

    iput v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->i:F

    .line 1462
    iget v0, p1, Lo/PKCS8EncodedKeySpec$ActionBar;->k:F

    iput v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->k:F

    .line 1463
    iget-object v0, p1, Lo/PKCS8EncodedKeySpec$ActionBar;->l:[I

    iput-object v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->l:[I

    .line 1464
    iget-object v0, p1, Lo/PKCS8EncodedKeySpec$ActionBar;->o:Ljava/lang/String;

    iput-object v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->o:Ljava/lang/String;

    .line 1465
    iget v0, p1, Lo/PKCS8EncodedKeySpec$ActionBar;->a:I

    iput v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->a:I

    .line 1466
    iget-object v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1467
    invoke-virtual {p2, v0, p0}, Lo/Spanned;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    :cond_0
    iget-object v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->c:Landroid/graphics/Matrix;

    iget-object v1, p1, Lo/PKCS8EncodedKeySpec$ActionBar;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1472
    iget-object p1, p1, Lo/PKCS8EncodedKeySpec$ActionBar;->e:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 1473
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1474
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1475
    instance-of v2, v1, Lo/PKCS8EncodedKeySpec$ActionBar;

    if-eqz v2, :cond_1

    .line 1476
    check-cast v1, Lo/PKCS8EncodedKeySpec$ActionBar;

    .line 1477
    iget-object v2, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->e:Ljava/util/ArrayList;

    new-instance v3, Lo/PKCS8EncodedKeySpec$ActionBar;

    invoke-direct {v3, v1, p2}, Lo/PKCS8EncodedKeySpec$ActionBar;-><init>(Lo/PKCS8EncodedKeySpec$ActionBar;Lo/Spanned;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1480
    :cond_1
    instance-of v2, v1, Lo/PKCS8EncodedKeySpec$TaskDescription;

    if-eqz v2, :cond_2

    .line 1481
    new-instance v2, Lo/PKCS8EncodedKeySpec$TaskDescription;

    check-cast v1, Lo/PKCS8EncodedKeySpec$TaskDescription;

    invoke-direct {v2, v1}, Lo/PKCS8EncodedKeySpec$TaskDescription;-><init>(Lo/PKCS8EncodedKeySpec$TaskDescription;)V

    goto :goto_1

    .line 1482
    :cond_2
    instance-of v2, v1, Lo/PKCS8EncodedKeySpec$Application;

    if-eqz v2, :cond_4

    .line 1483
    new-instance v2, Lo/PKCS8EncodedKeySpec$Application;

    check-cast v1, Lo/PKCS8EncodedKeySpec$Application;

    invoke-direct {v2, v1}, Lo/PKCS8EncodedKeySpec$Application;-><init>(Lo/PKCS8EncodedKeySpec$Application;)V

    .line 1487
    :goto_1
    iget-object v1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1488
    iget-object v1, v2, Lo/PKCS8EncodedKeySpec$Activity;->k:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1489
    iget-object v1, v2, Lo/PKCS8EncodedKeySpec$Activity;->k:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lo/Spanned;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1485
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown object in the tree!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    const/4 v0, 0x0

    .line 1518
    iput-object v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->l:[I

    .line 1521
    iget v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->b:F

    const-string v1, "rotation"

    const/4 v2, 0x5

    invoke-static {p1, p2, v1, v2, v0}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->b:F

    .line 1524
    iget v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->f:F

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->f:F

    .line 1525
    iget v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->g:F

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->g:F

    .line 1528
    iget v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->j:F

    const-string v1, "scaleX"

    const/4 v2, 0x3

    invoke-static {p1, p2, v1, v2, v0}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->j:F

    .line 1532
    iget v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->h:F

    const-string v1, "scaleY"

    const/4 v2, 0x4

    invoke-static {p1, p2, v1, v2, v0}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->h:F

    .line 1535
    iget v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->i:F

    const-string v1, "translateX"

    const/4 v2, 0x6

    invoke-static {p1, p2, v1, v2, v0}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->i:F

    .line 1537
    iget v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->k:F

    const-string v1, "translateY"

    const/4 v2, 0x7

    invoke-static {p1, p2, v1, v2, v0}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    iput p2, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->k:F

    const/4 p2, 0x0

    .line 1541
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1543
    iput-object p1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->o:Ljava/lang/String;

    .line 1546
    :cond_0
    invoke-direct {p0}, Lo/PKCS8EncodedKeySpec$ActionBar;->e()V

    return-void
.end method

.method private e()V
    .locals 4

    .line 1552
    iget-object v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1553
    iget-object v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->c:Landroid/graphics/Matrix;

    iget v1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->f:F

    neg-float v1, v1

    iget v2, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->g:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1554
    iget-object v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->c:Landroid/graphics/Matrix;

    iget v1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->j:F

    iget v2, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->h:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1555
    iget-object v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->c:Landroid/graphics/Matrix;

    iget v1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->b:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1556
    iget-object v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->c:Landroid/graphics/Matrix;

    iget v1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->i:F

    iget v2, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->f:F

    add-float/2addr v1, v2

    iget v2, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->k:F

    iget v3, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->g:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method


# virtual methods
.method public b(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .line 1507
    sget-object v0, Lo/ECPublicKeySpec;->c:[I

    invoke-static {p1, p3, p2, v0}, Lo/ViewParent;->b(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1509
    invoke-direct {p0, p1, p4}, Lo/PKCS8EncodedKeySpec$ActionBar;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1510
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public b([I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1664
    :goto_0
    iget-object v2, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1665
    iget-object v2, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/PKCS8EncodedKeySpec$StateListAnimator;

    invoke-virtual {v2, p1}, Lo/PKCS8EncodedKeySpec$StateListAnimator;->b([I)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public c()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1653
    :goto_0
    iget-object v2, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1654
    iget-object v2, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/PKCS8EncodedKeySpec$StateListAnimator;

    invoke-virtual {v2}, Lo/PKCS8EncodedKeySpec$StateListAnimator;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 1499
    iget-object v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 1503
    iget-object v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->c:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPivotX()F
    .locals 1

    .line 1575
    iget v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->f:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    .line 1588
    iget v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->g:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .line 1562
    iget v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->b:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .line 1601
    iget v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->j:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 1614
    iget v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->h:F

    return v0
.end method

.method public getTranslateX()F
    .locals 1

    .line 1627
    iget v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->i:F

    return v0
.end method

.method public getTranslateY()F
    .locals 1

    .line 1640
    iget v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->k:F

    return v0
.end method

.method public setPivotX(F)V
    .locals 1

    .line 1580
    iget v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->f:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1581
    iput p1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->f:F

    .line 1582
    invoke-direct {p0}, Lo/PKCS8EncodedKeySpec$ActionBar;->e()V

    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 1

    .line 1593
    iget v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->g:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1594
    iput p1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->g:F

    .line 1595
    invoke-direct {p0}, Lo/PKCS8EncodedKeySpec$ActionBar;->e()V

    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    .line 1567
    iget v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->b:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1568
    iput p1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->b:F

    .line 1569
    invoke-direct {p0}, Lo/PKCS8EncodedKeySpec$ActionBar;->e()V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    .line 1606
    iget v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->j:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1607
    iput p1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->j:F

    .line 1608
    invoke-direct {p0}, Lo/PKCS8EncodedKeySpec$ActionBar;->e()V

    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    .line 1619
    iget v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->h:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1620
    iput p1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->h:F

    .line 1621
    invoke-direct {p0}, Lo/PKCS8EncodedKeySpec$ActionBar;->e()V

    :cond_0
    return-void
.end method

.method public setTranslateX(F)V
    .locals 1

    .line 1632
    iget v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->i:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1633
    iput p1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->i:F

    .line 1634
    invoke-direct {p0}, Lo/PKCS8EncodedKeySpec$ActionBar;->e()V

    :cond_0
    return-void
.end method

.method public setTranslateY(F)V
    .locals 1

    .line 1645
    iget v0, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->k:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1646
    iput p1, p0, Lo/PKCS8EncodedKeySpec$ActionBar;->k:F

    .line 1647
    invoke-direct {p0}, Lo/PKCS8EncodedKeySpec$ActionBar;->e()V

    :cond_0
    return-void
.end method
