.class final Lo/Rw$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Rw;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Rw;


# direct methods
.method constructor <init>(Lo/Rw;)V
    .locals 0

    iput-object p1, p0, Lo/Rw$Activity;->c:Lo/Rw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lo/Am;->u()Lo/nP;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 68
    iget-object v0, p0, Lo/Rw$Activity;->c:Lo/Rw;

    invoke-interface {p1}, Lo/nP;->c()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/Rw;->b(Z)V

    :cond_0
    return-void
.end method
