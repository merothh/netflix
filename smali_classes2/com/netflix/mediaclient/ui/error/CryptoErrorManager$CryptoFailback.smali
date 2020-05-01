.class public final enum Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CryptoFailback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

.field public static final enum b:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

.field public static final enum c:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

.field private static final synthetic e:[Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    new-instance v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    const/4 v1, 0x0

    const-string v2, "widevineL3"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;->b:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    .line 36
    new-instance v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    const/4 v2, 0x1

    const-string v3, "widevineL3Failed"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;->c:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    .line 37
    new-instance v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    const/4 v3, 0x2

    const-string v4, "uknown"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;->a:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    .line 34
    sget-object v4, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;->b:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;->c:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;->a:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;->e:[Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;
    .locals 1

    .line 34
    const-class v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;
    .locals 1

    .line 34
    sget-object v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;->e:[Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;

    return-object v0
.end method
