.class public final enum Lcom/netflix/android/imageloader/api/ImageDataSource;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/android/imageloader/api/ImageDataSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/android/imageloader/api/ImageDataSource;

.field public static final enum b:Lcom/netflix/android/imageloader/api/ImageDataSource;

.field private static final synthetic d:[Lcom/netflix/android/imageloader/api/ImageDataSource;

.field public static final enum e:Lcom/netflix/android/imageloader/api/ImageDataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/android/imageloader/api/ImageDataSource;

    new-instance v1, Lcom/netflix/android/imageloader/api/ImageDataSource;

    const/4 v2, 0x0

    const-string v3, "NETWORK"

    invoke-direct {v1, v3, v2}, Lcom/netflix/android/imageloader/api/ImageDataSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/android/imageloader/api/ImageDataSource;->b:Lcom/netflix/android/imageloader/api/ImageDataSource;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/android/imageloader/api/ImageDataSource;

    const/4 v2, 0x1

    const-string v3, "DISK_CACHE"

    invoke-direct {v1, v3, v2}, Lcom/netflix/android/imageloader/api/ImageDataSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/android/imageloader/api/ImageDataSource;->e:Lcom/netflix/android/imageloader/api/ImageDataSource;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/android/imageloader/api/ImageDataSource;

    const/4 v2, 0x2

    const-string v3, "MEMORY_CACHE"

    invoke-direct {v1, v3, v2}, Lcom/netflix/android/imageloader/api/ImageDataSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/android/imageloader/api/ImageDataSource;->a:Lcom/netflix/android/imageloader/api/ImageDataSource;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/android/imageloader/api/ImageDataSource;->d:[Lcom/netflix/android/imageloader/api/ImageDataSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ImageDataSource;
    .locals 1

    const-class v0, Lcom/netflix/android/imageloader/api/ImageDataSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/android/imageloader/api/ImageDataSource;

    return-object p0
.end method

.method public static values()[Lcom/netflix/android/imageloader/api/ImageDataSource;
    .locals 1

    sget-object v0, Lcom/netflix/android/imageloader/api/ImageDataSource;->d:[Lcom/netflix/android/imageloader/api/ImageDataSource;

    invoke-virtual {v0}, [Lcom/netflix/android/imageloader/api/ImageDataSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/android/imageloader/api/ImageDataSource;

    return-object v0
.end method
