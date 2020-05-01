.class public final Lo/UZ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final b:Lo/UZ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lo/UZ;

    invoke-direct {v0}, Lo/UZ;-><init>()V

    sput-object v0, Lo/UZ;->b:Lo/UZ;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/AK;)Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 19
    :cond_0
    invoke-interface {p1}, Lo/AK;->O()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->b:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    invoke-static {v0, v1}, Lo/afw;->e(Ljava/lang/String;Lcom/netflix/mediaclient/util/l10n/BidiMarker;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-interface {p1}, Lo/AK;->N()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->b:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    invoke-static {v1, v2}, Lo/afw;->e(Ljava/lang/String;Lcom/netflix/mediaclient/util/l10n/BidiMarker;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-interface {p1}, Lo/AK;->d()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 24
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->qF:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 25
    invoke-interface {p1}, Lo/AK;->ag()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-interface {p1}, Lo/AK;->V()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v6, 0x2

    aput-object v1, v5, v6

    .line 23
    invoke-static {v2, v5}, Lo/aev;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "StringUtils.getLocalized\u2026 childTitle\n            )"

    invoke-static {v2, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-interface {p1}, Lo/AK;->ai()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 29
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->qJ:I

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    .line 28
    invoke-static {p1, v2}, Lo/aev;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "StringUtils.getLocalized\u2026ldTitle\n                )"

    invoke-static {v2, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_1
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->qI:I

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lo/aev;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "StringUtils.getLocalized\u2026movie_string, childTitle)"

    invoke-static {v2, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    :cond_2
    :goto_0
    invoke-static {v2}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
