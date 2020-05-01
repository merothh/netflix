.class public final synthetic Lo/DoubleDigitManager;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/netflix/android/imageloader/api/ImageDataSource;->values()[Lcom/netflix/android/imageloader/api/ImageDataSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/DoubleDigitManager;->a:[I

    sget-object v0, Lo/DoubleDigitManager;->a:[I

    sget-object v1, Lcom/netflix/android/imageloader/api/ImageDataSource;->b:Lcom/netflix/android/imageloader/api/ImageDataSource;

    invoke-virtual {v1}, Lcom/netflix/android/imageloader/api/ImageDataSource;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/DoubleDigitManager;->a:[I

    sget-object v1, Lcom/netflix/android/imageloader/api/ImageDataSource;->e:Lcom/netflix/android/imageloader/api/ImageDataSource;

    invoke-virtual {v1}, Lcom/netflix/android/imageloader/api/ImageDataSource;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lo/DoubleDigitManager;->a:[I

    sget-object v1, Lcom/netflix/android/imageloader/api/ImageDataSource;->a:Lcom/netflix/android/imageloader/api/ImageDataSource;

    invoke-virtual {v1}, Lcom/netflix/android/imageloader/api/ImageDataSource;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
