.class public final Lo/GpsBatteryStats;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile a:Ljava/lang/Object;

.field private static volatile b:Ljava/lang/Object;

.field public static final d:Lo/GpsBatteryStats;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lo/GpsBatteryStats;

    invoke-direct {v0}, Lo/GpsBatteryStats;-><init>()V

    sput-object v0, Lo/GpsBatteryStats;->d:Lo/GpsBatteryStats;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;)Ljava/lang/Object;
    .locals 5

    const-string v0, "com.netflix.binder.generated.BinderSingletonComponent"

    .line 48
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 49
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "d"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 p1, 0x0

    .line 50
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "method.invoke(null, context)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final d(Landroid/content/Context;)Z
    .locals 2

    .line 34
    sget-object v0, Lo/GpsBatteryStats;->b:Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 39
    :cond_0
    sget-object v0, Lo/GpsBatteryStats;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final c(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Lo/GpsBatteryStats;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    sget-object v0, Lo/GpsBatteryStats;->d:Lo/GpsBatteryStats;

    invoke-direct {v0, p1}, Lo/GpsBatteryStats;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lo/GpsBatteryStats;->d:Lo/GpsBatteryStats;

    invoke-direct {v0, p1}, Lo/GpsBatteryStats;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lo/GpsBatteryStats;->b:Ljava/lang/Object;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lo/GpsBatteryStats;->a:Ljava/lang/Object;

    .line 28
    :cond_0
    sget-object p1, Lo/akj;->a:Lo/akj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 30
    :cond_1
    :goto_0
    sget-object p1, Lo/GpsBatteryStats;->b:Ljava/lang/Object;

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Any"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
