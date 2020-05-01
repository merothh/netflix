.class final Lo/bM$PendingIntent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/bM$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/bM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PendingIntent"
.end annotation


# instance fields
.field final synthetic a:Lo/bM;

.field private final b:I

.field private final c:Landroid/content/Intent;

.field private final d:I


# direct methods
.method public constructor <init>(Lo/bM;Landroid/content/Intent;II)V
    .locals 0

    .line 535
    iput-object p1, p0, Lo/bM$PendingIntent;->a:Lo/bM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iput-object p2, p0, Lo/bM$PendingIntent;->c:Landroid/content/Intent;

    .line 537
    iput p3, p0, Lo/bM$PendingIntent;->d:I

    .line 538
    iput p4, p0, Lo/bM$PendingIntent;->b:I

    return-void
.end method


# virtual methods
.method public e()V
    .locals 2

    .line 543
    iget-object v0, p0, Lo/bM$PendingIntent;->a:Lo/bM;

    invoke-static {v0}, Lo/bM;->a(Lo/bM;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lo/bM$PendingIntent;->a:Lo/bM;

    iget-object v1, p0, Lo/bM$PendingIntent;->c:Landroid/content/Intent;

    invoke-static {v0, v1}, Lo/bM;->c(Lo/bM;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
