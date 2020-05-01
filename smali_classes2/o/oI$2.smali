.class Lo/oI$2;
.super Lo/qc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/oI;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic c:Lo/oI;


# direct methods
.method constructor <init>(Lo/oI;Z)V
    .locals 0

    .line 77
    iput-object p1, p0, Lo/oI$2;->c:Lo/oI;

    iput-boolean p2, p0, Lo/oI$2;->a:Z

    invoke-direct {p0}, Lo/qc;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lo/oI$2;->c:Lo/oI;

    iget-object v0, v0, Lo/oI;->i:Landroid/os/Handler;

    new-instance v1, Lo/oI$2$1;

    invoke-direct {v1, p0, p2, p1}, Lo/oI$2$1;-><init>(Lo/oI$2;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
