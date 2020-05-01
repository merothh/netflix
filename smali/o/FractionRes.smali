.class public Lo/FractionRes;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;

.field private static d:Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "a"

    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;->c([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;

    move-result-object v0

    sput-object v0, Lo/FractionRes;->b:Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;

    const-string v0, "fc"

    const-string v1, "sc"

    const-string v2, "sw"

    const-string v3, "t"

    .line 14
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;->c([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;

    move-result-object v0

    sput-object v0, Lo/FractionRes;->d:Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;

    return-void
.end method

.method public static a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/ValueAnimator;
    .locals 3

    .line 27
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->c()V

    const/4 v0, 0x0

    move-object v1, v0

    .line 28
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    sget-object v2, Lo/FractionRes;->b:Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->f()V

    .line 35
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()V

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p0, p1}, Lo/FractionRes;->c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/ValueAnimator;

    move-result-object v1

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b()V

    if-nez v1, :cond_2

    .line 41
    new-instance p0, Lo/ValueAnimator;

    invoke-direct {p0, v0, v0, v0, v0}, Lo/ValueAnimator;-><init>(Lo/PointFEvaluator;Lo/PointFEvaluator;Lo/LayoutTransition;Lo/LayoutTransition;)V

    return-object p0

    :cond_2
    return-object v1
.end method

.method private static c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/ValueAnimator;
    .locals 6

    .line 53
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->c()V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    .line 54
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 55
    sget-object v4, Lo/FractionRes;->d:Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;

    invoke-virtual {p0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->f()V

    .line 70
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()V

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {p0, p1}, Lo/DurationMillisLong;->e(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/LayoutTransition;

    move-result-object v3

    goto :goto_0

    .line 63
    :cond_1
    invoke-static {p0, p1}, Lo/DurationMillisLong;->e(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/LayoutTransition;

    move-result-object v2

    goto :goto_0

    .line 60
    :cond_2
    invoke-static {p0, p1}, Lo/DurationMillisLong;->g(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/PointFEvaluator;

    move-result-object v1

    goto :goto_0

    .line 57
    :cond_3
    invoke-static {p0, p1}, Lo/DurationMillisLong;->g(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/PointFEvaluator;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b()V

    .line 75
    new-instance p0, Lo/ValueAnimator;

    invoke-direct {p0, v0, v1, v2, v3}, Lo/ValueAnimator;-><init>(Lo/PointFEvaluator;Lo/PointFEvaluator;Lo/LayoutTransition;Lo/LayoutTransition;)V

    return-object p0
.end method
