.class Lo/pM$10;
.super Lo/qc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/pM;->b(Ljava/lang/String;Ljava/lang/String;Lo/sx;Lo/pS;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/pM;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lo/pS;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/pM;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lo/pS;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lo/pM$10;->a:Lo/pM;

    iput-object p2, p0, Lo/pM$10;->b:Landroid/content/Context;

    iput-object p3, p0, Lo/pM$10;->e:Ljava/lang/String;

    iput-object p4, p0, Lo/pM$10;->c:Ljava/lang/String;

    iput-object p5, p0, Lo/pM$10;->d:Lo/pS;

    invoke-direct {p0}, Lo/qc;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 8

    .line 469
    invoke-super {p0, p1, p2}, Lo/qc;->a(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "nf_nq"

    const-string v0, "license activated : res: %s, refreshing"

    .line 470
    invoke-static {p2, v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 472
    new-instance p1, Lo/qm;

    iget-object v2, p0, Lo/pM$10;->b:Landroid/content/Context;

    iget-object v3, p0, Lo/pM$10;->e:Ljava/lang/String;

    iget-object v4, p0, Lo/pM$10;->c:Ljava/lang/String;

    sget-object v6, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;->d:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    iget-object v7, p0, Lo/pM$10;->d:Lo/pS;

    const/4 v5, 0x1

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lo/qm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;Lo/pS;)V

    .line 473
    iget-object p2, p0, Lo/pM$10;->a:Lo/pM;

    invoke-static {p2}, Lo/pM;->a(Lo/pM;)Lo/SmartSelectSprite;

    move-result-object p2

    invoke-interface {p2, p1}, Lo/SmartSelectSprite;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method
