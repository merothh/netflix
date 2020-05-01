.class public final Lo/WebIconDatabase$ActionBar;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/WebIconDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "InteractiveChromecastWarningDialogFragment"

    .line 17
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lo/WebIconDatabase$ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Lo/WebIconDatabase;
    .locals 11

    const-string v0, "vault"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "age_protected"

    .line 28
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 30
    new-instance p1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    .line 31
    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->b()Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->c()Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->a()Z

    move-result v5

    .line 34
    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->e()Z

    move-result v6

    .line 35
    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->d()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v7

    .line 37
    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->i()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v9

    .line 38
    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->j()Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    move-result-object v10

    const/4 v8, 0x0

    move-object v2, p1

    .line 30
    invoke-direct/range {v2 .. v10}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    check-cast p1, Landroid/os/Parcelable;

    const-string p2, "play_verifier_vault"

    .line 29
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    new-instance p1, Lo/WebIconDatabase;

    invoke-direct {p1}, Lo/WebIconDatabase;-><init>()V

    .line 43
    invoke-virtual {p1, v0}, Lo/WebIconDatabase;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method
