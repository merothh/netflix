.class public final Lo/gB$Application;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/gB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "FP_NfRepoInDPRepo"

    .line 19
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lo/gB$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    const-string v0, "enable_nf_repo_in_dp_repo"

    .line 24
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    .line 23
    check-cast v0, Lo/gB;

    .line 25
    invoke-virtual {v0}, Lo/gB;->c()Z

    move-result v0

    return v0
.end method
