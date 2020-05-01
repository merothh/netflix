.class Lo/DY$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DY;->a(Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/DY;


# direct methods
.method constructor <init>(Lo/DY;)V
    .locals 0

    .line 1388
    iput-object p1, p0, Lo/DY$1;->c:Lo/DY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1391
    iget-object v0, p0, Lo/DY$1;->c:Lo/DY;

    invoke-static {v0}, Lo/DY;->a(Lo/DY;)Lo/DD;

    move-result-object v0

    invoke-virtual {v0}, Lo/DD;->c()V

    return-void
.end method
