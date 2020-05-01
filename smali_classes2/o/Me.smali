.class public final Lo/Me;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private c:Lo/Mf;

.field private final d:[Lo/Mf;


# direct methods
.method public constructor <init>([Landroid/util/Pair;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "nf_mdx"

    .line 29
    iput-object v0, p0, Lo/Me;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [Landroid/util/Pair;

    :cond_0
    if-eqz p3, :cond_1

    const-string p3, "Include all targets"

    .line 54
    invoke-static {v0, p3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-direct {p0, p1, p2}, Lo/Me;->e([Landroid/util/Pair;Ljava/lang/String;)[Lo/Mf;

    move-result-object p1

    iput-object p1, p0, Lo/Me;->d:[Lo/Mf;

    goto :goto_0

    :cond_1
    const-string p3, "Include ONLY remote targets"

    .line 57
    invoke-static {v0, p3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-direct {p0, p1, p2}, Lo/Me;->c([Landroid/util/Pair;Ljava/lang/String;)[Lo/Mf;

    move-result-object p1

    iput-object p1, p0, Lo/Me;->d:[Lo/Mf;

    .line 62
    :goto_0
    iget-object p1, p0, Lo/Me;->c:Lo/Mf;

    if-nez p1, :cond_2

    iget-object p1, p0, Lo/Me;->d:[Lo/Mf;

    array-length p2, p1

    if-lez p2, :cond_2

    .line 63
    aget-object p1, p1, v1

    iput-object p1, p0, Lo/Me;->c:Lo/Mf;

    :cond_2
    return-void
.end method

.method private c([Landroid/util/Pair;Ljava/lang/String;)[Lo/Mf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Lo/Mf;"
        }
    .end annotation

    .line 69
    array-length v0, p1

    new-array v0, v0, [Lo/Mf;

    const/4 v1, 0x0

    .line 70
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 71
    aget-object v2, p1, v1

    invoke-static {v2}, Lo/Mf;->b(Landroid/util/Pair;)Lo/Mf;

    move-result-object v2

    aput-object v2, v0, v1

    .line 72
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lo/Mf;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    aget-object v2, v0, v1

    iput-object v2, p0, Lo/Me;->c:Lo/Mf;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static e(Landroid/content/Context;[Lo/Mf;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Lo/Mf;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 160
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 161
    invoke-virtual {v3}, Lo/Mf;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->hq:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    :cond_0
    invoke-virtual {v3}, Lo/Mf;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private e([Landroid/util/Pair;Ljava/lang/String;)[Lo/Mf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Lo/Mf;"
        }
    .end annotation

    .line 82
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lo/Mf;

    .line 83
    invoke-static {}, Lo/Mf;->d()Lo/Mf;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 84
    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_1

    add-int/lit8 v1, v2, 0x1

    .line 85
    aget-object v2, p1, v2

    invoke-static {v2}, Lo/Mf;->b(Landroid/util/Pair;)Lo/Mf;

    move-result-object v2

    aput-object v2, v0, v1

    .line 86
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lo/Mf;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    aget-object v2, v0, v1

    iput-object v2, p0, Lo/Me;->c:Lo/Mf;

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)I
    .locals 5

    .line 199
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "nf_mdx"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p1, "getDevicePositionByUUID:: Given UUID is null!"

    .line 200
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 204
    :goto_0
    iget-object v3, p0, Lo/Me;->d:[Lo/Mf;

    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 205
    aget-object v3, v3, v0

    invoke-virtual {v3}, Lo/Mf;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDevicePositionByUUID:: given device found on position "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "Selected device not found!"

    .line 211
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public b()[Lo/Mf;
    .locals 1

    .line 122
    iget-object v0, p0, Lo/Me;->d:[Lo/Mf;

    return-object v0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 4

    .line 221
    iget-object v0, p0, Lo/Me;->d:[Lo/Mf;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 225
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lo/Me;->d:[Lo/Mf;

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 227
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 228
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "castDeviceList"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method public d(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lo/Me;->d:[Lo/Mf;

    if-nez v0, :cond_0

    const-string v0, "nf_mdx"

    const-string v1, "We should never be here. No targets!"

    .line 143
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    iget-object v0, p0, Lo/Me;->d:[Lo/Mf;

    invoke-static {p1, v0}, Lo/Me;->e(Landroid/content/Context;[Lo/Mf;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d()Lo/Mf;
    .locals 1

    .line 131
    iget-object v0, p0, Lo/Me;->c:Lo/Mf;

    return-object v0
.end method

.method public d(I)Lo/Mf;
    .locals 2

    .line 104
    iget-object v0, p0, Lo/Me;->d:[Lo/Mf;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 108
    aget-object p1, v0, p1

    iput-object p1, p0, Lo/Me;->c:Lo/Mf;

    .line 109
    iget-object p1, p0, Lo/Me;->c:Lo/Mf;

    return-object p1

    :cond_0
    const-string p1, "nf_mdx"

    const-string v0, "Target NOT found! This should NOT happen!"

    .line 112
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public e()I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 173
    :goto_0
    iget-object v2, p0, Lo/Me;->d:[Lo/Mf;

    array-length v3, v2

    const-string v4, "nf_mdx"

    if-ge v1, v3, :cond_1

    .line 174
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lo/Mf;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local device found on position "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "We do NOT have local device from Mobile UI"

    .line 180
    invoke-static {v4, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
