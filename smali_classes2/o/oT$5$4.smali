.class Lo/oT$5$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/oT$5;->b(Lo/sE;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic d:Lo/oT$5;


# direct methods
.method constructor <init>(Lo/oT$5;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lo/oT$5$4;->d:Lo/oT$5;

    iput-object p2, p0, Lo/oT$5$4;->c:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 167
    iget-object v0, p0, Lo/oT$5$4;->d:Lo/oT$5;

    iget-object v1, v0, Lo/oT$5;->f:Lo/oT;

    iget-object v2, p0, Lo/oT$5$4;->c:Lcom/netflix/mediaclient/android/app/Status;

    iget-object v0, p0, Lo/oT$5$4;->d:Lo/oT$5;

    iget-object v3, v0, Lo/oT$5;->e:Lo/or;

    iget-object v0, p0, Lo/oT$5$4;->d:Lo/oT$5;

    iget-object v4, v0, Lo/oT$5;->g:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lo/oT;->d(Lo/oT;Lcom/netflix/mediaclient/android/app/Status;Lo/or;Ljava/lang/String;ZLorg/json/JSONObject;Lo/jX;)V

    return-void
.end method
