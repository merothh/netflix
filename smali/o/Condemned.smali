.class public Lo/Condemned;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static e:Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "k"

    const-string v1, "x"

    const-string v2, "y"

    .line 21
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;->c([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;

    move-result-object v0

    sput-object v0, Lo/Condemned;->e:Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;

    return-void
.end method

.method static b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/AnimRes;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Lo/DESedeKeySpec;",
            ")",
            "Lo/AnimRes<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->c()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move-object v4, v3

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->i()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v5

    sget-object v6, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->b:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-eq v5, v6, :cond_5

    .line 59
    sget-object v5, Lo/Condemned;->e:Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;

    invoke-virtual {p0, v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;)I

    move-result v5

    if-eqz v5, :cond_4

    if-eq v5, v0, :cond_2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->f()V

    .line 81
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->i()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v5

    sget-object v6, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->i:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v5, v6, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()V

    goto :goto_1

    .line 76
    :cond_1
    invoke-static {p0, p1}, Lo/DurationMillisLong;->e(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/LayoutTransition;

    move-result-object v4

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->i()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v5

    sget-object v6, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->i:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v5, v6, :cond_3

    .line 66
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()V

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 68
    :cond_3
    invoke-static {p0, p1}, Lo/DurationMillisLong;->e(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/LayoutTransition;

    move-result-object v3

    goto :goto_0

    .line 61
    :cond_4
    invoke-static {p0, p1}, Lo/Condemned;->d(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/ObjectAnimator;

    move-result-object v1

    goto :goto_0

    .line 84
    :cond_5
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b()V

    if-eqz v2, :cond_6

    const-string p0, "Lottie doesn\'t support expressions."

    .line 87
    invoke-virtual {p1, p0}, Lo/DESedeKeySpec;->a(Ljava/lang/String;)V

    :cond_6
    if-eqz v1, :cond_7

    return-object v1

    .line 93
    :cond_7
    new-instance p0, Lo/TimeInterpolator;

    invoke-direct {p0, v3, v4}, Lo/TimeInterpolator;-><init>(Lo/LayoutTransition;Lo/LayoutTransition;)V

    return-object p0
.end method

.method public static d(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/ObjectAnimator;
    .locals 3

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->i()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->d:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v1, v2, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->e()V

    .line 34
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-static {p0, p1}, Lo/RequiresFeature;->e(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/GrantCredentialsPermissionActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a()V

    .line 38
    invoke-static {v0}, Lo/NavigationRes;->e(Ljava/util/List;)V

    goto :goto_1

    .line 40
    :cond_1
    new-instance p1, Lo/ActivityView;

    invoke-static {}, Lo/ActivityManagerNative;->a()F

    move-result v1

    invoke-static {p0, v1}, Lo/LayoutRes;->d(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object p0

    invoke-direct {p1, p0}, Lo/ActivityView;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :goto_1
    new-instance p0, Lo/ObjectAnimator;

    invoke-direct {p0, v0}, Lo/ObjectAnimator;-><init>(Ljava/util/List;)V

    return-object p0
.end method
