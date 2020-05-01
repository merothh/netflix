.class final Lo/ot$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/oP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ot;->b(Lo/oL;Lo/oC;Lo/ov$Application;Lo/oz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/oz;

.field final synthetic d:Lo/oC;

.field final synthetic e:Lo/ov$Application;


# direct methods
.method constructor <init>(Lo/oC;Lo/ov$Application;Lo/oz;)V
    .locals 0

    .line 1587
    iput-object p1, p0, Lo/ot$3;->d:Lo/oC;

    iput-object p2, p0, Lo/ot$3;->e:Lo/ov$Application;

    iput-object p3, p0, Lo/ot$3;->a:Lo/oz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 1594
    iget-object p1, p0, Lo/ot$3;->d:Lo/oC;

    invoke-interface {p1}, Lo/oC;->r()V

    .line 1595
    iget-object p1, p0, Lo/ot$3;->e:Lo/ov$Application;

    if-eqz p1, :cond_0

    .line 1596
    iget-object p2, p0, Lo/ot$3;->d:Lo/oC;

    invoke-interface {p1, p2}, Lo/ov$Application;->b(Lo/oC;)V

    .line 1598
    :cond_0
    iget-object p1, p0, Lo/ot$3;->a:Lo/oz;

    if-eqz p1, :cond_1

    .line 1599
    iget-object p2, p0, Lo/ot$3;->d:Lo/oC;

    invoke-interface {p1, p2}, Lo/oz;->c(Lo/oC;)V

    :cond_1
    return-void
.end method
