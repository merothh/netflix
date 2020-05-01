.class final Lo/BE$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BE;->e(Lo/Cd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/BE;

.field final synthetic d:Lo/Cd;


# direct methods
.method constructor <init>(Lo/BE;Lo/Cd;)V
    .locals 0

    iput-object p1, p0, Lo/BE$Application;->b:Lo/BE;

    iput-object p2, p0, Lo/BE$Application;->d:Lo/Cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 61
    iget-object v0, p0, Lo/BE$Application;->b:Lo/BE;

    invoke-virtual {v0}, Lo/BE;->b()Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->a()Lo/BL;

    move-result-object v0

    iget-object v1, p0, Lo/BE$Application;->d:Lo/Cd;

    iget-object v1, v1, Lo/Cd;->d:Ljava/lang/String;

    iget-object v2, p0, Lo/BE$Application;->d:Lo/Cd;

    iget-object v2, v2, Lo/Cd;->c:Ljava/lang/String;

    iget-object v3, p0, Lo/BE$Application;->d:Lo/Cd;

    iget-object v3, v3, Lo/Cd;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lo/BL;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lo/BE$Application;->b:Lo/BE;

    invoke-virtual {v0}, Lo/BE;->b()Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->a()Lo/BL;

    move-result-object v0

    iget-object v1, p0, Lo/BE$Application;->d:Lo/Cd;

    invoke-interface {v0, v1}, Lo/BL;->d(Lo/Cd;)V

    :cond_0
    return-void
.end method
