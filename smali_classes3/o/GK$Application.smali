.class final Lo/GK$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GK;->d(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Ab;


# direct methods
.method constructor <init>(Lo/Ab;)V
    .locals 0

    iput-object p1, p0, Lo/GK$Application;->b:Lo/Ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 1

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1}, Lo/Am;->j()Lo/Ah;

    move-result-object p1

    iget-object v0, p0, Lo/GK$Application;->b:Lo/Ab;

    invoke-interface {p1, v0}, Lo/Ah;->e(Lo/Ab;)V

    return-void
.end method
