.class Lo/sz$4;
.super Lo/qc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sz;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/sz;

.field final synthetic d:Ljava/util/List;


# direct methods
.method constructor <init>(Lo/sz;Ljava/util/List;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lo/sz$4;->b:Lo/sz;

    iput-object p2, p0, Lo/sz$4;->d:Ljava/util/List;

    invoke-direct {p0}, Lo/qc;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 538
    iget-object v0, p0, Lo/sz$4;->b:Lo/sz;

    invoke-static {v0}, Lo/sz;->i(Lo/sz;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lo/sz$4$1;

    invoke-direct {v1, p0, p2, p1}, Lo/sz$4$1;-><init>(Lo/sz$4;Lcom/netflix/mediaclient/android/app/Status;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
