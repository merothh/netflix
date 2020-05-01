.class public final Lo/Cr;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lo/CC;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/netflix/model/leafs/advisory/AdvisoryBoard;",
            "Lo/Cu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lo/Cr;->e:Ljava/util/Map;

    .line 21
    new-instance v0, Lo/CC;

    invoke-direct {v0}, Lo/CC;-><init>()V

    iput-object v0, p0, Lo/Cr;->a:Lo/CC;

    return-void
.end method

.method private final a(Lcom/netflix/model/leafs/advisory/AdvisoryBoard;)Lo/Cu;
    .locals 1

    if-nez p1, :cond_0

    .line 25
    iget-object p1, p0, Lo/Cr;->a:Lo/CC;

    check-cast p1, Lo/Cu;

    return-object p1

    .line 28
    :cond_0
    iget-object v0, p0, Lo/Cr;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Cu;

    if-eqz v0, :cond_1

    return-object v0

    .line 32
    :cond_1
    invoke-direct {p0, p1}, Lo/Cr;->e(Lcom/netflix/model/leafs/advisory/AdvisoryBoard;)V

    .line 34
    iget-object v0, p0, Lo/Cr;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Cu;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lo/Cr;->a:Lo/CC;

    check-cast p1, Lo/Cu;

    :goto_0
    return-object p1
.end method

.method private final e(Lcom/netflix/model/leafs/advisory/AdvisoryBoard;)V
    .locals 3

    .line 38
    iget-object v0, p0, Lo/Cr;->e:Ljava/util/Map;

    sget-object v1, Lo/Cx;->c:[I

    invoke-virtual {p1}, Lcom/netflix/model/leafs/advisory/AdvisoryBoard;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 49
    sget-object v1, Lo/ho;->e:Lo/ho$Activity;

    invoke-virtual {v1}, Lo/ho$Activity;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    new-instance v1, Lo/Cy;

    invoke-direct {v1}, Lo/Cy;-><init>()V

    check-cast v1, Lo/Cu;

    goto :goto_0

    .line 52
    :cond_0
    new-instance v1, Lo/CC;

    invoke-direct {v1}, Lo/CC;-><init>()V

    check-cast v1, Lo/Cu;

    goto :goto_0

    .line 49
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 46
    :cond_2
    new-instance v1, Lo/Cw;

    invoke-direct {v1}, Lo/Cw;-><init>()V

    check-cast v1, Lo/Cu;

    goto :goto_0

    .line 43
    :cond_3
    new-instance v1, Lo/Cz;

    invoke-direct {v1}, Lo/Cz;-><init>()V

    check-cast v1, Lo/Cu;

    goto :goto_0

    .line 40
    :cond_4
    new-instance v1, Lo/Cv;

    invoke-direct {v1}, Lo/Cv;-><init>()V

    check-cast v1, Lo/Cu;

    .line 38
    :goto_0
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primaryMessage"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lo/Cr;->a:Lo/CC;

    invoke-virtual {v0, p1, p2, p3}, Lo/CC;->c(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lo/CD;

    move-result-object p1

    invoke-interface {p1}, Lo/CD;->a()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final d(Landroid/content/Context;Lcom/netflix/model/leafs/advisory/ContentAdvisory;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentAdvisory"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-interface {p2}, Lcom/netflix/model/leafs/advisory/ContentAdvisory;->getBoard()Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/Cr;->a(Lcom/netflix/model/leafs/advisory/AdvisoryBoard;)Lo/Cu;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/Cu;->d(Landroid/content/Context;Lcom/netflix/model/leafs/advisory/ContentAdvisory;)Lo/CD;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/CD;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lo/Cr;->a:Lo/CC;

    invoke-virtual {v0, p1, p2}, Lo/CC;->d(Landroid/content/Context;Lcom/netflix/model/leafs/advisory/ContentAdvisory;)Lo/CD;

    move-result-object p1

    invoke-interface {p1}, Lo/CD;->a()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final e(Lcom/netflix/model/leafs/advisory/RatingDetails;Z)Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "ratingDetails"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-interface {p1}, Lcom/netflix/model/leafs/advisory/RatingDetails;->getAdvisoryBoard()Lcom/netflix/model/leafs/advisory/AdvisoryBoard;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/Cr;->a(Lcom/netflix/model/leafs/advisory/AdvisoryBoard;)Lo/Cu;

    move-result-object v0

    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 111
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 79
    invoke-interface {v0, v1, p1, p2}, Lo/Cu;->c(Landroid/content/Context;Lcom/netflix/model/leafs/advisory/RatingDetails;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
