.class public Lo/FloatEvaluator;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/content/res/AssetManager;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/IntArrayEvaluator<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lo/IntArrayEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/IntArrayEvaluator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lo/SecretKey;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Lo/SecretKey;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lo/IntArrayEvaluator;

    invoke-direct {v0}, Lo/IntArrayEvaluator;-><init>()V

    iput-object v0, p0, Lo/FloatEvaluator;->d:Lo/IntArrayEvaluator;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/FloatEvaluator;->c:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/FloatEvaluator;->b:Ljava/util/Map;

    const-string v0, ".ttf"

    .line 27
    iput-object v0, p0, Lo/FloatEvaluator;->h:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lo/FloatEvaluator;->e:Lo/SecretKey;

    .line 31
    instance-of p2, p1, Landroid/view/View;

    if-nez p2, :cond_0

    const-string p1, "LottieDrawable must be inside of a view for images to work."

    .line 32
    invoke-static {p1}, Lo/ActivityOptions;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lo/FloatEvaluator;->a:Landroid/content/res/AssetManager;

    return-void

    .line 37
    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lo/FloatEvaluator;->a:Landroid/content/res/AssetManager;

    return-void
.end method

.method private e(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    const-string v0, "Italic"

    .line 96
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Bold"

    .line 97
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 106
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    if-ne v0, p2, :cond_3

    return-object p1

    .line 110
    :cond_3
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    .line 68
    iget-object v0, p0, Lo/FloatEvaluator;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lo/FloatEvaluator;->e:Lo/SecretKey;

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v1, p1}, Lo/SecretKey;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 78
    :cond_1
    iget-object v1, p0, Lo/FloatEvaluator;->e:Lo/SecretKey;

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 79
    invoke-virtual {v1, p1}, Lo/SecretKey;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 81
    iget-object v0, p0, Lo/FloatEvaluator;->a:Landroid/content/res/AssetManager;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fonts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/FloatEvaluator;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lo/FloatEvaluator;->a:Landroid/content/res/AssetManager;

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 90
    :cond_3
    iget-object v1, p0, Lo/FloatEvaluator;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    .line 56
    iget-object v0, p0, Lo/FloatEvaluator;->d:Lo/IntArrayEvaluator;

    invoke-virtual {v0, p1, p2}, Lo/IntArrayEvaluator;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lo/FloatEvaluator;->c:Ljava/util/Map;

    iget-object v1, p0, Lo/FloatEvaluator;->d:Lo/IntArrayEvaluator;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    .line 61
    :cond_0
    invoke-direct {p0, p1}, Lo/FloatEvaluator;->e(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 62
    invoke-direct {p0, p1, p2}, Lo/FloatEvaluator;->e(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 63
    iget-object p2, p0, Lo/FloatEvaluator;->c:Ljava/util/Map;

    iget-object v0, p0, Lo/FloatEvaluator;->d:Lo/IntArrayEvaluator;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public b(Lo/SecretKey;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lo/FloatEvaluator;->e:Lo/SecretKey;

    return-void
.end method
