.class Lo/TC$25;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TC;->A()Lo/PendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/TC;

.field final synthetic d:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lo/TC;Ljava/lang/Long;)V
    .locals 0

    .line 883
    iput-object p1, p0, Lo/TC$25;->c:Lo/TC;

    iput-object p2, p0, Lo/TC$25;->d:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 886
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v0, p0, Lo/TC$25;->d:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    .line 887
    iget-object p1, p0, Lo/TC$25;->c:Lo/TC;

    invoke-virtual {p1}, Lo/TC;->j()V

    return-void
.end method
