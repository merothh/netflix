.class public final enum Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/android/imageloader/api/BlurProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Intensity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;

.field public static final enum c:Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;

.field public static final enum e:Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;

    new-instance v1, Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;

    const/4 v2, 0x0

    const-string v3, "MEDIUM"

    invoke-direct {v1, v3, v2}, Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;->c:Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;

    const/4 v2, 0x1

    const-string v3, "HIGH"

    invoke-direct {v1, v3, v2}, Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;->e:Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;->a:[Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;
    .locals 1

    const-class v0, Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;

    return-object p0
.end method

.method public static values()[Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;
    .locals 1

    sget-object v0, Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;->a:[Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;

    invoke-virtual {v0}, [Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;

    return-object v0
.end method
