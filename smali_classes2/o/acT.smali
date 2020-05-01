.class Lo/acT;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final b:Lo/Tm;

.field private final c:Lo/acQ$Application;

.field private final d:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

.field private final e:Lo/acR;


# direct methods
.method public constructor <init>(Lo/acR;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lo/acQ$Application;Lo/Tm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/acT;->e:Lo/acR;

    iput-object p2, p0, Lo/acT;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p3, p0, Lo/acT;->d:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    iput-object p4, p0, Lo/acT;->c:Lo/acQ$Application;

    iput-object p5, p0, Lo/acT;->b:Lo/Tm;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lo/acT;->e:Lo/acR;

    iget-object v1, p0, Lo/acT;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lo/acT;->d:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    iget-object v3, p0, Lo/acT;->c:Lo/acQ$Application;

    iget-object v4, p0, Lo/acT;->b:Lo/Tm;

    move-object v5, p1

    check-cast v5, Lo/Tk;

    invoke-static/range {v0 .. v5}, Lo/acR;->a(Lo/acR;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lo/acQ$Application;Lo/Tm;Lo/Tk;)V

    return-void
.end method
