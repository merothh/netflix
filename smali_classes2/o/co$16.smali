.class Lo/co$16;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/co;->c(Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic d:Lo/co;


# direct methods
.method constructor <init>(Lo/co;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lo/co$16;->d:Lo/co;

    iput-object p2, p0, Lo/co$16;->c:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 328
    iget-object v0, p0, Lo/co$16;->d:Lo/co;

    invoke-static {v0}, Lo/co;->b(Lo/co;)Lo/ci;

    move-result-object v0

    iget-object v1, p0, Lo/co$16;->c:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1}, Lo/ci;->c(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
