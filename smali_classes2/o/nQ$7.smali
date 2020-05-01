.class Lo/nQ$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nQ;->d(Lo/pq$Application;Lo/pq$ActionBar;JLjava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/pq$ActionBar;

.field final synthetic b:Lo/pq$Application;

.field final synthetic c:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:J

.field final synthetic f:Lo/nQ;


# direct methods
.method constructor <init>(Lo/nQ;Lo/pq$ActionBar;JLo/pq$Application;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 1888
    iput-object p1, p0, Lo/nQ$7;->f:Lo/nQ;

    iput-object p2, p0, Lo/nQ$7;->a:Lo/pq$ActionBar;

    iput-wide p3, p0, Lo/nQ$7;->e:J

    iput-object p5, p0, Lo/nQ$7;->b:Lo/pq$Application;

    iput-object p6, p0, Lo/nQ$7;->d:Ljava/lang/String;

    iput-object p7, p0, Lo/nQ$7;->c:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1891
    iget-object v0, p0, Lo/nQ$7;->a:Lo/pq$ActionBar;

    iget-wide v1, p0, Lo/nQ$7;->e:J

    iget-object v3, p0, Lo/nQ$7;->b:Lo/pq$Application;

    iget-object v4, p0, Lo/nQ$7;->d:Ljava/lang/String;

    iget-object v5, p0, Lo/nQ$7;->c:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface/range {v0 .. v5}, Lo/pq$ActionBar;->c(JLo/pq$Application;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
