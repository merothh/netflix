.class public Lo/C;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final b(Lcom/android/volley/Request;[B)Ljava/lang/String;
    .locals 6

    .line 41
    invoke-virtual {p0}, Lcom/android/volley/Request;->g()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "POST"

    const/4 v4, 0x1

    const-string v5, "GET"

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    new-array p1, v4, [Ljava/lang/Object;

    .line 58
    invoke-virtual {p0}, Lcom/android/volley/Request;->D()Lcom/android/volley/Request$Priority;

    move-result-object p0

    aput-object p0, p1, v2

    const-string p0, "unknown Request priority: %s"

    invoke-static {p0, p1}, Lo/FragmentContainer;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_0
    const-string p0, "DELETE"

    return-object p0

    :cond_1
    const-string p0, "PUT"

    return-object p0

    :cond_2
    return-object v3

    :cond_3
    if-nez p1, :cond_4

    move-object v3, v5

    :cond_4
    return-object v3

    .line 44
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/volley/Request;->y()[B

    move-result-object p0
    :try_end_0
    .catch Lcom/android/volley/AuthFailureError; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_7

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    move-object v3, v5

    :cond_7
    :goto_0
    return-object v3

    :catch_0
    move-exception p0

    new-array p1, v4, [Ljava/lang/Object;

    .line 46
    invoke-virtual {p0}, Lcom/android/volley/AuthFailureError;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    const-string p0, "nf_cronet"

    const-string v0, "error parsing POST body: %s"

    invoke-static {p0, v0, p1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v5
.end method

.method public static e(Lcom/android/volley/Request$Priority;)I
    .locals 3

    .line 18
    sget-object v0, Lo/C$4;->d:[I

    invoke-virtual {p0}, Lcom/android/volley/Request$Priority;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const-string p0, "unknown Request priority: %s"

    .line 28
    invoke-static {p0, v0}, Lo/FragmentContainer;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    return v2

    :cond_1
    return v1
.end method
