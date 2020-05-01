.class public final enum Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

.field public static final enum b:Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

.field public static final enum c:Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

.field public static final enum d:Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

.field public static final enum e:Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

.field private static final synthetic i:[Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    new-instance v1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    const/4 v2, 0x0

    const-string v3, "HD"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;->c:Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    const/4 v2, 0x1

    const-string v3, "UHD"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;->d:Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    const/4 v2, 0x2

    const-string v3, "_5dot1"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;->a:Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    const/4 v2, 0x3

    const-string v3, "HDR10"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;->e:Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    const/4 v2, 0x4

    const-string v3, "DOLBY_VISION"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;->b:Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;->i:[Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;->i:[Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    return-object v0
.end method
