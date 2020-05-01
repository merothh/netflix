.class final Lo/BA$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BA;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lo/BA;


# direct methods
.method constructor <init>(Lo/BA;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lo/BA$ActionBar;->b:Lo/BA;

    iput-object p2, p0, Lo/BA$ActionBar;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 34
    iget-object v0, p0, Lo/BA$ActionBar;->b:Lo/BA;

    invoke-virtual {v0}, Lo/BA;->b()Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->e()Lo/BH;

    move-result-object v0

    iget-object v1, p0, Lo/BA$ActionBar;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lo/BH;->b(Ljava/util/List;)V

    return-void
.end method
