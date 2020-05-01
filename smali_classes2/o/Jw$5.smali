.class Lo/Jw$5;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Jw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Jw;


# direct methods
.method constructor <init>(Lo/Jw;)V
    .locals 0

    .line 902
    iput-object p1, p0, Lo/Jw$5;->b:Lo/Jw;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 905
    iget-object v0, p0, Lo/Jw$5;->b:Lo/Jw;

    invoke-virtual {v0}, Lo/Jw;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 908
    :cond_0
    iget-object v0, p0, Lo/Jw$5;->b:Lo/Jw;

    invoke-virtual {v0}, Lo/Jw;->getActivity()Lo/Serializable;

    move-result-object v0

    new-instance v1, Lo/Jw$5$3;

    invoke-direct {v1, p0, p1}, Lo/Jw$5$3;-><init>(Lo/Jw$5;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Lo/Serializable;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
