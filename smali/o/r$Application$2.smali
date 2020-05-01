.class Lo/r$Application$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/r$Application;->a(Lcom/android/volley/VolleyError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/r$Application;


# direct methods
.method constructor <init>(Lo/r$Application;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lo/r$Application$2;->c:Lo/r$Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 330
    iget-object v0, p0, Lo/r$Application$2;->c:Lo/r$Application;

    iget-object v0, v0, Lo/r$Application;->b:Lo/r;

    iget-object v1, p0, Lo/r$Application$2;->c:Lo/r$Application;

    invoke-static {v1}, Lo/r$Application;->b(Lo/r$Application;)Lcom/android/volley/Request;

    move-result-object v1

    iget-object v2, p0, Lo/r$Application$2;->c:Lo/r$Application;

    invoke-static {v0, v1, v2}, Lo/r;->e(Lo/r;Lcom/android/volley/Request;Lo/r$Application;)V

    return-void
.end method
