.class public final synthetic Lo/TechListParcel;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic c:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;->values()[Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/TechListParcel;->c:[I

    sget-object v0, Lo/TechListParcel;->c:[I

    sget-object v1, Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;->c:Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;

    invoke-virtual {v1}, Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/TechListParcel;->c:[I

    sget-object v1, Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;->e:Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;

    invoke-virtual {v1}, Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
