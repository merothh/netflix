.class public Lo/amf;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:[Lo/amJ;

.field private static final b:Lo/amd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    .line 26
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/amd;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    .line 34
    :cond_0
    new-instance v0, Lo/amd;

    invoke-direct {v0}, Lo/amd;-><init>()V

    :goto_1
    sput-object v0, Lo/amf;->b:Lo/amd;

    const/4 v0, 0x0

    new-array v0, v0, [Lo/amJ;

    .line 39
    sput-object v0, Lo/amf;->a:[Lo/amJ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lkotlin/jvm/internal/MutablePropertyReference2;)Lo/amN;
    .locals 1

    .line 110
    sget-object v0, Lo/amf;->b:Lo/amd;

    invoke-virtual {v0, p0}, Lo/amd;->mutableProperty2(Lkotlin/jvm/internal/MutablePropertyReference2;)Lo/amN;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lo/amP;
    .locals 1

    .line 102
    sget-object v0, Lo/amf;->b:Lo/amd;

    invoke-virtual {v0, p0}, Lo/amd;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lo/amP;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;
    .locals 1

    .line 98
    sget-object v0, Lo/amf;->b:Lo/amd;

    invoke-virtual {v0, p0}, Lo/amd;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lkotlin/jvm/internal/PropertyReference0;)Lo/amR;
    .locals 1

    .line 90
    sget-object v0, Lo/amf;->b:Lo/amd;

    invoke-virtual {v0, p0}, Lo/amd;->property0(Lkotlin/jvm/internal/PropertyReference0;)Lo/amR;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lkotlin/jvm/internal/MutablePropertyReference0;)Lo/amQ;
    .locals 1

    .line 94
    sget-object v0, Lo/amf;->b:Lo/amd;

    invoke-virtual {v0, p0}, Lo/amd;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lo/amQ;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lo/amg;)Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Lo/amf;->b:Lo/amd;

    invoke-virtual {v0, p0}, Lo/amd;->b(Lo/amg;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lkotlin/jvm/internal/PropertyReference2;)Lo/amV;
    .locals 1

    .line 106
    sget-object v0, Lo/amf;->b:Lo/amd;

    invoke-virtual {v0, p0}, Lo/amd;->property2(Lkotlin/jvm/internal/PropertyReference2;)Lo/amV;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;
    .locals 1

    .line 73
    sget-object v0, Lo/amf;->b:Lo/amd;

    invoke-virtual {v0, p0}, Lo/amd;->renderLambdaToString(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Class;)Lo/amJ;
    .locals 1

    .line 54
    sget-object v0, Lo/amf;->b:Lo/amd;

    invoke-virtual {v0, p0}, Lo/amd;->getOrCreateKotlinClass(Ljava/lang/Class;)Lo/amJ;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lkotlin/jvm/internal/FunctionReference;)Lo/amM;
    .locals 1

    .line 84
    sget-object v0, Lo/amf;->b:Lo/amd;

    invoke-virtual {v0, p0}, Lo/amd;->function(Lkotlin/jvm/internal/FunctionReference;)Lo/amM;

    move-result-object p0

    return-object p0
.end method
