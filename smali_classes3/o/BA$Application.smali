.class final Lo/BA$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BA;->b(Lo/BV;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/BV;

.field final synthetic e:Lo/BA;


# direct methods
.method constructor <init>(Lo/BA;Lo/BV;)V
    .locals 0

    iput-object p1, p0, Lo/BA$Application;->e:Lo/BA;

    iput-object p2, p0, Lo/BA$Application;->d:Lo/BV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 41
    iget-object v0, p0, Lo/BA$Application;->e:Lo/BA;

    invoke-virtual {v0}, Lo/BA;->b()Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->e()Lo/BH;

    move-result-object v0

    iget-object v1, p0, Lo/BA$Application;->d:Lo/BV;

    invoke-interface {v0, v1}, Lo/BH;->e(Lo/BV;)V

    return-void
.end method
