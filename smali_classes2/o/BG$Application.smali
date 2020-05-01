.class final Lo/BG$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BG;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/BG;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/BG;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/BG$Application;->a:Lo/BG;

    iput-object p2, p0, Lo/BG$Application;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 39
    iget-object v0, p0, Lo/BG$Application;->a:Lo/BG;

    invoke-static {v0}, Lo/BG;->d(Lo/BG;)Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->g()Lo/BR;

    move-result-object v0

    iget-object v1, p0, Lo/BG$Application;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/BR;->a(Ljava/lang/String;)V

    return-void
.end method
