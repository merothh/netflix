.class public final enum Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/partner/PartnerInstallType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InstallType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

.field public static final enum c:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

.field public static final enum d:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

.field public static final enum e:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

.field private static final synthetic h:[Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    const/4 v1, 0x0

    const-string v2, "PRELOAD"

    const-string v3, "preload"

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->c:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    const/4 v2, 0x1

    const-string v3, "POSTLOAD"

    const-string v4, "postload"

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->e:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    const/4 v3, 0x2

    const-string v4, "PAI_PRELOAD"

    const-string v5, "gpai"

    invoke-direct {v0, v4, v3, v5}, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->d:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    const/4 v4, 0x3

    const-string v5, "REGULAR"

    const-string v6, "regular"

    invoke-direct {v0, v5, v4, v6}, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->a:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    .line 15
    sget-object v5, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->c:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->e:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->d:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->a:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->h:[Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

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

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;
    .locals 1

    .line 15
    const-class v0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;
    .locals 1

    .line 15
    sget-object v0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->h:[Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    return-object v0
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->b:Ljava/lang/String;

    return-object v0
.end method
