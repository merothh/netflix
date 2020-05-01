.class public abstract Lo/Ve;
.super Lo/Vf;
.source ""


# instance fields
.field protected b:Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;

.field protected c:Lo/Vv;

.field protected e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/netflix/model/leafs/originals/interactive/Style;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/netflix/model/leafs/originals/interactive/UiDefinition;

.field private final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/netflix/model/leafs/originals/interactive/template/Element;",
            "Lo/Vr;",
            ">;"
        }
    .end annotation
.end field

.field private j:F

.field private final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:I

.field private n:Lo/UX;

.field private o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/Ve;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

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

    invoke-direct/range {v0 .. v5}, Lo/Ve;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lo/Vf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/Ve;->i:Ljava/util/HashMap;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 54
    iput p1, p0, Lo/Ve;->j:F

    .line 58
    new-instance p1, Lo/UX;

    invoke-direct {p1, p0}, Lo/UX;-><init>(Lo/Ve;)V

    iput-object p1, p0, Lo/Ve;->n:Lo/UX;

    .line 60
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/Ve;->o:Ljava/util/HashMap;

    .line 61
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/Ve;->k:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 44
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/Ve;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a(Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lo/Ve;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Vr;

    if-eqz v0, :cond_4

    .line 223
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x29307489

    if-eq v1, v2, :cond_3

    const v2, 0x4705f29b

    if-eq v1, v2, :cond_2

    const v2, 0x5c13d641

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "default"

    .line 224
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 225
    invoke-interface {v0}, Lo/Vr;->ak_()V

    goto :goto_0

    :cond_2
    const-string v1, "selected"

    .line 228
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 229
    invoke-interface {v0}, Lo/Vr;->al_()V

    goto :goto_0

    :cond_3
    const-string v1, "focused"

    .line 226
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 227
    invoke-interface {v0}, Lo/Vr;->c()V

    .line 232
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/template/Element;->elementChildList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Ljava/lang/Iterable;

    .line 464
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/interactive/template/Element;

    if-eqz v0, :cond_5

    .line 234
    invoke-direct {p0, v0, p2}, Lo/Ve;->a(Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public static final synthetic a(Lo/Ve;Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/Style;F)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lo/Ve;->d(Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/Style;F)V

    return-void
.end method

.method public static final synthetic b(Lo/Ve;)Ljava/util/HashMap;
    .locals 0

    .line 43
    iget-object p0, p0, Lo/Ve;->k:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic c(Lo/Ve;)Ljava/util/HashMap;
    .locals 0

    .line 43
    iget-object p0, p0, Lo/Ve;->o:Ljava/util/HashMap;

    return-object p0
.end method

.method private final d(Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/Style;F)V
    .locals 9

    if-eqz p2, :cond_6

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 329
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Style;->rect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 330
    sget-object v2, Lo/XJ;->c:Lo/XJ;

    .line 332
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->width()Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "rect.width()"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 333
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->height()Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "rect.height()"

    invoke-static {v3, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 334
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->x()Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "rect.x()"

    invoke-static {v3, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 335
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->y()Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "rect.y()"

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v3, p1

    move v8, p3

    .line 330
    invoke-virtual/range {v2 .. v8}, Lo/XJ;->e(Landroid/view/View;IIIIF)V

    .line 340
    :cond_0
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Style;->backgroundColor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 341
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 344
    :cond_1
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 345
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Style;->numberOfLines()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 346
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Style;->fontSize()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float v2, v2, p3

    float-to-int p3, v2

    .line 347
    div-int/lit8 v2, p3, 0x2

    const/4 v3, 0x2

    .line 348
    invoke-static {v1, v2, p3, v3, v0}, Lo/PipedInputStream;->d(Landroid/widget/TextView;IIII)V

    .line 356
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Style;->color()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 357
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 359
    :cond_4
    invoke-virtual {p0}, Lo/Ve;->y()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p3

    check-cast p3, Landroid/app/Activity;

    invoke-static {p3}, Lo/TwoLineListItem;->a(Landroid/app/Activity;)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 360
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Style;->shadow()Lcom/netflix/model/leafs/originals/interactive/Style$Shadow;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 362
    :try_start_0
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Style$Shadow;->color()Lcom/netflix/model/leafs/originals/interactive/Color;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netflix/model/leafs/originals/interactive/Color;->colorWithRGB()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    .line 363
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Style$Shadow;->color()Lcom/netflix/model/leafs/originals/interactive/Color;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Color;->withAlpha()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_5

    const/high16 v2, 0x437f0000    # 255.0f

    float-to-double v2, v2

    mul-double v0, v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p3, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p3, p3, 0xff

    .line 365
    invoke-static {v0, v1, v2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p3

    .line 368
    :cond_5
    check-cast p1, Landroid/widget/TextView;

    .line 369
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Style$Shadow;->radius()Ljava/lang/Float;

    move-result-object v0

    const-string v1, "it.radius()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 370
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Style$Shadow;->x()Ljava/lang/Float;

    move-result-object v1

    const-string v2, "it.x()"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 371
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Style$Shadow;->y()Ljava/lang/Float;

    move-result-object p2

    const-string v2, "it.y()"

    invoke-static {p2, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 368
    invoke-virtual {p1, v0, v1, p2, p3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 375
    :catch_0
    sget-object p1, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast p1, Lo/MessagePdu;

    :cond_6
    :goto_2
    return-void
.end method

.method private final m()V
    .locals 13

    .line 249
    iget-object v0, p0, Lo/Ve;->b:Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;

    const-string v1, "layoutDefinition"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->audio()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 250
    invoke-virtual {p0}, Lo/Ve;->y()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 251
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/Map$Entry;

    .line 252
    iget-object v2, p0, Lo/Ve;->b:Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;

    if-nez v2, :cond_2

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$AudioListAsset;

    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$AudioListAsset;->assetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getAudio(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Audio;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 254
    iget-object v2, p0, Lo/Ve;->b:Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;

    if-nez v2, :cond_3

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$AudioListAsset;

    invoke-virtual {v4}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$AudioListAsset;->assetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getAudio(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Audio;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/Audio;->url()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    move-object v10, v2

    .line 255
    sget-object v11, Lcom/netflix/mediaclient/api/res/AssetType;->l:Lcom/netflix/mediaclient/api/res/AssetType;

    .line 256
    new-instance v12, Lo/Ve$StateListAnimator;

    move-object v2, v12

    move-object v4, v8

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lo/Ve$StateListAnimator;-><init>(Lcom/netflix/model/leafs/originals/interactive/Audio;Lo/Am;Ljava/util/Map$Entry;Ljava/util/Map;Lo/Ve;)V

    check-cast v12, Lo/zU;

    .line 253
    invoke-virtual {v8, v10, v11, v12}, Lo/Am;->e(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lo/zU;)Z

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static synthetic setupElement$default(Lo/Ve;Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 142
    check-cast p3, Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lo/Ve;->e(Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/lang/String;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setupElement"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected final a()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;
    .locals 2

    .line 52
    iget-object v0, p0, Lo/Ve;->b:Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;

    if-nez v0, :cond_0

    const-string v1, "layoutDefinition"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected final a(ILjava/lang/String;)V
    .locals 2

    const-string v0, "state"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lo/Ve;->b:Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;

    if-nez v0, :cond_0

    const-string v1, "layoutDefinition"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->elements()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 241
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;->timer()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/originals/interactive/template/Element;

    invoke-direct {p0, v1, p2}, Lo/Ve;->a(Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;->background()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/originals/interactive/template/Element;

    invoke-direct {p0, v1, p2}, Lo/Ve;->a(Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;->choices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Choice;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Lcom/netflix/model/leafs/originals/interactive/template/Element;

    invoke-direct {p0, p1, p2}, Lo/Ve;->a(Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lo/ErrorCodes;Lo/Xt;Lcom/netflix/model/leafs/originals/interactive/Moment;Lcom/netflix/model/leafs/originals/interactive/BaseLayout;Lcom/netflix/model/leafs/originals/interactive/UiDefinition;)V
    .locals 3

    const-string v0, "imageLoaderRepository"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moment"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseLayout"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, p1}, Lo/Ve;->d(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    .line 75
    invoke-virtual {p0, p2}, Lo/Ve;->c(Lo/ErrorCodes;)V

    .line 76
    invoke-virtual {p0, p3}, Lo/Ve;->d(Lo/Xt;)V

    .line 77
    invoke-virtual {p0, p4}, Lo/Ve;->e(Lcom/netflix/model/leafs/originals/interactive/Moment;)V

    .line 78
    invoke-virtual {p0, p5}, Lo/Ve;->b(Lcom/netflix/model/leafs/originals/interactive/BaseLayout;)V

    .line 79
    iput-object p6, p0, Lo/Ve;->g:Lcom/netflix/model/leafs/originals/interactive/UiDefinition;

    .line 80
    check-cast p5, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;

    .line 81
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    const/4 p3, -0x1

    .line 82
    iput p3, p2, Landroid/graphics/Point;->x:I

    .line 83
    iput p3, p2, Landroid/graphics/Point;->y:I

    .line 85
    invoke-virtual {p0}, Lo/Ve;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class p4, Landroid/app/Activity;

    invoke-static {p3, p4}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/Activity;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 86
    :cond_0
    iget p3, p2, Landroid/graphics/Point;->y:I

    if-ltz p3, :cond_1

    iget p3, p2, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lo/Ve;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lo/adq;->h(Landroid/content/Context;)I

    move-result p3

    .line 87
    :goto_0
    iget p4, p2, Landroid/graphics/Point;->x:I

    if-ltz p4, :cond_2

    iget p2, p2, Landroid/graphics/Point;->x:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lo/Ve;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lo/adq;->j(Landroid/content/Context;)I

    move-result p2

    :goto_1
    if-eqz p1, :cond_3

    .line 88
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getHeight()I

    move-result p4

    goto :goto_2

    :cond_3
    move p4, p3

    :goto_2
    if-eqz p1, :cond_4

    .line 89
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ac()Lo/Ya;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lo/Ya;->b()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    goto :goto_3

    :cond_4
    move p1, p3

    .line 90
    :goto_3
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 92
    iput-object p5, p0, Lo/Ve;->b:Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;

    if-nez p6, :cond_5

    .line 94
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "null interactive"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    :cond_5
    if-lt p1, p4, :cond_6

    move p1, p4

    goto :goto_4

    :cond_6
    sub-int p4, p3, p1

    .line 103
    div-int/lit8 p4, p4, 0x2

    iput p4, p0, Lo/Ve;->l:I

    .line 98
    :goto_4
    iput p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    .line 108
    iget p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    int-to-float p1, p1

    invoke-virtual {p5}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->config()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Config;

    move-result-object p4

    invoke-virtual {p4}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Config;->canvasSize()Lcom/netflix/model/leafs/originals/interactive/Size;

    move-result-object p4

    invoke-virtual {p4}, Lcom/netflix/model/leafs/originals/interactive/Size;->height()Ljava/lang/Integer;

    move-result-object p4

    const-string v1, "layout.config().canvasSize().height()"

    invoke-static {p4, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p1, p4

    iput p1, p0, Lo/Ve;->j:F

    .line 110
    invoke-virtual {p5}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->config()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Config;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Config;->canvasSize()Lcom/netflix/model/leafs/originals/interactive/Size;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Size;->width()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    iget p4, p0, Lo/Ve;->j:F

    mul-float p1, p1, p4

    float-to-int p1, p1

    if-le p1, p2, :cond_7

    .line 112
    iget p4, v0, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget v2, p0, Lo/Ve;->j:F

    div-float/2addr p1, v2

    float-to-int p1, p1

    sub-int/2addr p4, p1

    iput p4, v0, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    .line 113
    iget p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    sub-int/2addr p3, p1

    div-int/lit8 p3, p3, 0x2

    iput p3, p0, Lo/Ve;->l:I

    .line 114
    iget p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    int-to-float p1, p1

    invoke-virtual {p5}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->config()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Config;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Config;->canvasSize()Lcom/netflix/model/leafs/originals/interactive/Size;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netflix/model/leafs/originals/interactive/Size;->height()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    iput p1, p0, Lo/Ve;->j:F

    .line 115
    invoke-virtual {p5}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->config()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Config;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Config;->canvasSize()Lcom/netflix/model/leafs/originals/interactive/Size;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Size;->width()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    iget p3, p0, Lo/Ve;->j:F

    mul-float p1, p1, p3

    float-to-int p1, p1

    :cond_7
    sub-int/2addr p2, p1

    .line 118
    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lo/Ve;->m:I

    .line 120
    invoke-virtual {p0}, Lo/Ve;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_d

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 121
    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 122
    iget p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 123
    iget p1, p0, Lo/Ve;->l:I

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 124
    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 125
    iget p1, p0, Lo/Ve;->m:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 126
    iget p1, p0, Lo/Ve;->m:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 127
    check-cast p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, p2}, Lo/Ve;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    invoke-virtual {p5}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->config()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Config;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Config;->subtitleRect()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Config$SubtitleRect;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Config$SubtitleRect;->height()I

    move-result p1

    int-to-float p1, p1

    goto :goto_5

    :cond_8
    const/4 p1, 0x0

    :goto_5
    iget p2, p0, Lo/Ve;->j:F

    mul-float p1, p1, p2

    iget p2, p0, Lo/Ve;->l:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lo/Ve;->setSubtitleY(F)V

    .line 132
    new-instance p1, Lo/Vv;

    iget p2, p0, Lo/Ve;->j:F

    invoke-direct {p1, p0, p2}, Lo/Vv;-><init>(Lo/Ve;F)V

    iput-object p1, p0, Lo/Ve;->c:Lo/Vv;

    .line 133
    sget-object p1, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 134
    invoke-virtual {p0}, Lo/Ve;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lo/Ve;->n:Lo/UX;

    check-cast p2, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 136
    invoke-virtual {p6}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition;->styles()Ljava/util/Map;

    move-result-object p1

    const-string p2, "uiDefinition.styles()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/Ve;->e:Ljava/util/Map;

    .line 137
    iget-object p1, p0, Lo/Ve;->c:Lo/Vv;

    if-nez p1, :cond_9

    const-string p2, "templateAnimationData"

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_9
    iget-object p2, p0, Lo/Ve;->b:Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;

    const-string p3, "layoutDefinition"

    if-nez p2, :cond_a

    invoke-static {p3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->elements()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;

    move-result-object p2

    const-string p4, "layoutDefinition.elements()"

    invoke-static {p2, p4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p0, Lo/Ve;->b:Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;

    if-nez p4, :cond_b

    invoke-static {p3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p4}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->visualStateTransitionDefinitions()Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;

    move-result-object p4

    const-string p5, "layoutDefinition.visualS\u2026teTransitionDefinitions()"

    invoke-static {p4, p5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p5, p0, Lo/Ve;->b:Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;

    if-nez p5, :cond_c

    invoke-static {p3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p5}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->elementAnimations()Ljava/util/Map;

    move-result-object p3

    const-string p5, "layoutDefinition.elementAnimations()"

    invoke-static {p3, p5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p4, p3}, Lo/Vv;->b(Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;Lcom/netflix/model/leafs/originals/interactive/template/VisualStateTransitionDefinitions;Ljava/util/Map;)V

    .line 138
    invoke-direct {p0}, Lo/Ve;->m()V

    return-void

    .line 120
    :cond_d
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final a(Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "notificationText"

    invoke-static {v1, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "layout"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->elements()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;->notification()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Notification;

    move-result-object v2

    if-eqz v2, :cond_e

    const/4 v4, 0x0

    .line 387
    iput-boolean v4, v0, Lo/Ve;->q:Z

    .line 388
    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Notification;->children()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Notification$NotificationChildren;

    move-result-object v4

    .line 390
    sget v5, Lcom/netflix/mediaclient/ui/R$Fragment;->iC:I

    invoke-virtual {v0, v5}, Lo/Ve;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 391
    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Notification;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const-string v2, "this"

    .line 393
    invoke-static {v5, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    .line 394
    iget-object v6, v0, Lo/Ve;->e:Ljava/util/Map;

    const-string v7, "styles"

    if-nez v6, :cond_0

    invoke-static {v7}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->elements()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Elements;->notification()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Notification;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Notification;->styleId()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_1
    move-object v8, v9

    :goto_0
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netflix/model/leafs/originals/interactive/Style;

    .line 395
    iget v8, v0, Lo/Ve;->j:F

    .line 392
    invoke-direct {v0, v5, v6, v8}, Lo/Ve;->d(Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/Style;F)V

    .line 400
    invoke-virtual {v4}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Notification$NotificationChildren;->background()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 401
    sget v6, Lcom/netflix/mediaclient/ui/R$Fragment;->iw:I

    invoke-virtual {v0, v6}, Lo/Ve;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lo/GridView;

    .line 402
    invoke-virtual {v5}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;->id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Lo/GridView;->setTag(Ljava/lang/Object;)V

    .line 403
    iget-object v6, v0, Lo/Ve;->e:Ljava/util/Map;

    if-nez v6, :cond_2

    invoke-static {v7}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v5}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;->styleId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netflix/model/leafs/originals/interactive/Style;

    .line 404
    invoke-static {v12, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v12

    check-cast v8, Landroid/view/View;

    iget v10, v0, Lo/Ve;->j:F

    invoke-direct {v0, v8, v6, v10}, Lo/Ve;->d(Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/Style;F)V

    .line 405
    move-object v8, v9

    check-cast v8, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v8}, Lo/GridView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 406
    sget-object v10, Lo/XJ;->c:Lo/XJ;

    .line 407
    invoke-virtual/range {p0 .. p0}, Lo/Ve;->q()Lo/ErrorCodes;

    move-result-object v11

    .line 409
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;->assetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v5

    move-object v13, v5

    goto :goto_1

    :cond_3
    move-object v13, v9

    :goto_1
    if-eqz v6, :cond_4

    .line 410
    invoke-virtual {v6}, Lcom/netflix/model/leafs/originals/interactive/Style;->rect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v5

    move-object v14, v5

    goto :goto_2

    :cond_4
    move-object v14, v9

    .line 411
    :goto_2
    iget v15, v0, Lo/Ve;->j:F

    const/16 v16, 0x0

    const/16 v17, 0x20

    const/16 v18, 0x0

    .line 406
    invoke-static/range {v10 .. v18}, Lo/XJ;->b(Lo/XJ;Lo/ErrorCodes;Lo/GridView;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/SourceRect;FLo/XK;ILjava/lang/Object;)V

    .line 416
    :cond_5
    invoke-virtual {v4}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Notification$NotificationChildren;->label()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 417
    sget v6, Lcom/netflix/mediaclient/ui/R$Fragment;->ix:I

    invoke-virtual {v0, v6}, Lo/Ve;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lo/ImageSwitcher;

    .line 418
    invoke-static {v6, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v6

    check-cast v8, Landroid/view/View;

    iget-object v10, v0, Lo/Ve;->e:Ljava/util/Map;

    if-nez v10, :cond_6

    invoke-static {v7}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v5}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;->styleId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/netflix/model/leafs/originals/interactive/Style;

    iget v11, v0, Lo/Ve;->j:F

    invoke-direct {v0, v8, v10, v11}, Lo/Ve;->d(Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/Style;F)V

    .line 419
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v6, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 420
    invoke-virtual {v6, v1}, Lo/ImageSwitcher;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 421
    sget-object v1, Lo/XJ;->c:Lo/XJ;

    .line 422
    invoke-virtual/range {p0 .. p0}, Lo/Ve;->q()Lo/ErrorCodes;

    move-result-object v8

    .line 424
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v5}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;->assetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v5

    goto :goto_3

    :cond_7
    move-object v5, v9

    .line 421
    :goto_3
    invoke-virtual {v1, v8, v6, v5}, Lo/XJ;->d(Lo/ErrorCodes;Lo/ImageSwitcher;Lcom/netflix/model/leafs/originals/interactive/Image;)V

    .line 428
    :cond_8
    invoke-virtual {v4}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Notification$NotificationChildren;->leftCap()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 429
    sget v5, Lcom/netflix/mediaclient/ui/R$Fragment;->iA:I

    invoke-virtual {v0, v5}, Lo/Ve;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lo/GridView;

    .line 430
    invoke-static {v12, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v12

    check-cast v5, Landroid/view/View;

    iget-object v6, v0, Lo/Ve;->e:Ljava/util/Map;

    if-nez v6, :cond_9

    invoke-static {v7}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;->styleId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netflix/model/leafs/originals/interactive/Style;

    iget v8, v0, Lo/Ve;->j:F

    invoke-direct {v0, v5, v6, v8}, Lo/Ve;->d(Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/Style;F)V

    .line 431
    move-object v5, v9

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v5}, Lo/GridView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 432
    sget-object v10, Lo/XJ;->c:Lo/XJ;

    .line 433
    invoke-virtual/range {p0 .. p0}, Lo/Ve;->q()Lo/ErrorCodes;

    move-result-object v11

    .line 435
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;->assetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v1

    move-object v13, v1

    goto :goto_4

    :cond_a
    move-object v13, v9

    :goto_4
    const/4 v14, 0x0

    .line 437
    iget v15, v0, Lo/Ve;->j:F

    const/16 v16, 0x0

    const/16 v17, 0x20

    const/16 v18, 0x0

    .line 432
    invoke-static/range {v10 .. v18}, Lo/XJ;->b(Lo/XJ;Lo/ErrorCodes;Lo/GridView;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/SourceRect;FLo/XK;ILjava/lang/Object;)V

    .line 442
    :cond_b
    invoke-virtual {v4}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Notification$NotificationChildren;->rightCap()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 443
    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->iE:I

    invoke-virtual {v0, v4}, Lo/Ve;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lo/GridView;

    .line 444
    invoke-static {v12, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v12

    check-cast v2, Landroid/view/View;

    iget-object v4, v0, Lo/Ve;->e:Ljava/util/Map;

    if-nez v4, :cond_c

    invoke-static {v7}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;->styleId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netflix/model/leafs/originals/interactive/Style;

    iget v5, v0, Lo/Ve;->j:F

    invoke-direct {v0, v2, v4, v5}, Lo/Ve;->d(Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/Style;F)V

    .line 445
    move-object v2, v9

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v2}, Lo/GridView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 446
    sget-object v10, Lo/XJ;->c:Lo/XJ;

    .line 447
    invoke-virtual/range {p0 .. p0}, Lo/Ve;->q()Lo/ErrorCodes;

    move-result-object v11

    .line 449
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;->assetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v9

    :cond_d
    move-object v13, v9

    const/4 v14, 0x0

    .line 451
    iget v15, v0, Lo/Ve;->j:F

    const/16 v16, 0x0

    const/16 v17, 0x20

    const/16 v18, 0x0

    .line 446
    invoke-static/range {v10 .. v18}, Lo/XJ;->b(Lo/XJ;Lo/ErrorCodes;Lo/GridView;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/SourceRect;FLo/XK;ILjava/lang/Object;)V

    :cond_e
    return-void
.end method

.method protected final b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/Style;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lo/Ve;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    const-string v1, "styles"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "audioSound"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lo/Ve;->o:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 311
    :cond_0
    iget-object v0, p0, Lo/Ve;->k:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method protected final c()Lo/Vv;
    .locals 2

    .line 49
    iget-object v0, p0, Lo/Ve;->c:Lo/Vv;

    if-nez v0, :cond_0

    const-string v1, "templateAnimationData"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected final d()I
    .locals 1

    .line 55
    iget v0, p0, Lo/Ve;->l:I

    return v0
.end method

.method protected final e()F
    .locals 1

    .line 54
    iget v0, p0, Lo/Ve;->j:F

    return v0
.end method

.method protected final e(Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/lang/String;)V
    .locals 12

    const-string v0, "v"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/template/Element;->hasVisualStates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lo/Ve;->i:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lo/Ve$Application;

    invoke-direct {v1, p0, p2, p1}, Lo/Ve$Application;-><init>(Lo/Ve;Lcom/netflix/model/leafs/originals/interactive/template/Element;Landroid/view/View;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/template/Element;->id()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 186
    iget-object p3, p0, Lo/Ve;->e:Ljava/util/Map;

    if-nez p3, :cond_2

    const-string v0, "styles"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/template/Element;->styleId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/netflix/model/leafs/originals/interactive/Style;

    .line 187
    iget v0, p0, Lo/Ve;->j:F

    invoke-direct {p0, p1, p3, v0}, Lo/Ve;->d(Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/Style;F)V

    .line 189
    instance-of v0, p2, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    if-eqz v0, :cond_19

    .line 190
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/template/Element;->hasVisualStates()Z

    move-result v0

    const-string v1, "layoutDefinition"

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    .line 191
    instance-of v0, p1, Lo/Vp;

    if-eqz v0, :cond_19

    .line 192
    invoke-virtual {p0}, Lo/Ve;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/template/Element;->getDefault()Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;->assetId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v0

    if-eqz v0, :cond_4

    :goto_2
    move-object v7, v0

    goto :goto_4

    .line 193
    :cond_4
    iget-object v0, p0, Lo/Ve;->b:Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;

    if-nez v0, :cond_5

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/template/Element;->getDefault()Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;->assetId()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_6
    move-object v3, v2

    :goto_3
    invoke-virtual {v0, v3}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object v7, v2

    .line 194
    :goto_4
    invoke-virtual {p0}, Lo/Ve;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/template/Element;->getSelected()Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;->assetId()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_8
    move-object v3, v2

    :goto_5
    invoke-virtual {v0, v3}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v0

    if-eqz v0, :cond_9

    :goto_6
    move-object v8, v0

    goto :goto_8

    .line 195
    :cond_9
    iget-object v0, p0, Lo/Ve;->b:Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;

    if-nez v0, :cond_a

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/template/Element;->getSelected()Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;->assetId()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_b
    move-object v3, v2

    :goto_7
    invoke-virtual {v0, v3}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v0

    goto :goto_6

    :cond_c
    move-object v8, v2

    .line 196
    :goto_8
    invoke-virtual {p0}, Lo/Ve;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/template/Element;->getFocused()Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;->assetId()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_d
    move-object v3, v2

    :goto_9
    invoke-virtual {v0, v3}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v0

    if-eqz v0, :cond_e

    move-object v9, v0

    goto :goto_b

    .line 197
    :cond_e
    iget-object v0, p0, Lo/Ve;->b:Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;

    if-nez v0, :cond_f

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/template/Element;->getFocused()Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;

    move-result-object p2

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;->assetId()Ljava/lang/String;

    move-result-object p2

    goto :goto_a

    :cond_10
    move-object p2, v2

    :goto_a
    invoke-virtual {v0, p2}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object p2

    move-object v9, p2

    goto :goto_b

    :cond_11
    move-object v9, v2

    .line 198
    :goto_b
    move-object v3, p1

    check-cast v3, Lo/Vp;

    invoke-virtual {p0}, Lo/Ve;->q()Lo/ErrorCodes;

    move-result-object v4

    if-eqz p3, :cond_12

    invoke-virtual {p3}, Lcom/netflix/model/leafs/originals/interactive/Style;->rect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v2

    :cond_12
    move-object v5, v2

    iget v6, p0, Lo/Ve;->j:F

    invoke-virtual/range {v3 .. v9}, Lo/Vp;->b(Lo/ErrorCodes;Lcom/netflix/model/leafs/originals/interactive/SourceRect;FLcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/Image;)V

    goto :goto_e

    .line 201
    :cond_13
    instance-of v0, p1, Lo/GridView;

    if-eqz v0, :cond_19

    .line 202
    invoke-virtual {p0}, Lo/Ve;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/template/Element;->getDefault()Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;->assetId()Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    :cond_14
    move-object v3, v2

    :goto_c
    invoke-virtual {v0, v3}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v0

    if-eqz v0, :cond_15

    move-object v6, v0

    goto :goto_d

    .line 203
    :cond_15
    iget-object v0, p0, Lo/Ve;->b:Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;

    if-nez v0, :cond_16

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_16
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v0

    if-eqz v0, :cond_17

    check-cast p2, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;->assetId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object p2

    move-object v6, p2

    goto :goto_d

    :cond_17
    move-object v6, v2

    .line 204
    :goto_d
    sget-object v3, Lo/XJ;->c:Lo/XJ;

    .line 205
    invoke-virtual {p0}, Lo/Ve;->q()Lo/ErrorCodes;

    move-result-object v4

    .line 206
    move-object v5, p1

    check-cast v5, Lo/GridView;

    if-eqz p3, :cond_18

    .line 208
    invoke-virtual {p3}, Lcom/netflix/model/leafs/originals/interactive/Style;->rect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v2

    :cond_18
    move-object v7, v2

    .line 209
    iget v8, p0, Lo/Ve;->j:F

    const/4 v9, 0x0

    const/16 v10, 0x20

    const/4 v11, 0x0

    .line 204
    invoke-static/range {v3 .. v11}, Lo/XJ;->b(Lo/XJ;Lo/ErrorCodes;Lo/GridView;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/SourceRect;FLo/XK;ILjava/lang/Object;)V

    :cond_19
    :goto_e
    return-void
.end method

.method public g()V
    .locals 2

    .line 317
    iget-object v0, p0, Lo/Ve;->o:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 318
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final i()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lo/Ve;->q:Z

    return v0
.end method

.method public final j()Lo/UX;
    .locals 1

    .line 58
    iget-object v0, p0, Lo/Ve;->n:Lo/UX;

    return-object v0
.end method
