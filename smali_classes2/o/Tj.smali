.class public final Lo/Tj;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lo/Tj;

.field private static c:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lo/Tj;

    invoke-direct {v0}, Lo/Tj;-><init>()V

    sput-object v0, Lo/Tj;->a:Lo/Tj;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    .line 35
    sget-object v0, Lo/Tj;->c:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_0
    return v1

    .line 40
    :cond_1
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 74
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    check-cast v0, Landroid/content/Context;

    .line 43
    invoke-static {}, Lo/cS;->e()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "PersistentABConfig.getConfigValues()"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 75
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 76
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lo/fC;

    .line 45
    invoke-virtual {v5}, Lo/fC;->z_()I

    move-result v6

    if-lez v6, :cond_3

    .line 46
    invoke-virtual {v5, v0}, Lo/fC;->c(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lo/fC;->d(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_4
    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .line 78
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/fC;

    .line 49
    invoke-virtual {v3}, Lo/fC;->z_()I

    move-result v4

    if-le v4, v2, :cond_5

    .line 50
    invoke-virtual {v3}, Lo/fC;->z_()I

    move-result v2

    goto :goto_2

    :cond_6
    if-lez v2, :cond_7

    .line 55
    invoke-virtual {p0, v2}, Lo/Tj;->b(I)Z

    move-result v0

    return v0

    :cond_7
    return v1
.end method

.method public final b(I)Z
    .locals 3

    .line 66
    sget-object v0, Lo/Tj;->c:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lo/Tj;->c:Ljava/lang/Boolean;

    .line 69
    :cond_1
    sget-object p1, Lo/Tj;->c:Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_2
    return v1
.end method

.method public final c()Z
    .locals 1

    .line 25
    sget-object v0, Lo/gY;->a:Lo/gY$Activity;

    invoke-virtual {v0}, Lo/gY$Activity;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    invoke-virtual {p0}, Lo/Tj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
