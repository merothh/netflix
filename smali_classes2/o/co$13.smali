.class Lo/co$13;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/co;->b(Lo/AQ;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/AQ;

.field final synthetic c:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic e:Lo/co;


# direct methods
.method constructor <init>(Lo/co;Lo/AQ;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lo/co$13;->e:Lo/co;

    iput-object p2, p0, Lo/co$13;->b:Lo/AQ;

    iput-object p3, p0, Lo/co$13;->c:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 317
    invoke-static {}, Lo/aeB;->a()Z

    .line 318
    iget-object v0, p0, Lo/co$13;->e:Lo/co;

    invoke-static {v0}, Lo/co;->b(Lo/co;)Lo/ci;

    move-result-object v0

    iget-object v1, p0, Lo/co$13;->b:Lo/AQ;

    iget-object v2, p0, Lo/co$13;->c:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1, v2}, Lo/ci;->b(Lo/AQ;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method