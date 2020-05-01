.class public final enum Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/android/imageloader/api/ShowImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

.field public static final enum c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

.field private static final synthetic d:[Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    new-instance v1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    const/4 v2, 0x0

    const-string v3, "LOW"

    invoke-direct {v1, v3, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->a:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    const/4 v2, 0x1

    const-string v3, "NORMAL"

    invoke-direct {v1, v3, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->d:[Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;
    .locals 1

    const-class v0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    return-object p0
.end method

.method public static values()[Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;
    .locals 1

    sget-object v0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->d:[Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {v0}, [Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    return-object v0
.end method
