.class public final enum Lcom/facebook/cache/common/CacheEventListener$EvictionReason;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/common/CacheEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EvictionReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/cache/common/CacheEventListener$EvictionReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

.field public static final enum b:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

.field public static final enum c:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

.field public static final enum d:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

.field public static final enum e:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 61
    new-instance v0, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    const/4 v1, 0x0

    const-string v2, "CACHE_FULL"

    invoke-direct {v0, v2, v1}, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;->d:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    .line 62
    new-instance v0, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    const/4 v2, 0x1

    const-string v3, "CONTENT_STALE"

    invoke-direct {v0, v3, v2}, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;->c:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    .line 63
    new-instance v0, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    const/4 v3, 0x2

    const-string v4, "USER_FORCED"

    invoke-direct {v0, v4, v3}, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;->b:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    .line 64
    new-instance v0, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    const/4 v4, 0x3

    const-string v5, "CACHE_MANAGER_TRIMMED"

    invoke-direct {v0, v5, v4}, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;->e:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    .line 60
    sget-object v5, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;->d:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    aput-object v5, v0, v1

    sget-object v1, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;->c:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;->b:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;->e:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;->a:[Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/cache/common/CacheEventListener$EvictionReason;
    .locals 1

    .line 60
    const-class v0, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    return-object p0
.end method

.method public static values()[Lcom/facebook/cache/common/CacheEventListener$EvictionReason;
    .locals 1

    .line 60
    sget-object v0, Lcom/facebook/cache/common/CacheEventListener$EvictionReason;->a:[Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    invoke-virtual {v0}, [Lcom/facebook/cache/common/CacheEventListener$EvictionReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    return-object v0
.end method
