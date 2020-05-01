.class public final enum Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestedBy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

.field public static final enum b:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

.field public static final enum c:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

.field public static final enum d:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

.field public static final enum e:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

.field private static final synthetic f:[Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

.field public static final i:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy$ActionBar;


# instance fields
.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    new-instance v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    const/4 v2, 0x0

    const-string v3, "MDX"

    const-string v4, "mdx"

    .line 66
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->c:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    const/4 v2, 0x1

    const-string v3, "PLAYER"

    const-string v4, "player"

    .line 67
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->e:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    const/4 v2, 0x2

    const-string v3, "PLAY_LAUNCHER"

    const-string v4, "launcher"

    .line 68
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->b:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    const/4 v2, 0x3

    const-string v3, "OFFLINE_DOWNLOAD"

    const-string v4, "offline_download"

    .line 69
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->d:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    const/4 v2, 0x4

    const-string v3, "UNKNOWN"

    const-string v4, ""

    .line 70
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->a:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->f:[Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    new-instance v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->i:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy$ActionBar;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->h:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->f:[Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->h:Ljava/lang/String;

    return-object v0
.end method
