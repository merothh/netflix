.class final enum Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;
.super Ljava/lang/Enum;
.source "CachedModelProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

.field public static final enum FROM_CACHE_ONLY:Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

.field public static final enum FROM_CACHE_OR_NETWORK:Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

.field public static final enum FROM_NETWORK:Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

    const-string/jumbo v1, "FROM_CACHE_ONLY"

    invoke-direct {v0, v1, v2}, Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;->FROM_CACHE_ONLY:Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

    const-string/jumbo v1, "FROM_CACHE_OR_NETWORK"

    invoke-direct {v0, v1, v3}, Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;->FROM_CACHE_OR_NETWORK:Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

    new-instance v0, Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

    const-string/jumbo v1, "FROM_NETWORK"

    invoke-direct {v0, v1, v4}, Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;->FROM_NETWORK:Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

    sget-object v1, Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;->FROM_CACHE_ONLY:Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;->FROM_CACHE_OR_NETWORK:Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;->FROM_NETWORK:Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;->$VALUES:[Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;
    .locals 1

    const-class v0, Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

    return-object v0
.end method

.method public static values()[Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;
    .locals 1

    sget-object v0, Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;->$VALUES:[Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

    invoke-virtual {v0}, [Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/falkor/CachedModelProxy$CmpTaskMode;

    return-object v0
.end method
