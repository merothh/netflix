.class Lo/oT$5$2$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/oT$5$2;->e(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic d:Lo/oT$5$2;

.field final synthetic e:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lo/oT$5$2;Lcom/netflix/mediaclient/android/app/Status;Lorg/json/JSONObject;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lo/oT$5$2$4;->d:Lo/oT$5$2;

    iput-object p2, p0, Lo/oT$5$2$4;->e:Lcom/netflix/mediaclient/android/app/Status;

    iput-object p3, p0, Lo/oT$5$2$4;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 157
    iget-object v0, p0, Lo/oT$5$2$4;->d:Lo/oT$5$2;

    iget-object v0, v0, Lo/oT$5$2;->d:Lo/oT$5;

    iget-object v1, v0, Lo/oT$5;->f:Lo/oT;

    iget-object v2, p0, Lo/oT$5$2$4;->e:Lcom/netflix/mediaclient/android/app/Status;

    iget-object v0, p0, Lo/oT$5$2$4;->d:Lo/oT$5$2;

    iget-object v0, v0, Lo/oT$5$2;->d:Lo/oT$5;

    iget-object v3, v0, Lo/oT$5;->e:Lo/or;

    iget-object v0, p0, Lo/oT$5$2$4;->d:Lo/oT$5$2;

    iget-object v0, v0, Lo/oT$5$2;->d:Lo/oT$5;

    iget-object v4, v0, Lo/oT$5;->g:Ljava/lang/String;

    iget-object v6, p0, Lo/oT$5$2$4;->b:Lorg/json/JSONObject;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lo/oT;->d(Lo/oT;Lcom/netflix/mediaclient/android/app/Status;Lo/or;Ljava/lang/String;ZLorg/json/JSONObject;Lo/jX;)V

    return-void
.end method
