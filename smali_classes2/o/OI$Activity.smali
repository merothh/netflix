.class public final Lo/OI$Activity;
.super Lo/OI$TaskDescription;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OI;->e(Ljava/lang/String;Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Am;

.field final synthetic e:Lo/OI;


# direct methods
.method constructor <init>(Lo/OI;Lo/Am;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Am;",
            ")V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lo/OI$Activity;->e:Lo/OI;

    iput-object p2, p0, Lo/OI$Activity;->a:Lo/Am;

    invoke-direct {p0, p1}, Lo/OI$TaskDescription;-><init>(Lo/OI;)V

    return-void
.end method


# virtual methods
.method public e(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-super {p0, p1, p2}, Lo/OI$TaskDescription;->e(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_0

    .line 82
    iget-object p2, p0, Lo/OI$Activity;->e:Lo/OI;

    invoke-virtual {p2}, Lo/OI;->g()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 83
    iget-object p2, p0, Lo/OI$Activity;->e:Lo/OI;

    invoke-interface {p1}, Lo/Bb;->ax()Ljava/lang/String;

    move-result-object p1

    const-string v0, "showDetails.currentEpisodeId"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/OI$Activity;->a:Lo/Am;

    invoke-static {p2, p1, v0}, Lo/OI;->c(Lo/OI;Ljava/lang/String;Lo/Am;)V

    :cond_0
    return-void
.end method
