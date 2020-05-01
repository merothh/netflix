.class Lo/ot$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/oP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ot;->e(Lo/sE;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/ot;


# direct methods
.method constructor <init>(Lo/ot;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lo/ot$1;->e:Lo/ot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .line 204
    iget-object v0, p0, Lo/ot$1;->e:Lo/ot;

    new-instance v1, Lo/nU$Application;

    invoke-virtual {v0}, Lo/ot;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/ot$1;->e:Lo/ot;

    invoke-virtual {v3}, Lo/ot;->o()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lo/nU$Application;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Z)V

    invoke-static {v0, v1}, Lo/ot;->d(Lo/ot;Lo/nU;)V

    .line 208
    iget-object v0, p0, Lo/ot$1;->e:Lo/ot;

    invoke-static {v0, p1, p2, p3}, Lo/ot;->d(Lo/ot;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
