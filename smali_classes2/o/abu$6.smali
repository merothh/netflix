.class Lo/abu$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abu;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/abu;


# direct methods
.method constructor <init>(Lo/abu;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lo/abu$6;->a:Lo/abu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lo/Am;)V
    .locals 3

    .line 490
    iget-object v0, p0, Lo/abu$6;->a:Lo/abu;

    invoke-static {v0}, Lo/adR;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v1, p0, Lo/abu$6;->a:Lo/abu;

    new-instance v2, Lo/abu$6$1;

    invoke-direct {v2, p0, p1}, Lo/abu$6$1;-><init>(Lo/abu$6;Lo/Am;)V

    invoke-static {v1, v0, v2}, Lo/abu;->c(Lo/abu;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/abu$Activity;)V

    :cond_0
    return-void
.end method
