.class final Lo/TextClassifierImpl$PendingIntent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TextClassifierImpl;->e(Lo/cb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/cb;


# direct methods
.method constructor <init>(Lo/cb;)V
    .locals 0

    iput-object p1, p0, Lo/TextClassifierImpl$PendingIntent;->d:Lo/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Lo/Am;->n()Lo/cc;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/TextClassifierImpl$PendingIntent;->d:Lo/cb;

    invoke-interface {p1, v0}, Lo/cc;->b(Lo/cb;)V

    :cond_0
    return-void
.end method
