.class public final Lo/RecommendationService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DifferentialPrivacyConfig;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/DifferentialPrivacyConfig<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:[Z

.field private b:I

.field private c:Z

.field private final d:Ljava/lang/StringBuilder;

.field private final e:[Z

.field private final f:I

.field private h:Z

.field private final i:Lcom/google/gson/Gson;

.field private final j:Z


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;IIZI)V
    .locals 1

    const-string v0, "gson"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/RecommendationService;->i:Lcom/google/gson/Gson;

    iput p3, p0, Lo/RecommendationService;->f:I

    iput-boolean p4, p0, Lo/RecommendationService;->j:Z

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lo/RecommendationService;->d:Ljava/lang/StringBuilder;

    .line 54
    new-array p1, p5, [Z

    iput-object p1, p0, Lo/RecommendationService;->e:[Z

    .line 55
    new-array p1, p5, [Z

    iput-object p1, p0, Lo/RecommendationService;->a:[Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/gson/Gson;IIZIILo/amc;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/16 p2, 0x1000

    const/16 v2, 0x1000

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const/4 p3, 0x2

    const/4 v3, 0x2

    goto :goto_1

    :cond_1
    move v3, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move v4, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const/16 p5, 0x100

    const/16 v5, 0x100

    goto :goto_3

    :cond_3
    move v5, p5

    :goto_3
    move-object v0, p0

    move-object v1, p1

    .line 48
    invoke-direct/range {v0 .. v5}, Lo/RecommendationService;-><init>(Lcom/google/gson/Gson;IIZI)V

    return-void
.end method

.method public static final synthetic a(Lo/RecommendationService;)Ljava/lang/StringBuilder;
    .locals 0

    .line 43
    iget-object p0, p0, Lo/RecommendationService;->d:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private final c(Z)V
    .locals 3

    .line 92
    iget-object v0, p0, Lo/RecommendationService;->e:[Z

    iget v1, p0, Lo/RecommendationService;->b:I

    iget-boolean v2, p0, Lo/RecommendationService;->h:Z

    aput-boolean v2, v0, v1

    .line 93
    iget-object v0, p0, Lo/RecommendationService;->a:[Z

    aput-boolean p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 94
    iput v1, p0, Lo/RecommendationService;->b:I

    .line 95
    invoke-direct {p0}, Lo/RecommendationService;->l()Lo/RecommendationService;

    .line 96
    iput-boolean p1, p0, Lo/RecommendationService;->c:Z

    return-void
.end method

.method public static final synthetic d(Lo/RecommendationService;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lo/RecommendationService;->j:Z

    return p0
.end method

.method private final l()Lo/RecommendationService;
    .locals 2

    .line 64
    iget-boolean v0, p0, Lo/RecommendationService;->h:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lo/RecommendationService;->d:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lo/RecommendationService;->h:Z

    goto :goto_0

    .line 275
    :cond_0
    invoke-static {p0}, Lo/RecommendationService;->d(Lo/RecommendationService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    invoke-static {p0}, Lo/RecommendationService;->a(Lo/RecommendationService;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    return-object p0
.end method

.method private final m()V
    .locals 1

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lo/RecommendationService;->h:Z

    return-void
.end method

.method private final n()Lo/RecommendationService;
    .locals 3

    .line 74
    iget-boolean v0, p0, Lo/RecommendationService;->j:Z

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lo/RecommendationService;->d:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    iget v0, p0, Lo/RecommendationService;->f:I

    if-lez v0, :cond_0

    .line 77
    iget v1, p0, Lo/RecommendationService;->b:I

    mul-int v0, v0, v1

    const/4 v1, 0x0

    .line 78
    invoke-static {v1, v0}, Lo/amG;->b(II)Lo/amD;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 279
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lo/akG;

    invoke-virtual {v1}, Lo/akG;->c()I

    .line 78
    iget-object v1, p0, Lo/RecommendationService;->d:Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private final t()V
    .locals 2

    .line 100
    iget v0, p0, Lo/RecommendationService;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/RecommendationService;->b:I

    .line 101
    iget-object v0, p0, Lo/RecommendationService;->e:[Z

    iget v1, p0, Lo/RecommendationService;->b:I

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lo/RecommendationService;->h:Z

    .line 102
    iget-object v0, p0, Lo/RecommendationService;->a:[Z

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lo/RecommendationService;->c:Z

    .line 103
    invoke-direct {p0}, Lo/RecommendationService;->m()V

    return-void
.end method


# virtual methods
.method public synthetic a()Lo/DifferentialPrivacyConfig;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lo/RecommendationService;->e()Lo/RecommendationService;

    move-result-object v0

    check-cast v0, Lo/DifferentialPrivacyConfig;

    return-object v0
.end method

.method public synthetic a(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lo/RecommendationService;->b(Ljava/lang/String;)Lo/RecommendationService;

    move-result-object p1

    check-cast p1, Lo/DifferentialPrivacyConfig;

    return-object p1
.end method

.method public b()Lo/RecommendationService;
    .locals 2

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, v0}, Lo/RecommendationService;->c(Z)V

    .line 121
    iget-object v0, p0, Lo/RecommendationService;->d:Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public b(Lcom/google/gson/JsonElement;)Lo/RecommendationService;
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lo/RecommendationService;->i:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-direct {p0}, Lo/RecommendationService;->l()Lo/RecommendationService;

    .line 178
    invoke-direct {p0}, Lo/RecommendationService;->m()V

    .line 179
    iget-object v0, p0, Lo/RecommendationService;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lo/RecommendationService;
    .locals 7

    const-string v0, "v"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lo/RecommendationService;->l()Lo/RecommendationService;

    .line 141
    invoke-direct {p0}, Lo/RecommendationService;->m()V

    const-string v2, "\""

    const-string v3, "\\\""

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    .line 142
    invoke-static/range {v1 .. v6}, Lo/anv;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 143
    iget-object v0, p0, Lo/RecommendationService;->d:Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public synthetic c(Lcom/google/gson/JsonElement;)Lo/DifferentialPrivacyConfig;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lo/RecommendationService;->b(Lcom/google/gson/JsonElement;)Lo/RecommendationService;

    move-result-object p1

    check-cast p1, Lo/DifferentialPrivacyConfig;

    return-object p1
.end method

.method public synthetic c(Ljava/lang/Number;)Lo/DifferentialPrivacyConfig;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lo/RecommendationService;->e(Ljava/lang/Number;)Lo/RecommendationService;

    move-result-object p1

    check-cast p1, Lo/DifferentialPrivacyConfig;

    return-object p1
.end method

.method public c()Lo/RecommendationService;
    .locals 2

    .line 113
    invoke-direct {p0}, Lo/RecommendationService;->t()V

    .line 114
    invoke-direct {p0}, Lo/RecommendationService;->n()Lo/RecommendationService;

    .line 115
    iget-object v0, p0, Lo/RecommendationService;->d:Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lo/RecommendationService;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lo/RecommendationService;->l()Lo/RecommendationService;

    .line 134
    invoke-direct {p0}, Lo/RecommendationService;->n()Lo/RecommendationService;

    .line 135
    iget-object v0, p0, Lo/RecommendationService;->d:Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public synthetic d()Lo/DifferentialPrivacyConfig;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lo/RecommendationService;->c()Lo/RecommendationService;

    move-result-object v0

    check-cast v0, Lo/DifferentialPrivacyConfig;

    return-object v0
.end method

.method public synthetic d(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lo/RecommendationService;->c(Ljava/lang/String;)Lo/RecommendationService;

    move-result-object p1

    check-cast p1, Lo/DifferentialPrivacyConfig;

    return-object p1
.end method

.method public d(J)Lo/RecommendationService;
    .locals 1

    .line 162
    invoke-direct {p0}, Lo/RecommendationService;->l()Lo/RecommendationService;

    .line 163
    invoke-direct {p0}, Lo/RecommendationService;->m()V

    .line 164
    iget-object v0, p0, Lo/RecommendationService;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public d(Z)Lo/RecommendationService;
    .locals 1

    .line 148
    invoke-direct {p0}, Lo/RecommendationService;->l()Lo/RecommendationService;

    .line 149
    invoke-direct {p0}, Lo/RecommendationService;->m()V

    .line 150
    iget-object v0, p0, Lo/RecommendationService;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public synthetic e(J)Lo/DifferentialPrivacyConfig;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lo/RecommendationService;->d(J)Lo/RecommendationService;

    move-result-object p1

    check-cast p1, Lo/DifferentialPrivacyConfig;

    return-object p1
.end method

.method public synthetic e(Z)Lo/DifferentialPrivacyConfig;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lo/RecommendationService;->d(Z)Lo/RecommendationService;

    move-result-object p1

    check-cast p1, Lo/DifferentialPrivacyConfig;

    return-object p1
.end method

.method public e()Lo/RecommendationService;
    .locals 2

    const/4 v0, 0x1

    .line 107
    invoke-direct {p0, v0}, Lo/RecommendationService;->c(Z)V

    .line 108
    iget-object v0, p0, Lo/RecommendationService;->d:Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public e(Ljava/lang/Number;)Lo/RecommendationService;
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lo/RecommendationService;->l()Lo/RecommendationService;

    .line 156
    invoke-direct {p0}, Lo/RecommendationService;->m()V

    .line 157
    iget-object v0, p0, Lo/RecommendationService;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public f()Lo/RecommendationService;
    .locals 2

    .line 126
    invoke-direct {p0}, Lo/RecommendationService;->t()V

    .line 281
    invoke-static {p0}, Lo/RecommendationService;->d(Lo/RecommendationService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    invoke-static {p0}, Lo/RecommendationService;->a(Lo/RecommendationService;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    :cond_0
    iget-object v0, p0, Lo/RecommendationService;->d:Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public synthetic g()Lo/DifferentialPrivacyConfig;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lo/RecommendationService;->b()Lo/RecommendationService;

    move-result-object v0

    check-cast v0, Lo/DifferentialPrivacyConfig;

    return-object v0
.end method

.method public synthetic h()Lo/DifferentialPrivacyConfig;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lo/RecommendationService;->i()Lo/RecommendationService;

    move-result-object v0

    check-cast v0, Lo/DifferentialPrivacyConfig;

    return-object v0
.end method

.method public i()Lo/RecommendationService;
    .locals 2

    .line 184
    invoke-direct {p0}, Lo/RecommendationService;->l()Lo/RecommendationService;

    .line 185
    invoke-direct {p0}, Lo/RecommendationService;->m()V

    .line 186
    iget-object v0, p0, Lo/RecommendationService;->d:Ljava/lang/StringBuilder;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public synthetic j()Lo/DifferentialPrivacyConfig;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lo/RecommendationService;->f()Lo/RecommendationService;

    move-result-object v0

    check-cast v0, Lo/DifferentialPrivacyConfig;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .line 190
    iget-object v0, p0, Lo/RecommendationService;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sb.toString()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic o()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lo/RecommendationService;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
