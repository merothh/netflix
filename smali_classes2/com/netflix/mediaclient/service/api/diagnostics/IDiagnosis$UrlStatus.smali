.class public final enum Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UrlStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

.field private static final synthetic c:[Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

.field public static final enum d:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

.field public static final enum e:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    const/4 v1, 0x0

    const-string v2, "NOT_TESTED"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;->b:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    const/4 v2, 0x1

    const-string v3, "TEST_ONGOING"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;->e:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    const/4 v3, 0x2

    const-string v4, "COMPLETED"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;->d:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    .line 14
    sget-object v4, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;->b:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;->e:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;->d:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;->c:[Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;
    .locals 1

    .line 14
    const-class v0, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;
    .locals 1

    .line 14
    sget-object v0, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;->c:[Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    return-object v0
.end method
