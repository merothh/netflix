.class Lo/HalfFloat;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static d:Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ty"

    const-string v1, "d"

    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;->c([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;

    move-result-object v0

    sput-object v0, Lo/HalfFloat;->d:Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;

    return-void
.end method

.method static e(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/AnyRes;
    .locals 7

    .line 26
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->c()V

    const/4 v0, 0x2

    const/4 v1, 0x2

    .line 32
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 33
    sget-object v2, Lo/HalfFloat;->d:Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;)I

    move-result v2

    if-eqz v2, :cond_1

    if-eq v2, v3, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->f()V

    .line 42
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->n()I

    move-result v1

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->g()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v4

    :goto_1
    if-nez v2, :cond_3

    return-object v4

    :cond_3
    const/4 v5, -0x1

    .line 51
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v0, "tr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    goto/16 :goto_3

    :sswitch_1
    const-string v0, "tm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    goto/16 :goto_3

    :sswitch_2
    const-string v0, "st"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto/16 :goto_3

    :sswitch_3
    const-string v0, "sr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xa

    goto :goto_3

    :sswitch_4
    const-string v0, "sh"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    goto :goto_3

    :sswitch_5
    const-string v0, "rp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xc

    goto :goto_3

    :sswitch_6
    const-string v0, "rc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    goto :goto_3

    :sswitch_7
    const-string v0, "mm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xb

    goto :goto_3

    :sswitch_8
    const-string v3, "gs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :sswitch_9
    const-string v0, "gr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :sswitch_a
    const-string v0, "gf"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_3

    :sswitch_b
    const-string v0, "fl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_3

    :sswitch_c
    const-string v0, "el"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, -0x1

    :goto_3
    packed-switch v0, :pswitch_data_0

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown shape type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/ActivityOptions;->d(Ljava/lang/String;)V

    goto :goto_4

    .line 92
    :pswitch_0
    invoke-static {p0, p1}, Lo/StyleRes;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/BinderThread;

    move-result-object v4

    goto :goto_4

    .line 86
    :pswitch_1
    invoke-static {p0}, Lo/RawRes;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/model/content/MergePaths;

    move-result-object v4

    const-string v0, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    .line 87
    invoke-virtual {p1, v0}, Lo/DESedeKeySpec;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 83
    :pswitch_2
    invoke-static {p0, p1}, Lo/RequiresPermission;->c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lcom/airbnb/lottie/model/content/PolystarShape;

    move-result-object v4

    goto :goto_4

    .line 80
    :pswitch_3
    invoke-static {p0, p1}, Lo/SystemApi;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lcom/airbnb/lottie/model/content/ShapeTrimPath;

    move-result-object v4

    goto :goto_4

    .line 77
    :pswitch_4
    invoke-static {p0, p1}, Lo/SuppressAutoDoc;->d(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/AttrRes;

    move-result-object v4

    goto :goto_4

    .line 74
    :pswitch_5
    invoke-static {p0, p1, v1}, Lo/FloatRange;->e(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;I)Lo/TypeEvaluator;

    move-result-object v4

    goto :goto_4

    .line 71
    :pswitch_6
    invoke-static {p0, p1}, Lo/TransitionRes;->c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/CallSuper;

    move-result-object v4

    goto :goto_4

    .line 68
    :pswitch_7
    invoke-static {p0, p1}, Lo/ElapsedRealtimeLong;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/TypeConverter;

    move-result-object v4

    goto :goto_4

    .line 65
    :pswitch_8
    invoke-static {p0, p1}, Lo/MenuRes;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/ArrayRes;

    move-result-object v4

    goto :goto_4

    .line 62
    :pswitch_9
    invoke-static {p0, p1}, Lo/StyleableRes;->e(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/BroadcastBehavior;

    move-result-object v4

    goto :goto_4

    .line 59
    :pswitch_a
    invoke-static {p0, p1}, Lo/InterpolatorRes;->e(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/AnyThread;

    move-result-object v4

    goto :goto_4

    .line 56
    :pswitch_b
    invoke-static {p0, p1}, Lo/SystemService;->c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lcom/airbnb/lottie/model/content/ShapeStroke;

    move-result-object v4

    goto :goto_4

    .line 53
    :pswitch_c
    invoke-static {p0, p1}, Lo/TargetApi;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/BytesLong;

    move-result-object v4

    .line 98
    :goto_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 99
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()V

    goto :goto_4

    .line 101
    :cond_5
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b()V

    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0xca7 -> :sswitch_c
        0xcc6 -> :sswitch_b
        0xcdf -> :sswitch_a
        0xceb -> :sswitch_9
        0xcec -> :sswitch_8
        0xda0 -> :sswitch_7
        0xe31 -> :sswitch_6
        0xe3e -> :sswitch_5
        0xe55 -> :sswitch_4
        0xe5f -> :sswitch_3
        0xe61 -> :sswitch_2
        0xe79 -> :sswitch_1
        0xe7e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
