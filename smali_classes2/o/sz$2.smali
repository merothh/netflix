.class Lo/sz$2;
.super Lo/qc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sz;->c(Ljava/util/List;Lo/sD$ActionBar;)Lo/qc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/sz;

.field final synthetic c:Lo/sD$ActionBar;

.field final synthetic e:Ljava/util/List;


# direct methods
.method constructor <init>(Lo/sz;Ljava/util/List;Lo/sD$ActionBar;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lo/sz$2;->a:Lo/sz;

    iput-object p2, p0, Lo/sz$2;->e:Ljava/util/List;

    iput-object p3, p0, Lo/sz$2;->c:Lo/sD$ActionBar;

    invoke-direct {p0}, Lo/qc;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 441
    iget-object v0, p0, Lo/sz$2;->a:Lo/sz;

    invoke-static {v0}, Lo/sz;->i(Lo/sz;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lo/sz$2$2;

    invoke-direct {v1, p0, p2, p1}, Lo/sz$2$2;-><init>(Lo/sz$2;Lcom/netflix/mediaclient/android/app/Status;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
