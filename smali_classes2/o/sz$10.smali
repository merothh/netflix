.class Lo/sz$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sz;->d(Lo/BW;Lo/sD$ActionBar;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic d:Lo/sz;

.field final synthetic e:Lo/sD$ActionBar;


# direct methods
.method constructor <init>(Lo/sz;JLo/sD$ActionBar;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 679
    iput-object p1, p0, Lo/sz$10;->d:Lo/sz;

    iput-wide p2, p0, Lo/sz$10;->a:J

    iput-object p4, p0, Lo/sz$10;->e:Lo/sD$ActionBar;

    iput-object p5, p0, Lo/sz$10;->b:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 682
    iget-object v0, p0, Lo/sz$10;->d:Lo/sz;

    invoke-static {v0}, Lo/sz;->e(Lo/sz;)Ljava/util/List;

    move-result-object v0

    iget-wide v1, p0, Lo/sz$10;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 683
    invoke-static {}, Lo/sz;->a()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lo/sz$10;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "callback is aborted for movie %d"

    invoke-static {v0, v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 684
    iget-object v0, p0, Lo/sz$10;->d:Lo/sz;

    invoke-static {v0}, Lo/sz;->e(Lo/sz;)Ljava/util/List;

    move-result-object v0

    iget-wide v1, p0, Lo/sz$10;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    .line 687
    :cond_0
    invoke-static {}, Lo/sz;->a()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lo/sz$10;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "manifest error for movie %d"

    invoke-static {v0, v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 688
    iget-object v0, p0, Lo/sz$10;->e:Lo/sD$ActionBar;

    iget-wide v1, p0, Lo/sz$10;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lo/sz$10;->b:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1, v2}, Lo/sD$ActionBar;->c(Ljava/lang/Long;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
