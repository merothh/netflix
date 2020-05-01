.class Lo/oT$5$2;
.super Lo/qc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/oT$5;->b(Lo/sE;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/oT$5;


# direct methods
.method constructor <init>(Lo/oT$5;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lo/oT$5$2;->d:Lo/oT$5;

    invoke-direct {p0}, Lo/qc;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 154
    iget-object v0, p0, Lo/oT$5$2;->d:Lo/oT$5;

    iget-object v0, v0, Lo/oT$5;->f:Lo/oT;

    invoke-static {v0}, Lo/oT;->a(Lo/oT;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lo/oT$5$2$4;

    invoke-direct {v1, p0, p2, p1}, Lo/oT$5$2$4;-><init>(Lo/oT$5$2;Lcom/netflix/mediaclient/android/app/Status;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
