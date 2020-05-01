.class Lo/PKCS8EncodedKeySpec$TaskDescription;
.super Lo/PKCS8EncodedKeySpec$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PKCS8EncodedKeySpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation


# instance fields
.field a:I

.field b:Lo/ViewOutlineProvider;

.field c:F

.field d:Lo/ViewOutlineProvider;

.field e:F

.field f:F

.field g:Landroid/graphics/Paint$Cap;

.field h:F

.field i:F

.field j:F

.field l:Landroid/graphics/Paint$Join;

.field o:F

.field private s:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1821
    invoke-direct {p0}, Lo/PKCS8EncodedKeySpec$Activity;-><init>()V

    const/4 v0, 0x0

    .line 1806
    iput v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1809
    iput v1, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->c:F

    const/4 v2, 0x0

    .line 1811
    iput v2, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->a:I

    .line 1812
    iput v1, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->j:F

    .line 1813
    iput v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->h:F

    .line 1814
    iput v1, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->i:F

    .line 1815
    iput v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->f:F

    .line 1817
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->g:Landroid/graphics/Paint$Cap;

    .line 1818
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->l:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    .line 1819
    iput v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->o:F

    return-void
.end method

.method public constructor <init>(Lo/PKCS8EncodedKeySpec$TaskDescription;)V
    .locals 3

    .line 1826
    invoke-direct {p0, p1}, Lo/PKCS8EncodedKeySpec$Activity;-><init>(Lo/PKCS8EncodedKeySpec$Activity;)V

    const/4 v0, 0x0

    .line 1806
    iput v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1809
    iput v1, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->c:F

    const/4 v2, 0x0

    .line 1811
    iput v2, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->a:I

    .line 1812
    iput v1, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->j:F

    .line 1813
    iput v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->h:F

    .line 1814
    iput v1, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->i:F

    .line 1815
    iput v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->f:F

    .line 1817
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->g:Landroid/graphics/Paint$Cap;

    .line 1818
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->l:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    .line 1819
    iput v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->o:F

    .line 1827
    iget-object v0, p1, Lo/PKCS8EncodedKeySpec$TaskDescription;->s:[I

    iput-object v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->s:[I

    .line 1829
    iget-object v0, p1, Lo/PKCS8EncodedKeySpec$TaskDescription;->b:Lo/ViewOutlineProvider;

    iput-object v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->b:Lo/ViewOutlineProvider;

    .line 1830
    iget v0, p1, Lo/PKCS8EncodedKeySpec$TaskDescription;->e:F

    iput v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->e:F

    .line 1831
    iget v0, p1, Lo/PKCS8EncodedKeySpec$TaskDescription;->c:F

    iput v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->c:F

    .line 1832
    iget-object v0, p1, Lo/PKCS8EncodedKeySpec$TaskDescription;->d:Lo/ViewOutlineProvider;

    iput-object v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->d:Lo/ViewOutlineProvider;

    .line 1833
    iget v0, p1, Lo/PKCS8EncodedKeySpec$TaskDescription;->a:I

    iput v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->a:I

    .line 1834
    iget v0, p1, Lo/PKCS8EncodedKeySpec$TaskDescription;->j:F

    iput v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->j:F

    .line 1835
    iget v0, p1, Lo/PKCS8EncodedKeySpec$TaskDescription;->h:F

    iput v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->h:F

    .line 1836
    iget v0, p1, Lo/PKCS8EncodedKeySpec$TaskDescription;->i:F

    iput v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->i:F

    .line 1837
    iget v0, p1, Lo/PKCS8EncodedKeySpec$TaskDescription;->f:F

    iput v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->f:F

    .line 1839
    iget-object v0, p1, Lo/PKCS8EncodedKeySpec$TaskDescription;->g:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->g:Landroid/graphics/Paint$Cap;

    .line 1840
    iget-object v0, p1, Lo/PKCS8EncodedKeySpec$TaskDescription;->l:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->l:Landroid/graphics/Paint$Join;

    .line 1841
    iget p1, p1, Lo/PKCS8EncodedKeySpec$TaskDescription;->o:F

    iput p1, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->o:F

    return-void
.end method

.method private e(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-object p2

    .line 1851
    :cond_0
    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object p1

    .line 1849
    :cond_1
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object p1

    .line 1847
    :cond_2
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object p1
.end method

.method private e(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-object p2

    .line 1864
    :cond_0
    sget-object p1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    return-object p1

    .line 1862
    :cond_1
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object p1

    .line 1860
    :cond_2
    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    return-object p1
.end method

.method private e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V
    .locals 7

    const/4 v0, 0x0

    .line 1887
    iput-object v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->s:[I

    const-string v0, "pathData"

    .line 1894
    invoke-static {p2, v0}, Lo/ViewParent;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1901
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1904
    iput-object v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->k:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x2

    .line 1907
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1909
    invoke-static {v0}, Lo/AccessibilityEvent;->e(Ljava/lang/String;)[Lo/AccessibilityEvent$Application;

    move-result-object v0

    iput-object v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->m:[Lo/AccessibilityEvent$Application;

    :cond_2
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v4, "fillColor"

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1912
    invoke-static/range {v1 .. v6}, Lo/ViewParent;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Lo/ViewOutlineProvider;

    move-result-object v0

    iput-object v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->d:Lo/ViewOutlineProvider;

    const/16 v0, 0xc

    .line 1914
    iget v1, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->j:F

    const-string v2, "fillAlpha"

    invoke-static {p1, p2, v2, v0, v1}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->j:F

    const/16 v0, 0x8

    const/4 v1, -0x1

    const-string v2, "strokeLineCap"

    .line 1916
    invoke-static {p1, p2, v2, v0, v1}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 1918
    iget-object v2, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->g:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v0, v2}, Lo/PKCS8EncodedKeySpec$TaskDescription;->e(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v0

    iput-object v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->g:Landroid/graphics/Paint$Cap;

    const/16 v0, 0x9

    const-string v2, "strokeLineJoin"

    .line 1919
    invoke-static {p1, p2, v2, v0, v1}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 1921
    iget-object v1, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->l:Landroid/graphics/Paint$Join;

    invoke-direct {p0, v0, v1}, Lo/PKCS8EncodedKeySpec$TaskDescription;->e(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;

    move-result-object v0

    iput-object v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->l:Landroid/graphics/Paint$Join;

    const/16 v0, 0xa

    .line 1922
    iget v1, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->o:F

    const-string v2, "strokeMiterLimit"

    invoke-static {p1, p2, v2, v0, v1}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->o:F

    const/4 v5, 0x3

    const-string v4, "strokeColor"

    move-object v1, p1

    move-object v2, p2

    .line 1925
    invoke-static/range {v1 .. v6}, Lo/ViewParent;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Lo/ViewOutlineProvider;

    move-result-object p3

    iput-object p3, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->b:Lo/ViewOutlineProvider;

    const/16 p3, 0xb

    .line 1927
    iget v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->c:F

    const-string v1, "strokeAlpha"

    invoke-static {p1, p2, v1, p3, v0}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->c:F

    const/4 p3, 0x4

    .line 1929
    iget v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->e:F

    const-string v1, "strokeWidth"

    invoke-static {p1, p2, v1, p3, v0}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->e:F

    const/4 p3, 0x6

    .line 1931
    iget v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->i:F

    const-string v1, "trimPathEnd"

    invoke-static {p1, p2, v1, p3, v0}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->i:F

    const/4 p3, 0x7

    .line 1933
    iget v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->f:F

    const-string v1, "trimPathOffset"

    invoke-static {p1, p2, v1, p3, v0}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->f:F

    const/4 p3, 0x5

    .line 1936
    iget v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->h:F

    const-string v1, "trimPathStart"

    invoke-static {p1, p2, v1, p3, v0}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->h:F

    const/16 p3, 0xd

    .line 1939
    iget v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->a:I

    const-string v1, "fillType"

    invoke-static {p1, p2, v1, p3, v0}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->a:I

    return-void
.end method


# virtual methods
.method public b([I)Z
    .locals 2

    .line 1951
    iget-object v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->d:Lo/ViewOutlineProvider;

    invoke-virtual {v0, p1}, Lo/ViewOutlineProvider;->c([I)Z

    move-result v0

    .line 1952
    iget-object v1, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->b:Lo/ViewOutlineProvider;

    invoke-virtual {v1, p1}, Lo/ViewOutlineProvider;->c([I)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public c(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .line 1876
    sget-object v0, Lo/ECPublicKeySpec;->a:[I

    invoke-static {p1, p3, p2, v0}, Lo/ViewParent;->b(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1878
    invoke-direct {p0, p1, p4, p3}, Lo/PKCS8EncodedKeySpec$TaskDescription;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V

    .line 1879
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1946
    iget-object v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->d:Lo/ViewOutlineProvider;

    invoke-virtual {v0}, Lo/ViewOutlineProvider;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->b:Lo/ViewOutlineProvider;

    invoke-virtual {v0}, Lo/ViewOutlineProvider;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method getFillAlpha()F
    .locals 1

    .line 2014
    iget v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->j:F

    return v0
.end method

.method getFillColor()I
    .locals 1

    .line 2004
    iget-object v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->d:Lo/ViewOutlineProvider;

    invoke-virtual {v0}, Lo/ViewOutlineProvider;->c()I

    move-result v0

    return v0
.end method

.method getStrokeAlpha()F
    .locals 1

    .line 1993
    iget v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->c:F

    return v0
.end method

.method getStrokeColor()I
    .locals 1

    .line 1973
    iget-object v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->b:Lo/ViewOutlineProvider;

    invoke-virtual {v0}, Lo/ViewOutlineProvider;->c()I

    move-result v0

    return v0
.end method

.method getStrokeWidth()F
    .locals 1

    .line 1983
    iget v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->e:F

    return v0
.end method

.method getTrimPathEnd()F
    .locals 1

    .line 2034
    iget v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->i:F

    return v0
.end method

.method getTrimPathOffset()F
    .locals 1

    .line 2044
    iget v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->f:F

    return v0
.end method

.method getTrimPathStart()F
    .locals 1

    .line 2024
    iget v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->h:F

    return v0
.end method

.method setFillAlpha(F)V
    .locals 0

    .line 2019
    iput p1, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->j:F

    return-void
.end method

.method setFillColor(I)V
    .locals 1

    .line 2009
    iget-object v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->d:Lo/ViewOutlineProvider;

    invoke-virtual {v0, p1}, Lo/ViewOutlineProvider;->c(I)V

    return-void
.end method

.method setStrokeAlpha(F)V
    .locals 0

    .line 1998
    iput p1, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->c:F

    return-void
.end method

.method setStrokeColor(I)V
    .locals 1

    .line 1978
    iget-object v0, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->b:Lo/ViewOutlineProvider;

    invoke-virtual {v0, p1}, Lo/ViewOutlineProvider;->c(I)V

    return-void
.end method

.method setStrokeWidth(F)V
    .locals 0

    .line 1988
    iput p1, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->e:F

    return-void
.end method

.method setTrimPathEnd(F)V
    .locals 0

    .line 2039
    iput p1, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->i:F

    return-void
.end method

.method setTrimPathOffset(F)V
    .locals 0

    .line 2049
    iput p1, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->f:F

    return-void
.end method

.method setTrimPathStart(F)V
    .locals 0

    .line 2029
    iput p1, p0, Lo/PKCS8EncodedKeySpec$TaskDescription;->h:F

    return-void
.end method
