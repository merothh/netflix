.class final Lo/CM$PendingIntent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/play/core/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CM;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/CM;

.field final synthetic d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lo/CM;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    iput-object p1, p0, Lo/CM$PendingIntent;->a:Lo/CM;

    iput-object p2, p0, Lo/CM$PendingIntent;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 3

    .line 125
    iget-object v0, p0, Lo/CM$PendingIntent;->a:Lo/CM;

    check-cast v0, Lo/MessagePdu;

    .line 126
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "refreshFlexible error"

    invoke-interface {v0, v2, v1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    iget-object v0, p0, Lo/CM$PendingIntent;->a:Lo/CM;

    const-string v1, "e"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/CM$PendingIntent;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, p1, v1}, Lo/CM;->a(Lo/CM;Ljava/lang/Exception;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void
.end method