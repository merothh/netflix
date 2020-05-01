.class public final enum Lcom/netflix/msl/MslConstants$EncryptionAlgo;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/msl/MslConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EncryptionAlgo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/msl/MslConstants$EncryptionAlgo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic d:[Lcom/netflix/msl/MslConstants$EncryptionAlgo;

.field public static final enum e:Lcom/netflix/msl/MslConstants$EncryptionAlgo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 73
    new-instance v0, Lcom/netflix/msl/MslConstants$EncryptionAlgo;

    const/4 v1, 0x0

    const-string v2, "AES"

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/MslConstants$EncryptionAlgo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/MslConstants$EncryptionAlgo;->e:Lcom/netflix/msl/MslConstants$EncryptionAlgo;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/msl/MslConstants$EncryptionAlgo;

    .line 71
    sget-object v2, Lcom/netflix/msl/MslConstants$EncryptionAlgo;->e:Lcom/netflix/msl/MslConstants$EncryptionAlgo;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/msl/MslConstants$EncryptionAlgo;->d:[Lcom/netflix/msl/MslConstants$EncryptionAlgo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$EncryptionAlgo;
    .locals 1

    .line 82
    const-class v0, Lcom/netflix/msl/MslConstants$EncryptionAlgo;

    invoke-static {v0, p0}, Lcom/netflix/msl/MslConstants$EncryptionAlgo;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/msl/MslConstants$EncryptionAlgo;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$EncryptionAlgo;
    .locals 1

    .line 71
    const-class v0, Lcom/netflix/msl/MslConstants$EncryptionAlgo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/msl/MslConstants$EncryptionAlgo;

    return-object p0
.end method

.method public static values()[Lcom/netflix/msl/MslConstants$EncryptionAlgo;
    .locals 1

    .line 71
    sget-object v0, Lcom/netflix/msl/MslConstants$EncryptionAlgo;->d:[Lcom/netflix/msl/MslConstants$EncryptionAlgo;

    invoke-virtual {v0}, [Lcom/netflix/msl/MslConstants$EncryptionAlgo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/MslConstants$EncryptionAlgo;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/netflix/msl/MslConstants$EncryptionAlgo;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
