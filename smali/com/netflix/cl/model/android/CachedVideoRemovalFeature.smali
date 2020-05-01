.class public final enum Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;

.field public static final enum downloadedForYou:Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;

    const/4 v1, 0x0

    const-string v2, "downloadedForYou"

    invoke-direct {v0, v2, v1}, Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;->downloadedForYou:Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;

    .line 6
    sget-object v2, Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;->downloadedForYou:Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;->$VALUES:[Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;
    .locals 1

    .line 6
    const-class v0, Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;

    return-object p0
.end method

.method public static values()[Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;
    .locals 1

    .line 6
    sget-object v0, Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;->$VALUES:[Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;

    invoke-virtual {v0}, [Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;

    return-object v0
.end method
