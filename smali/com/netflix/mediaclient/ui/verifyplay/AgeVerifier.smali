.class public Lcom/netflix/mediaclient/ui/verifyplay/AgeVerifier;
.super Ljava/lang/Object;
.source "AgeVerifier.java"


# static fields
.field public static final FORCE_AGE_VERIFY:Z = false

.field public static final TAG:Ljava/lang/String; = "nf_age"

.field private static sAgeVerifyInstance:Lcom/netflix/mediaclient/ui/verifyplay/AgeVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/verifyplay/AgeVerifier;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeVerifier;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/verifyplay/AgeVerifier;->sAgeVerifyInstance:Lcom/netflix/mediaclient/ui/verifyplay/AgeVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/netflix/mediaclient/ui/verifyplay/AgeVerifier;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/AgeVerifier;->sAgeVerifyInstance:Lcom/netflix/mediaclient/ui/verifyplay/AgeVerifier;

    return-object v0
.end method

.method private shouldHandleNewRequest(Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->MDX:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getInvokeLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "nf_age"

    const-string/jumbo v3, "Dismissing new request new one Invoked from: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getInvokeLocation()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public verify(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;)V
    .locals 5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_age"

    const-string/jumbo v1, "verifyAge invokeLoc:%s, vault:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getInvokeLocation()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/verifyplay/AgeVerifier;->shouldHandleNewRequest(Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->createAgeDialog(Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->setAgeVerifierCallback(Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "frag_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
