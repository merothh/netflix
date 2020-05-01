.class Lo/abu$13;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/abu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/abu;


# direct methods
.method constructor <init>(Lo/abu;)V
    .locals 0

    .line 986
    iput-object p1, p0, Lo/abu$13;->a:Lo/abu;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 989
    iget-object v0, p0, Lo/abu$13;->a:Lo/abu;

    new-instance v1, Lo/abu$13$1;

    invoke-direct {v1, p0, p1}, Lo/abu$13$1;-><init>(Lo/abu$13;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Lo/abu;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
