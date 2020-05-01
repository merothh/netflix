.class public final enum Lcom/android/volley/Request$ResourceLocationType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResourceLocationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/volley/Request$ResourceLocationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/volley/Request$ResourceLocationType;

.field private static final synthetic c:[Lcom/android/volley/Request$ResourceLocationType;

.field public static final enum d:Lcom/android/volley/Request$ResourceLocationType;

.field public static final enum e:Lcom/android/volley/Request$ResourceLocationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 54
    new-instance v0, Lcom/android/volley/Request$ResourceLocationType;

    const/4 v1, 0x0

    const-string v2, "UNSET"

    invoke-direct {v0, v2, v1}, Lcom/android/volley/Request$ResourceLocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/volley/Request$ResourceLocationType;->d:Lcom/android/volley/Request$ResourceLocationType;

    .line 55
    new-instance v0, Lcom/android/volley/Request$ResourceLocationType;

    const/4 v2, 0x1

    const-string v3, "CACHE"

    invoke-direct {v0, v3, v2}, Lcom/android/volley/Request$ResourceLocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/volley/Request$ResourceLocationType;->b:Lcom/android/volley/Request$ResourceLocationType;

    .line 56
    new-instance v0, Lcom/android/volley/Request$ResourceLocationType;

    const/4 v3, 0x2

    const-string v4, "NETWORK"

    invoke-direct {v0, v4, v3}, Lcom/android/volley/Request$ResourceLocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/volley/Request$ResourceLocationType;->e:Lcom/android/volley/Request$ResourceLocationType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/volley/Request$ResourceLocationType;

    .line 53
    sget-object v4, Lcom/android/volley/Request$ResourceLocationType;->d:Lcom/android/volley/Request$ResourceLocationType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/volley/Request$ResourceLocationType;->b:Lcom/android/volley/Request$ResourceLocationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/volley/Request$ResourceLocationType;->e:Lcom/android/volley/Request$ResourceLocationType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/volley/Request$ResourceLocationType;->c:[Lcom/android/volley/Request$ResourceLocationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/volley/Request$ResourceLocationType;
    .locals 1

    .line 53
    const-class v0, Lcom/android/volley/Request$ResourceLocationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/volley/Request$ResourceLocationType;

    return-object p0
.end method

.method public static values()[Lcom/android/volley/Request$ResourceLocationType;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/volley/Request$ResourceLocationType;->c:[Lcom/android/volley/Request$ResourceLocationType;

    invoke-virtual {v0}, [Lcom/android/volley/Request$ResourceLocationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/volley/Request$ResourceLocationType;

    return-object v0
.end method
