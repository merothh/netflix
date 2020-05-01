.class Lo/bV$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/bV;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/bV;


# direct methods
.method constructor <init>(Lo/bV;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lo/bV$5;->d:Lo/bV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 135
    iget-object v0, p0, Lo/bV$5;->d:Lo/bV;

    invoke-static {v0}, Lo/bV;->access$200(Lo/bV;)Lo/bV$Activity;

    move-result-object v0

    iget-object v1, p0, Lo/bV$5;->d:Lo/bV;

    .line 136
    invoke-static {v1}, Lo/bV;->access$100(Lo/bV;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v2

    .line 135
    invoke-interface {v0, v1, v2}, Lo/bV$Activity;->a(Lo/bV;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
