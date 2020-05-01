.class public Lo/acM;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Lo/acM;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lo/acM;

    invoke-direct {v0}, Lo/acM;-><init>()V

    sput-object v0, Lo/acM;->b:Lo/acM;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Z
    .locals 1

    .line 53
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->c:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static d()Lo/acM;
    .locals 1

    .line 21
    sget-object v0, Lo/acM;->b:Lo/acM;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lo/acQ$Application;)V
    .locals 1

    .line 33
    invoke-direct {p0, p2}, Lo/acM;->a(Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-static {p2}, Lo/acK;->a(Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Lo/acK;

    move-result-object p2

    .line 38
    invoke-virtual {p2, p3}, Lo/acK;->a(Lo/acQ$Application;)V

    .line 40
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object p1

    const-string p3, "frag_dialog"

    invoke-virtual {p2, p1, p3}, Lo/acK;->show(Lo/SerializablePermission;Ljava/lang/String;)V

    return-void
.end method
