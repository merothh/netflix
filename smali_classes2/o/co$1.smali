.class Lo/co$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/co;->c(Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/AH;

.field final synthetic c:Lo/co;

.field final synthetic e:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lo/co;Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lo/co$1;->c:Lo/co;

    iput-object p2, p0, Lo/co$1;->a:Lo/AH;

    iput-object p3, p0, Lo/co$1;->e:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 70
    invoke-static {}, Lo/aeB;->a()Z

    .line 71
    iget-object v0, p0, Lo/co$1;->c:Lo/co;

    invoke-static {v0}, Lo/co;->b(Lo/co;)Lo/ci;

    move-result-object v0

    iget-object v1, p0, Lo/co$1;->a:Lo/AH;

    iget-object v2, p0, Lo/co$1;->e:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1, v2}, Lo/ci;->c(Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
