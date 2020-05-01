.class public Lo/DurationMillisLong;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/TimeAnimator;
    .locals 3

    .line 43
    new-instance v0, Lo/TimeAnimator;

    .line 44
    invoke-static {}, Lo/ActivityManagerNative;->a()F

    move-result v1

    sget-object v2, Lo/StringDef;->b:Lo/StringDef;

    invoke-static {p0, v1, p1, v2}, Lo/DurationMillisLong;->c(Lcom/airbnb/lottie/parser/moshi/JsonReader;FLo/DESedeKeySpec;Lo/TestApi;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/TimeAnimator;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;Z)Lo/LayoutTransition;
    .locals 2

    .line 32
    new-instance v0, Lo/LayoutTransition;

    if-eqz p2, :cond_0

    .line 33
    invoke-static {}, Lo/ActivityManagerNative;->a()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Lo/IntDef;->d:Lo/IntDef;

    invoke-static {p0, p2, p1, v1}, Lo/DurationMillisLong;->c(Lcom/airbnb/lottie/parser/moshi/JsonReader;FLo/DESedeKeySpec;Lo/TestApi;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/LayoutTransition;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/PathKeyframes;
    .locals 2

    .line 38
    new-instance v0, Lo/PathKeyframes;

    sget-object v1, Lo/LongDef;->e:Lo/LongDef;

    invoke-static {p0, p1, v1}, Lo/DurationMillisLong;->e(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;Lo/TestApi;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/PathKeyframes;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static c(Lcom/airbnb/lottie/parser/moshi/JsonReader;FLo/DESedeKeySpec;Lo/TestApi;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "F",
            "Lo/DESedeKeySpec;",
            "Lo/TestApi<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lo/ActivityView<",
            "TT;>;>;"
        }
    .end annotation

    .line 87
    invoke-static {p0, p2, p1, p3}, Lo/NavigationRes;->c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;FLo/TestApi;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/PropertyValuesHolder;
    .locals 2

    .line 49
    new-instance v0, Lo/PropertyValuesHolder;

    sget-object v1, Lo/SuppressLint;->d:Lo/SuppressLint;

    invoke-static {p0, p1, v1}, Lo/DurationMillisLong;->e(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;Lo/TestApi;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/PropertyValuesHolder;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static d(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/RevealAnimator;
    .locals 3

    .line 54
    new-instance v0, Lo/RevealAnimator;

    .line 55
    invoke-static {}, Lo/ActivityManagerNative;->a()F

    move-result v1

    sget-object v2, Lo/StringRes;->c:Lo/StringRes;

    invoke-static {p0, v1, p1, v2}, Lo/DurationMillisLong;->c(Lcom/airbnb/lottie/parser/moshi/JsonReader;FLo/DESedeKeySpec;Lo/TestApi;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/RevealAnimator;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static e(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;Lo/TestApi;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lo/DESedeKeySpec;",
            "Lo/TestApi<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lo/ActivityView<",
            "TT;>;>;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 79
    invoke-static {p0, p1, v0, p2}, Lo/NavigationRes;->c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;FLo/TestApi;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static e(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;I)Lo/Keyframes;
    .locals 2

    .line 70
    new-instance v0, Lo/Keyframes;

    new-instance v1, Lo/MainThread;

    invoke-direct {v1, p2}, Lo/MainThread;-><init>(I)V

    .line 71
    invoke-static {p0, p1, v1}, Lo/DurationMillisLong;->e(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;Lo/TestApi;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/Keyframes;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static e(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/LayoutTransition;
    .locals 1

    const/4 v0, 0x1

    .line 27
    invoke-static {p0, p1, v0}, Lo/DurationMillisLong;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;Z)Lo/LayoutTransition;

    move-result-object p0

    return-object p0
.end method

.method static g(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/PointFEvaluator;
    .locals 2

    .line 65
    new-instance v0, Lo/PointFEvaluator;

    sget-object v1, Lo/FontRes;->c:Lo/FontRes;

    invoke-static {p0, p1, v1}, Lo/DurationMillisLong;->e(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;Lo/TestApi;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/PointFEvaluator;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static j(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/RectEvaluator;
    .locals 2

    .line 60
    new-instance v0, Lo/RectEvaluator;

    sget-object v1, Lo/IntRange;->b:Lo/IntRange;

    invoke-static {p0, p1, v1}, Lo/DurationMillisLong;->e(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;Lo/TestApi;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/RectEvaluator;-><init>(Ljava/util/List;)V

    return-object v0
.end method
