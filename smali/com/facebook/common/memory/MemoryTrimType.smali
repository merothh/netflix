.class public final enum Lcom/facebook/common/memory/MemoryTrimType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/common/memory/MemoryTrimType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/common/memory/MemoryTrimType;

.field public static final enum b:Lcom/facebook/common/memory/MemoryTrimType;

.field public static final enum c:Lcom/facebook/common/memory/MemoryTrimType;

.field public static final enum d:Lcom/facebook/common/memory/MemoryTrimType;

.field public static final enum e:Lcom/facebook/common/memory/MemoryTrimType;

.field private static final synthetic i:[Lcom/facebook/common/memory/MemoryTrimType;


# instance fields
.field private f:D


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 20
    new-instance v0, Lcom/facebook/common/memory/MemoryTrimType;

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const/4 v3, 0x0

    const-string v4, "OnCloseToDalvikHeapLimit"

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/facebook/common/memory/MemoryTrimType;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/facebook/common/memory/MemoryTrimType;->e:Lcom/facebook/common/memory/MemoryTrimType;

    .line 23
    new-instance v0, Lcom/facebook/common/memory/MemoryTrimType;

    const/4 v4, 0x1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-string v7, "OnSystemMemoryCriticallyLowWhileAppInForeground"

    invoke-direct {v0, v7, v4, v5, v6}, Lcom/facebook/common/memory/MemoryTrimType;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/facebook/common/memory/MemoryTrimType;->a:Lcom/facebook/common/memory/MemoryTrimType;

    .line 26
    new-instance v0, Lcom/facebook/common/memory/MemoryTrimType;

    const/4 v7, 0x2

    const-string v8, "OnSystemLowMemoryWhileAppInForeground"

    invoke-direct {v0, v8, v7, v1, v2}, Lcom/facebook/common/memory/MemoryTrimType;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/facebook/common/memory/MemoryTrimType;->d:Lcom/facebook/common/memory/MemoryTrimType;

    .line 29
    new-instance v0, Lcom/facebook/common/memory/MemoryTrimType;

    const/4 v1, 0x3

    const-string v2, "OnSystemLowMemoryWhileAppInBackground"

    invoke-direct {v0, v2, v1, v5, v6}, Lcom/facebook/common/memory/MemoryTrimType;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/facebook/common/memory/MemoryTrimType;->c:Lcom/facebook/common/memory/MemoryTrimType;

    .line 32
    new-instance v0, Lcom/facebook/common/memory/MemoryTrimType;

    const/4 v2, 0x4

    const-string v8, "OnAppBackgrounded"

    invoke-direct {v0, v8, v2, v5, v6}, Lcom/facebook/common/memory/MemoryTrimType;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/facebook/common/memory/MemoryTrimType;->b:Lcom/facebook/common/memory/MemoryTrimType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/common/memory/MemoryTrimType;

    .line 17
    sget-object v5, Lcom/facebook/common/memory/MemoryTrimType;->e:Lcom/facebook/common/memory/MemoryTrimType;

    aput-object v5, v0, v3

    sget-object v3, Lcom/facebook/common/memory/MemoryTrimType;->a:Lcom/facebook/common/memory/MemoryTrimType;

    aput-object v3, v0, v4

    sget-object v3, Lcom/facebook/common/memory/MemoryTrimType;->d:Lcom/facebook/common/memory/MemoryTrimType;

    aput-object v3, v0, v7

    sget-object v3, Lcom/facebook/common/memory/MemoryTrimType;->c:Lcom/facebook/common/memory/MemoryTrimType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/facebook/common/memory/MemoryTrimType;->b:Lcom/facebook/common/memory/MemoryTrimType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/common/memory/MemoryTrimType;->i:[Lcom/facebook/common/memory/MemoryTrimType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-wide p3, p0, Lcom/facebook/common/memory/MemoryTrimType;->f:D

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/common/memory/MemoryTrimType;
    .locals 1

    .line 17
    const-class v0, Lcom/facebook/common/memory/MemoryTrimType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/common/memory/MemoryTrimType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/common/memory/MemoryTrimType;
    .locals 1

    .line 17
    sget-object v0, Lcom/facebook/common/memory/MemoryTrimType;->i:[Lcom/facebook/common/memory/MemoryTrimType;

    invoke-virtual {v0}, [Lcom/facebook/common/memory/MemoryTrimType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/common/memory/MemoryTrimType;

    return-object v0
.end method


# virtual methods
.method public e()D
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/facebook/common/memory/MemoryTrimType;->f:D

    return-wide v0
.end method
