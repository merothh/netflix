.class Lo/sz$4$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sz$4;->e(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lo/sz$4;

.field final synthetic d:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lo/sz$4;Lcom/netflix/mediaclient/android/app/Status;Lorg/json/JSONObject;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lo/sz$4$1;->c:Lo/sz$4;

    iput-object p2, p0, Lo/sz$4$1;->d:Lcom/netflix/mediaclient/android/app/Status;

    iput-object p3, p0, Lo/sz$4$1;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 541
    iget-object v0, p0, Lo/sz$4$1;->d:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/sz$4$1;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    goto :goto_0

    .line 545
    :cond_0
    iget-object v0, p0, Lo/sz$4$1;->c:Lo/sz$4;

    iget-object v0, v0, Lo/sz$4;->b:Lo/sz;

    iget-object v1, p0, Lo/sz$4$1;->c:Lo/sz$4;

    iget-object v1, v1, Lo/sz$4;->d:Ljava/util/List;

    iget-object v2, p0, Lo/sz$4$1;->b:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lo/sz;->a(Lo/sz;Ljava/util/List;Lorg/json/JSONObject;)V

    return-void

    .line 542
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/sz$4$1;->c:Lo/sz$4;

    iget-object v0, v0, Lo/sz$4;->b:Lo/sz;

    iget-object v1, p0, Lo/sz$4$1;->c:Lo/sz$4;

    iget-object v1, v1, Lo/sz$4;->d:Ljava/util/List;

    iget-object v2, p0, Lo/sz$4$1;->d:Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {v0, v1, v2}, Lo/sz;->a(Lo/sz;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
