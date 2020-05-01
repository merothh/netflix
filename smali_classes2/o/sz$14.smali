.class Lo/sz$14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sz;->e(Ljava/lang/Long;Lcom/netflix/mediaclient/media/PreferredLanguageData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/sz;

.field final synthetic c:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lo/sz;Ljava/lang/Long;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lo/sz$14;->a:Lo/sz;

    iput-object p2, p0, Lo/sz$14;->c:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 311
    iget-object v0, p0, Lo/sz$14;->a:Lo/sz;

    invoke-static {v0}, Lo/sz;->e(Lo/sz;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lo/sz$14;->c:Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
