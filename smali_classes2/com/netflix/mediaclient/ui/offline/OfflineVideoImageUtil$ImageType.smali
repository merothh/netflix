.class public final enum Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

.field public static final enum b:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

.field public static final enum c:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

.field private static final synthetic d:[Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

.field public static final enum e:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    new-instance v1, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    const/4 v2, 0x0

    const-string v3, "VIDEO"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->a:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    const/4 v2, 0x1

    const-string v3, "STORY"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->e:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    const/4 v2, 0x2

    const-string v3, "TITLE"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->b:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    const/4 v2, 0x3

    const-string v3, "BILLBOARD"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->c:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->d:[Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->d:[Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    return-object v0
.end method
