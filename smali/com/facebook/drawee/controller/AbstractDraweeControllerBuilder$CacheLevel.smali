.class public final enum Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CacheLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic b:[Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

.field public static final enum c:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

.field public static final enum d:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

.field public static final enum e:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 478
    new-instance v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    const/4 v1, 0x0

    const-string v2, "FULL_FETCH"

    invoke-direct {v0, v2, v1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;->d:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    .line 481
    new-instance v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    const/4 v2, 0x1

    const-string v3, "DISK_CACHE"

    invoke-direct {v0, v3, v2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;->e:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    .line 484
    new-instance v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    const/4 v3, 0x2

    const-string v4, "BITMAP_MEMORY_CACHE"

    invoke-direct {v0, v4, v3}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;->c:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    .line 476
    sget-object v4, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;->d:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    aput-object v4, v0, v1

    sget-object v1, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;->e:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;->c:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;->b:[Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 476
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;
    .locals 1

    .line 476
    const-class v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    return-object p0
.end method

.method public static values()[Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;
    .locals 1

    .line 476
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;->b:[Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    invoke-virtual {v0}, [Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    return-object v0
.end method
