.class public final Lcom/crittercism/internal/do;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sput-object v0, Lcom/crittercism/internal/do;->a:Ljava/util/Map;

    const-string/jumbo v1, "com.amazon.venezia"

    new-instance v2, Lcom/crittercism/internal/dn$a$a;

    invoke-direct {v2}, Lcom/crittercism/internal/dn$a$a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/crittercism/internal/do;->a:Ljava/util/Map;

    const-string/jumbo v1, "com.android.vending"

    new-instance v2, Lcom/crittercism/internal/dn$b$a;

    invoke-direct {v2}, Lcom/crittercism/internal/dn$b$a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/crittercism/internal/dm;
    .locals 1

    .prologue
    .line 18
    if-eqz p0, :cond_0

    sget-object v0, Lcom/crittercism/internal/do;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Lcom/crittercism/internal/do;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/dm;

    .line 21
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
