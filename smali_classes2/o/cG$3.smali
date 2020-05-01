.class Lo/cG$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/cG;->aK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/cG;


# direct methods
.method constructor <init>(Lo/cG;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lo/cG$3;->a:Lo/cG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 331
    iget-object v0, p0, Lo/cG$3;->a:Lo/cG;

    invoke-static {v0}, Lo/cG;->b(Lo/cG;)Lcom/netflix/mediaclient/android/app/Status;

    return-void
.end method
