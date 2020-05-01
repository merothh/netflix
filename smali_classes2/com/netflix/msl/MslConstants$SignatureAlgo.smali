.class public final enum Lcom/netflix/msl/MslConstants$SignatureAlgo;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/msl/MslConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignatureAlgo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/msl/MslConstants$SignatureAlgo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/msl/MslConstants$SignatureAlgo;

.field public static final enum c:Lcom/netflix/msl/MslConstants$SignatureAlgo;

.field public static final enum d:Lcom/netflix/msl/MslConstants$SignatureAlgo;

.field private static final synthetic e:[Lcom/netflix/msl/MslConstants$SignatureAlgo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 151
    new-instance v0, Lcom/netflix/msl/MslConstants$SignatureAlgo;

    const/4 v1, 0x0

    const-string v2, "HmacSHA256"

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/MslConstants$SignatureAlgo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/MslConstants$SignatureAlgo;->a:Lcom/netflix/msl/MslConstants$SignatureAlgo;

    .line 153
    new-instance v0, Lcom/netflix/msl/MslConstants$SignatureAlgo;

    const/4 v2, 0x1

    const-string v3, "SHA256withRSA"

    invoke-direct {v0, v3, v2}, Lcom/netflix/msl/MslConstants$SignatureAlgo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/MslConstants$SignatureAlgo;->d:Lcom/netflix/msl/MslConstants$SignatureAlgo;

    .line 155
    new-instance v0, Lcom/netflix/msl/MslConstants$SignatureAlgo;

    const/4 v3, 0x2

    const-string v4, "AESCmac"

    invoke-direct {v0, v4, v3}, Lcom/netflix/msl/MslConstants$SignatureAlgo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/MslConstants$SignatureAlgo;->c:Lcom/netflix/msl/MslConstants$SignatureAlgo;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/msl/MslConstants$SignatureAlgo;

    .line 149
    sget-object v4, Lcom/netflix/msl/MslConstants$SignatureAlgo;->a:Lcom/netflix/msl/MslConstants$SignatureAlgo;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/msl/MslConstants$SignatureAlgo;->d:Lcom/netflix/msl/MslConstants$SignatureAlgo;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/msl/MslConstants$SignatureAlgo;->c:Lcom/netflix/msl/MslConstants$SignatureAlgo;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/msl/MslConstants$SignatureAlgo;->e:[Lcom/netflix/msl/MslConstants$SignatureAlgo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$SignatureAlgo;
    .locals 1

    .line 164
    const-class v0, Lcom/netflix/msl/MslConstants$SignatureAlgo;

    invoke-static {v0, p0}, Lcom/netflix/msl/MslConstants$SignatureAlgo;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/msl/MslConstants$SignatureAlgo;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$SignatureAlgo;
    .locals 1

    .line 149
    const-class v0, Lcom/netflix/msl/MslConstants$SignatureAlgo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/msl/MslConstants$SignatureAlgo;

    return-object p0
.end method

.method public static values()[Lcom/netflix/msl/MslConstants$SignatureAlgo;
    .locals 1

    .line 149
    sget-object v0, Lcom/netflix/msl/MslConstants$SignatureAlgo;->e:[Lcom/netflix/msl/MslConstants$SignatureAlgo;

    invoke-virtual {v0}, [Lcom/netflix/msl/MslConstants$SignatureAlgo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/MslConstants$SignatureAlgo;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/netflix/msl/MslConstants$SignatureAlgo;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
