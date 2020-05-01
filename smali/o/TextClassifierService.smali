.class public final Lo/TextClassifierService;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Lo/InputBinding;

.field private final e:Lo/ResolverRankerService;


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/ResolverRankerService;)V
    .locals 1

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/TextClassifierService;->c:Lo/InputBinding;

    iput-object p2, p0, Lo/TextClassifierService;->e:Lo/ResolverRankerService;

    .line 12
    invoke-direct {p0}, Lo/TextClassifierService;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/TextClassifierService;->a:Ljava/lang/String;

    return-void
.end method

.method private final a(Ljava/lang/String;Z)Z
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lo/TextClassifierService;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/TextClassifierService;->c:Lo/InputBinding;

    invoke-virtual {v0, p1}, Lo/InputBinding;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lo/TextClassifierService;->e()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lo/TextClassifierService;->c:Lo/InputBinding;

    invoke-virtual {v0, p1}, Lo/InputBinding;->b(Ljava/lang/String;)Lo/VideoView2;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 57
    invoke-direct {p0, p2}, Lo/TextClassifierService;->e(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lo/TextClassifierService;->e()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 60
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 82
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    invoke-static {p2, v1}, Lo/akI;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "stringFormatter.format()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 54
    :cond_2
    invoke-direct {p0}, Lo/TextClassifierService;->e()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final d()Ljava/lang/String;
    .locals 3

    .line 16
    iget-object v0, p0, Lo/TextClassifierService;->e:Lo/ResolverRankerService;

    invoke-virtual {v0}, Lo/ResolverRankerService;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lo/TextClassifierService;->e:Lo/ResolverRankerService;

    invoke-virtual {v0}, Lo/ResolverRankerService;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lo/TextClassifierService;->e:Lo/ResolverRankerService;

    invoke-virtual {v2}, Lo/ResolverRankerService;->b()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lo/TextClassifierService;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lo/TextClassifierService;->e:Lo/ResolverRankerService;

    invoke-virtual {v0}, Lo/ResolverRankerService;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lo/TextClassifierService;->e:Lo/ResolverRankerService;

    invoke-virtual {v2}, Lo/ResolverRankerService;->b()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lo/TextClassifierService;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 30
    :cond_2
    iget-object v0, p0, Lo/TextClassifierService;->e:Lo/ResolverRankerService;

    invoke-virtual {v0}, Lo/ResolverRankerService;->d()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/TextClassifierService;->e:Lo/ResolverRankerService;

    invoke-virtual {v0}, Lo/ResolverRankerService;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/TextClassifierService;->e:Lo/ResolverRankerService;

    invoke-virtual {v1}, Lo/ResolverRankerService;->d()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lo/TextClassifierService;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 31
    :cond_3
    iget-object v0, p0, Lo/TextClassifierService;->e:Lo/ResolverRankerService;

    invoke-virtual {v0}, Lo/ResolverRankerService;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/TextClassifierService;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private final d(Ljava/lang/String;)Z
    .locals 1

    .line 45
    sget-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Mode;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Mode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Mode;->getPAYMENT_PICKER_MODES()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lo/ako;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final e()Ljava/lang/String;
    .locals 2

    .line 51
    iget-object v0, p0, Lo/TextClassifierService;->c:Lo/InputBinding;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->da:I

    invoke-virtual {v0, v1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final e(Ljava/lang/String;)Z
    .locals 1

    .line 42
    sget-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Mode;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Mode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$Mode;->getPAYMENT_MODES()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lo/ako;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final e(Ljava/lang/String;Z)Z
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lo/TextClassifierService;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final e(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 68
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 85
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 69
    invoke-static {p1, v3}, Lo/akI;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    return v2
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/TextClassifierService;->a:Ljava/lang/String;

    return-object v0
.end method
