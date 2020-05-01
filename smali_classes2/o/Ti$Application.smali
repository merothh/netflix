.class public final Lo/Ti$Application;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "ContentPreviewPinDialog"

    .line 14
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/Ti$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/content/Context;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Lo/Ti;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vault"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    move-object v0, p0

    check-cast v0, Lo/Ti$Application;

    check-cast v0, Lo/MessagePdu;

    .line 19
    new-instance v0, Lo/Ti;

    invoke-direct {v0, p1}, Lo/Ti;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 21
    check-cast p2, Landroid/os/Parcelable;

    const-string v1, "PlayVerifierVault"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 23
    invoke-virtual {v0, p1}, Lo/Ti;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
