.class public final Lo/CertificatesEntryRef;
.super Lo/KeymasterIntArgument;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CertificatesEntryRef$TaskDescription;
    }
.end annotation


# static fields
.field public static final b:Lo/CertificatesEntryRef$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/CertificatesEntryRef$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/CertificatesEntryRef$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/CertificatesEntryRef;->b:Lo/CertificatesEntryRef$TaskDescription;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;ZZ)V
    .locals 0

    .line 16
    invoke-direct/range {p0 .. p5}, Lo/KeymasterIntArgument;-><init>(IILjava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public e()Z
    .locals 1

    .line 35
    invoke-static {}, Lo/ir;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const-string v0, "partnerFeed"

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "FetchPartnerFeedTask"

    return-object v0
.end method

.method public k()Lo/adt$Activity;
    .locals 3

    .line 28
    new-instance v0, Lo/adt$Activity;

    const-string v1, "partnerFeedName"

    const-string v2, "Samsung_Daily"

    invoke-direct {v0, v1, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
