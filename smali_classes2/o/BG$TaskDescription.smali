.class final Lo/BG$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BG;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/BG;


# direct methods
.method constructor <init>(Lo/BG;)V
    .locals 0

    iput-object p1, p0, Lo/BG$TaskDescription;->c:Lo/BG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 52
    iget-object v0, p0, Lo/BG$TaskDescription;->c:Lo/BG;

    invoke-static {v0}, Lo/BG;->d(Lo/BG;)Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->g()Lo/BR;

    move-result-object v0

    invoke-interface {v0}, Lo/BR;->a()V

    return-void
.end method
