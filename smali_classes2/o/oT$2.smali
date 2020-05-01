.class Lo/oT$2;
.super Lo/qc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/oT;->c(Lo/or;Lo/jX;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lo/oR;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/jX;

.field final synthetic b:Ljava/lang/String;

.field final synthetic d:Lo/or;

.field final synthetic e:Lo/oT;


# direct methods
.method constructor <init>(Lo/oT;Lo/or;Ljava/lang/String;Lo/jX;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lo/oT$2;->e:Lo/oT;

    iput-object p2, p0, Lo/oT$2;->d:Lo/or;

    iput-object p3, p0, Lo/oT$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lo/oT$2;->a:Lo/jX;

    invoke-direct {p0}, Lo/qc;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lo/oT$2;->e:Lo/oT;

    invoke-static {v0}, Lo/oT;->a(Lo/oT;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lo/oT$2$3;

    invoke-direct {v1, p0, p2, p1}, Lo/oT$2$3;-><init>(Lo/oT$2;Lcom/netflix/mediaclient/android/app/Status;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
