.class Lo/nQ$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nQ;->a(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Lo/nS$ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/nQ;

.field final synthetic c:Lcom/netflix/mediaclient/StatusCode;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lo/nS$ActionBar;


# direct methods
.method constructor <init>(Lo/nQ;Lo/nS$ActionBar;Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V
    .locals 0

    .line 1243
    iput-object p1, p0, Lo/nQ$1;->a:Lo/nQ;

    iput-object p2, p0, Lo/nQ$1;->e:Lo/nS$ActionBar;

    iput-object p3, p0, Lo/nQ$1;->d:Ljava/lang/String;

    iput-object p4, p0, Lo/nQ$1;->c:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1246
    iget-object v0, p0, Lo/nQ$1;->e:Lo/nS$ActionBar;

    iget-object v1, p0, Lo/nQ$1;->d:Ljava/lang/String;

    new-instance v2, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    iget-object v3, p0, Lo/nQ$1;->c:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lo/nS$ActionBar;->e(Ljava/lang/String;Lo/ob;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
