.class Lo/StyleRes;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static c:Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "nm"

    const-string v1, "c"

    const-string v2, "o"

    const-string v3, "tr"

    const-string v4, "hd"

    .line 14
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;->c([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;

    move-result-object v0

    sput-object v0, Lo/StyleRes;->c:Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;

    return-void
.end method

.method static b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/BinderThread;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    const/4 v7, 0x0

    .line 33
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 34
    sget-object v1, Lo/StyleRes;->c:Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->h()Z

    move-result v7

    goto :goto_0

    .line 45
    :cond_1
    invoke-static {p0, p1}, Lo/ElapsedRealtimeLong;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/TypeConverter;

    move-result-object v6

    goto :goto_0

    .line 42
    :cond_2
    invoke-static {p0, p1, v0}, Lo/DurationMillisLong;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;Z)Lo/LayoutTransition;

    move-result-object v5

    goto :goto_0

    .line 39
    :cond_3
    invoke-static {p0, p1, v0}, Lo/DurationMillisLong;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;Z)Lo/LayoutTransition;

    move-result-object v4

    goto :goto_0

    .line 36
    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->g()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 55
    :cond_5
    new-instance p0, Lo/BinderThread;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lo/BinderThread;-><init>(Ljava/lang/String;Lo/LayoutTransition;Lo/LayoutTransition;Lo/TypeConverter;Z)V

    return-object p0
.end method
