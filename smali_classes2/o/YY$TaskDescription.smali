.class public final Lo/YY$TaskDescription;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YY;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/YY;


# direct methods
.method constructor <init>(Lo/YY;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lo/YY$TaskDescription;->a:Lo/YY;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    const-string v0, "res"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lo/YY$TaskDescription;->a:Lo/YY;

    invoke-virtual {v0}, Lo/YY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    .line 128
    :cond_0
    sget-object v0, Lo/YV;->b:Lo/YV;

    .line 130
    iget-object v1, p0, Lo/YY$TaskDescription;->a:Lo/YY;

    invoke-static {v1}, Lo/YY;->c(Lo/YY;)Z

    move-result v1

    .line 131
    iget-object v2, p0, Lo/YY$TaskDescription;->a:Lo/YY;

    invoke-static {v2}, Lo/YY;->j(Lo/YY;)Lcom/netflix/cl/model/ProfileSettings;

    move-result-object v2

    .line 132
    iget-object v3, p0, Lo/YY$TaskDescription;->a:Lo/YY;

    invoke-static {v3}, Lo/YY;->g(Lo/YY;)Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-virtual {v0, p1, v1, v2, v3}, Lo/YV;->b(Lcom/netflix/mediaclient/android/app/Status;ZLcom/netflix/cl/model/ProfileSettings;Ljava/lang/String;)V

    return-void
.end method
