.class Lo/co$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/co;->d(Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/co;

.field final synthetic c:Lo/agg;

.field final synthetic d:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lo/co;Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lo/co$3;->b:Lo/co;

    iput-object p2, p0, Lo/co$3;->c:Lo/agg;

    iput-object p3, p0, Lo/co$3;->d:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 208
    invoke-static {}, Lo/aeB;->a()Z

    .line 209
    iget-object v0, p0, Lo/co$3;->b:Lo/co;

    invoke-static {v0}, Lo/co;->b(Lo/co;)Lo/ci;

    move-result-object v0

    iget-object v1, p0, Lo/co$3;->c:Lo/agg;

    iget-object v2, p0, Lo/co$3;->d:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1, v2}, Lo/ci;->d(Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
