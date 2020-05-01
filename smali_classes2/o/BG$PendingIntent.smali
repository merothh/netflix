.class final Lo/BG$PendingIntent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BG;->c(Lo/BZ;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic c:Lo/BG;

.field final synthetic e:Lo/BZ;


# direct methods
.method constructor <init>(Lo/BG;Lo/BZ;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/BG$PendingIntent;->c:Lo/BG;

    iput-object p2, p0, Lo/BG$PendingIntent;->e:Lo/BZ;

    iput-object p3, p0, Lo/BG$PendingIntent;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 46
    iget-object v0, p0, Lo/BG$PendingIntent;->c:Lo/BG;

    invoke-static {v0}, Lo/BG;->d(Lo/BG;)Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->g()Lo/BR;

    move-result-object v0

    iget-object v1, p0, Lo/BG$PendingIntent;->e:Lo/BZ;

    invoke-virtual {v1}, Lo/BZ;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/BG$PendingIntent;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lo/BR;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
