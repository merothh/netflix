.class final Lo/CM$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/play/core/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CM;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/CM;


# direct methods
.method constructor <init>(Lo/CM;)V
    .locals 0

    iput-object p1, p0, Lo/CM$TaskDescription;->b:Lo/CM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 0

    .line 258
    iget-object p1, p0, Lo/CM$TaskDescription;->b:Lo/CM;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method
