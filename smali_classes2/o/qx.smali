.class public Lo/qx;
.super Lo/qj;
.source ""


# instance fields
.field private final v:Lo/sA;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lo/sE;Lo/pS;)V
    .locals 6

    .line 18
    sget-object v4, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;->b:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lo/qj;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;Lo/pS;)V

    .line 19
    invoke-interface {p4}, Lo/sE;->U()Lo/sA;

    move-result-object p1

    iput-object p1, p0, Lo/qx;->v:Lo/sA;

    return-void
.end method


# virtual methods
.method protected b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/qx;->v:Lo/sA;

    invoke-static {p1, v0}, Lo/qz;->e(Lorg/json/JSONObject;Lo/sA;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
