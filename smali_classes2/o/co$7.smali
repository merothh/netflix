.class Lo/co$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/co;->c(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic c:Lo/co;

.field final synthetic d:Lo/AX;


# direct methods
.method constructor <init>(Lo/co;Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lo/co$7;->c:Lo/co;

    iput-object p2, p0, Lo/co$7;->d:Lo/AX;

    iput-object p3, p0, Lo/co$7;->a:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 219
    invoke-static {}, Lo/aeB;->a()Z

    .line 220
    iget-object v0, p0, Lo/co$7;->c:Lo/co;

    invoke-static {v0}, Lo/co;->b(Lo/co;)Lo/ci;

    move-result-object v0

    iget-object v1, p0, Lo/co$7;->d:Lo/AX;

    iget-object v2, p0, Lo/co$7;->a:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1, v2}, Lo/ci;->c(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
