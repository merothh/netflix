.class Lo/Intent;
.super Lo/Context;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Intent$Application;
    }
.end annotation


# instance fields
.field private a:Z

.field private e:Lo/Intent$Application;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, v0, v0}, Lo/Intent;-><init>(Lo/Intent$Application;Landroid/content/res/Resources;)V

    return-void
.end method

.method constructor <init>(Lo/Intent$Application;)V
    .locals 0

    .line 412
    invoke-direct {p0}, Lo/Context;-><init>()V

    if-eqz p1, :cond_0

    .line 414
    invoke-virtual {p0, p1}, Lo/Intent;->c(Lo/Context$Application;)V

    :cond_0
    return-void
.end method

.method constructor <init>(Lo/Intent$Application;Landroid/content/res/Resources;)V
    .locals 1

    .line 401
    invoke-direct {p0}, Lo/Context;-><init>()V

    .line 403
    new-instance v0, Lo/Intent$Application;

    invoke-direct {v0, p1, p0, p2}, Lo/Intent$Application;-><init>(Lo/Intent$Application;Lo/Intent;Landroid/content/res/Resources;)V

    .line 404
    invoke-virtual {p0, v0}, Lo/Intent;->c(Lo/Context$Application;)V

    .line 405
    invoke-virtual {p0}, Lo/Intent;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/Intent;->onStateChange([I)Z

    return-void
.end method

.method private c(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 154
    iget-object v0, p0, Lo/Intent;->e:Lo/Intent$Application;

    .line 156
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 157
    iget v1, v0, Lo/Intent$Application;->i:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lo/Intent$Application;->i:I

    .line 159
    :cond_0
    sget v1, Lo/LoaderManager$Dialog;->cP:I

    iget-boolean v2, v0, Lo/Intent$Application;->l:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Lo/Intent$Application;->l:Z

    .line 161
    sget v1, Lo/LoaderManager$Dialog;->cN:I

    iget-boolean v2, v0, Lo/Intent$Application;->k:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Lo/Intent$Application;->k:Z

    .line 163
    sget v1, Lo/LoaderManager$Dialog;->cS:I

    iget v2, v0, Lo/Intent$Application;->z:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Lo/Intent$Application;->z:I

    .line 165
    sget v1, Lo/LoaderManager$Dialog;->cT:I

    iget v2, v0, Lo/Intent$Application;->D:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Lo/Intent$Application;->D:I

    .line 167
    sget v1, Lo/LoaderManager$Dialog;->cQ:I

    iget-boolean v2, v0, Lo/Intent$Application;->C:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Lo/Intent$Application;->C:Z

    return-void
.end method

.method private e(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 8

    .line 177
    iget-object v0, p0, Lo/Intent;->e:Lo/Intent$Application;

    .line 178
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 181
    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v2, :cond_9

    .line 182
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ge v4, v1, :cond_1

    const/4 v5, 0x3

    if-eq v3, v5, :cond_9

    :cond_1
    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    goto :goto_0

    :cond_2
    if-gt v4, v1, :cond_0

    .line 187
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 192
    :cond_3
    sget-object v3, Lo/LoaderManager$Dialog;->cW:[I

    invoke-static {p2, p5, p4, v3}, Lo/ViewParent;->b(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 195
    sget v6, Lo/LoaderManager$Dialog;->cV:I

    const/4 v7, -0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-lez v6, :cond_4

    .line 198
    invoke-static {p1, v6}, Lo/DialogInterface;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 200
    :cond_4
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    invoke-virtual {p0, p4}, Lo/Intent;->a(Landroid/util/AttributeSet;)[I

    move-result-object v3

    if-nez v4, :cond_8

    .line 206
    :goto_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_5

    goto :goto_1

    :cond_5
    if-ne v4, v5, :cond_7

    .line 215
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_6

    .line 216
    invoke-static {p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    .line 218
    :cond_6
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    .line 210
    :cond_7
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "child tag defining a drawable"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 221
    :cond_8
    :goto_2
    invoke-virtual {v0, v3, v4}, Lo/Intent$Application;->e([ILandroid/graphics/drawable/Drawable;)I

    goto :goto_0

    :cond_9
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3

    .line 141
    sget-object v0, Lo/LoaderManager$Dialog;->cO:[I

    invoke-static {p2, p5, p4, v0}, Lo/ViewParent;->b(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 142
    sget v1, Lo/LoaderManager$Dialog;->cR:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1, v2}, Lo/Intent;->setVisible(ZZ)Z

    .line 143
    invoke-direct {p0, v0}, Lo/Intent;->c(Landroid/content/res/TypedArray;)V

    .line 144
    invoke-virtual {p0, p2}, Lo/Intent;->b(Landroid/content/res/Resources;)V

    .line 145
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    invoke-direct/range {p0 .. p5}, Lo/Intent;->e(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 147
    invoke-virtual {p0}, Lo/Intent;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/Intent;->onStateChange([I)Z

    return-void
.end method

.method a(Landroid/util/AttributeSet;)[I
    .locals 8

    .line 233
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    .line 234
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 236
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v5

    if-eqz v5, :cond_1

    const v6, 0x10100d0

    if-eq v5, v6, :cond_1

    const v6, 0x1010199

    if-eq v5, v6, :cond_1

    add-int/lit8 v6, v4, 0x1

    .line 246
    invoke-interface {p1, v3, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    neg-int v5, v5

    :goto_1
    aput v5, v1, v4

    move v4, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    :cond_2
    invoke-static {v1, v4}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object p1

    return-object p1
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 389
    invoke-super {p0, p1}, Lo/Context;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 390
    invoke-virtual {p0}, Lo/Intent;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/Intent;->onStateChange([I)Z

    return-void
.end method

.method protected c(Lo/Context$Application;)V
    .locals 1

    .line 395
    invoke-super {p0, p1}, Lo/Context;->c(Lo/Context$Application;)V

    .line 396
    instance-of v0, p1, Lo/Intent$Application;

    if-eqz v0, :cond_0

    .line 397
    check-cast p1, Lo/Intent$Application;

    iput-object p1, p0, Lo/Intent;->e:Lo/Intent$Application;

    :cond_0
    return-void
.end method

.method synthetic d()Lo/Context$Application;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lo/Intent;->e()Lo/Intent$Application;

    move-result-object v0

    return-object v0
.end method

.method e()Lo/Intent$Application;
    .locals 3

    .line 317
    new-instance v0, Lo/Intent$Application;

    iget-object v1, p0, Lo/Intent;->e:Lo/Intent$Application;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lo/Intent$Application;-><init>(Lo/Intent$Application;Lo/Intent;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 308
    iget-boolean v0, p0, Lo/Intent;->a:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lo/Context;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 309
    iget-object v0, p0, Lo/Intent;->e:Lo/Intent$Application;

    invoke-virtual {v0}, Lo/Intent$Application;->a()V

    const/4 v0, 0x1

    .line 310
    iput-boolean v0, p0, Lo/Intent;->a:Z

    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 2

    .line 111
    invoke-super {p0, p1}, Lo/Context;->onStateChange([I)Z

    move-result v0

    .line 112
    iget-object v1, p0, Lo/Intent;->e:Lo/Intent$Application;

    invoke-virtual {v1, p1}, Lo/Intent$Application;->d([I)I

    move-result p1

    if-gez p1, :cond_0

    .line 118
    iget-object p1, p0, Lo/Intent;->e:Lo/Intent$Application;

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p1, v1}, Lo/Intent$Application;->d([I)I

    move-result p1

    .line 120
    :cond_0
    invoke-virtual {p0, p1}, Lo/Intent;->b(I)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
