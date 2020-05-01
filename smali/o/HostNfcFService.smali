.class public final synthetic Lo/HostNfcFService;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic d:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->values()[Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/HostNfcFService;->d:[I

    sget-object v0, Lo/HostNfcFService;->d:[I

    sget-object v1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/HostNfcFService;->d:[I

    sget-object v1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->a:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
