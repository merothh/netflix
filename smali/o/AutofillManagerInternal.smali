.class public final Lo/AutofillManagerInternal;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final b:Lo/InputBinding;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lo/Helper;


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/Helper;)V
    .locals 1

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AutofillManagerInternal;->b:Lo/InputBinding;

    iput-object p2, p0, Lo/AutofillManagerInternal;->d:Lo/Helper;

    .line 33
    iget-object p1, p0, Lo/AutofillManagerInternal;->d:Lo/Helper;

    invoke-virtual {p1}, Lo/Helper;->a()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 34
    invoke-static {p1}, Lo/akz;->n(Ljava/lang/Iterable;)Lo/anb;

    move-result-object p1

    .line 35
    new-instance p2, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardsViewModel$cards$1;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardsViewModel$cards$1;-><init>(Lo/AutofillManagerInternal;)V

    check-cast p2, Lo/alA;

    invoke-static {p1, p2}, Lo/ane;->a(Lo/anb;Lo/alA;)Lo/anb;

    move-result-object p1

    .line 42
    invoke-static {p1}, Lo/ane;->d(Lo/anb;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/AutofillManagerInternal;->c:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Lo/AutofillManagerInternal;Ljava/util/Map;)Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lo/AutofillManagerInternal;->e(Ljava/util/Map;)Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lo/AutofillManagerInternal;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lo/AutofillManagerInternal;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 145
    iget-object v1, p0, Lo/AutofillManagerInternal;->b:Lo/InputBinding;

    invoke-virtual {v1, p2}, Lo/InputBinding;->b(Ljava/lang/String;)Lo/VideoView2;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v1, "carrier"

    .line 146
    invoke-virtual {p2, v1, p1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    .line 150
    :cond_1
    iget-object p1, p0, Lo/AutofillManagerInternal;->b:Lo/InputBinding;

    invoke-virtual {p1, p3}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final a(Ljava/util/Map;)Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Lkotlin/Pair;

    const-string v1, "type"

    .line 87
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "name"

    .line 88
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 86
    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final a(Ljava/util/Map;Ljava/lang/String;)Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1}, Lo/AutofillManagerInternal;->d(Ljava/util/Map;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 135
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->qk:I

    invoke-direct {p0, p2, v0, v1}, Lo/AutofillManagerInternal;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 136
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->qm:I

    invoke-direct {p0, p2, p1, v1}, Lo/AutofillManagerInternal;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 138
    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method private final b(Ljava/util/Map;)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1}, Lo/AutofillManagerInternal;->d(Ljava/util/Map;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    sget-object v2, Lo/fS;->e:Lo/fS$StateListAnimator;

    invoke-virtual {v2}, Lo/fS$StateListAnimator;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lo/AutofillManagerInternal;->i(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    new-instance p1, Lkotlin/Pair;

    .line 96
    iget-object v0, p0, Lo/AutofillManagerInternal;->b:Lo/InputBinding;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->bs:I

    invoke-virtual {v0, v1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lo/AutofillManagerInternal;->b:Lo/InputBinding;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->bv:I

    invoke-virtual {v1, v2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    if-eqz v1, :cond_1

    .line 102
    iget-object v2, p0, Lo/AutofillManagerInternal;->b:Lo/InputBinding;

    invoke-virtual {v2, v1}, Lo/InputBinding;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    if-eqz v0, :cond_6

    .line 105
    sget-object v2, Lo/fR;->c:Lo/fR$StateListAnimator;

    invoke-virtual {v2}, Lo/fR$StateListAnimator;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 106
    iget-object v2, p0, Lo/AutofillManagerInternal;->d:Lo/Helper;

    invoke-virtual {v2}, Lo/Helper;->d()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    invoke-static {v2}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_4

    .line 107
    iget-object v2, p0, Lo/AutofillManagerInternal;->b:Lo/InputBinding;

    invoke-virtual {v2, v0}, Lo/InputBinding;->b(Ljava/lang/String;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 108
    iget-object v2, p0, Lo/AutofillManagerInternal;->d:Lo/Helper;

    invoke-virtual {v2}, Lo/Helper;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lowest_plan_price"

    invoke-virtual {v0, v3, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 109
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 112
    :cond_4
    iget-object p1, p0, Lo/AutofillManagerInternal;->b:Lo/InputBinding;

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->rm:I

    invoke-virtual {p1, v0}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 115
    :cond_5
    iget-object p1, p0, Lo/AutofillManagerInternal;->b:Lo/InputBinding;

    invoke-virtual {p1, v0}, Lo/InputBinding;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 100
    :cond_6
    :goto_3
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final synthetic b(Lo/AutofillManagerInternal;)Lo/Helper;
    .locals 0

    .line 28
    iget-object p0, p0, Lo/AutofillManagerInternal;->d:Lo/Helper;

    return-object p0
.end method

.method public static final synthetic b(Lo/AutofillManagerInternal;Ljava/util/Map;)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lo/AutofillManagerInternal;->j(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method private final c(Ljava/util/Map;)Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lo/AutofillManagerInternal;->a(Ljava/util/Map;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Lo/AutofillManagerInternal;->b(Ljava/util/Map;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;

    const-string v1, "image"

    .line 52
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    move-object v2, v0

    .line 49
    invoke-direct/range {v2 .. v7}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "{carrier}"

    move-object v0, p1

    move-object v2, p2

    .line 158
    invoke-static/range {v0 .. v5}, Lo/anv;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, "https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/v2/sms-partner/fallback.png"

    return-object p1
.end method

.method public static final synthetic d(Lo/AutofillManagerInternal;Ljava/util/Map;)Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lo/AutofillManagerInternal;->c(Ljava/util/Map;)Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;

    move-result-object p0

    return-object p0
.end method

.method private final d(Ljava/util/Map;)Lkotlin/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Lkotlin/Pair;

    const-string v1, "string"

    const-string v2, "messages"

    const-string v3, "headline"

    .line 124
    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 123
    invoke-static {p1, v3}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move-object v3, v5

    :cond_0
    check-cast v3, Ljava/lang/String;

    const-string v4, "subHeadline"

    .line 127
    filled-new-array {v2, v4, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 126
    invoke-static {p1, v1}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_1

    move-object p1, v5

    :cond_1
    check-cast p1, Ljava/lang/String;

    .line 122
    invoke-direct {v0, v3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final e(Ljava/util/Map;)Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1}, Lo/AutofillManagerInternal;->a(Ljava/util/Map;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Lo/AutofillManagerInternal;->b(Ljava/util/Map;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    .line 62
    new-instance p1, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private final e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1}, Lo/AutofillManagerInternal;->a(Ljava/util/Map;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 73
    invoke-direct {p0, p1, p2}, Lo/AutofillManagerInternal;->a(Ljava/util/Map;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p2}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Ljava/lang/String;

    const-string p2, "imageUrlTemplate"

    .line 74
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 76
    new-instance p2, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;

    .line 79
    invoke-direct {p0, p1, p3}, Lo/AutofillManagerInternal;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p2

    .line 76
    invoke-direct/range {v2 .. v7}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public static final synthetic e(Lo/AutofillManagerInternal;Ljava/util/Map;)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lo/AutofillManagerInternal;->g(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method private final g(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "type"

    .line 166
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "vlv"

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final i(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "name"

    .line 170
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "downloadAndGo"

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final j(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "type"

    .line 162
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "illustration"

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "sms_partner"

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lo/AutofillManagerInternal;->c:Ljava/util/List;

    return-object v0
.end method
